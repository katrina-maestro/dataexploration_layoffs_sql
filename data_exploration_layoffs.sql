-- Exploratory Data Analysis 

-- Checking out our clean dataset 
SELECT *
FROM layoffs_staging2;

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

-- Checking out companies that laid off all their workforce starting from those with the most layoffs 
SELECT *
FROM layoffs_staging2
WHERE  percentage_laid_off= 1 
ORDER BY  total_laid_off DESC;

-- Checking out companies that had a lot of funding and laid off all their workforce 
SELECT *
FROM layoffs_staging2
WHERE  percentage_laid_off= 1 
ORDER BY funds_raised_millions DESC ;

-- Checking out companies and how much of their workforce they laid off 
SELECT company, SUM(total_laid_off) AS totallaidoffteam
FROM layoffs_staging2
group by company HAVING totallaidoffteam > 2000
ORDER BY totallaidoffteam DESC; 

-- Checking out companies and how many laid of more than 10000 people from their workforce  (suprise its big tech) 
SELECT company, SUM(total_laid_off) AS totallaidoffteam
FROM layoffs_staging2
group by company HAVING totallaidoffteam >= 10000
ORDER BY totallaidoffteam DESC; 

-- Checking out the earliest and latest layoffs ( tip the earlier the date the less the date value) 
SELECT MIN(`date`) , MAX(`date`)
FROM layoffs_staging2;

-- Checking out industries and how much of their workforce they laid off 
SELECT industry, SUM(total_laid_off) AS totallaidoffteam
FROM layoffs_staging2
group by industry
ORDER BY totallaidoffteam DESC;

-- Checking out countries and how much of their workforce they laid off 
SELECT country, SUM(total_laid_off) AS totallaidoffteam
FROM layoffs_staging2
group by country 
ORDER BY totallaidoffteam DESC;

-- Checking out countries and how much of their workforce they laid off 
SELECT country, avg(percentage_laid_off) AS avgpercentlaidoffteam
FROM layoffs_staging2
group by country 
ORDER BY avgpercentlaidoffteam DESC;

-- Checking out countries based in Denmark and how much of their workforce they laid off 
SELECT company, total_laid_off
FROM layoffs_staging2
WHERE country = 'Denmark'
ORDER BY total_laid_off DESC;


-- Checking out the years with the various layoffs 
SELECT  YEAR(`date`) , SUM(total_laid_off)
FROM layoffs_staging2
group by YEAR(`date`) 
ORDER BY 1 DESC ;

-- Checking out the stages of funding with the various layoffs 
SELECT  stage , SUM(total_laid_off)
FROM layoffs_staging2
group by  stage
ORDER BY 2 DESC;

-- Rolling out sum of layoffs 
SELECT MONTH(`date`) , SUBSTRING(`date`, 6,2) AS MONTHNUM 
FROM layoffs_staging2;

-- Rolling out sum of layoffs , order of operation is grouping, ordering and then filtering using where 
SELECT SUBSTRING(`date`, 1,7) AS MONTHNUM, SUM(total_laid_off)
FROM layoffs_staging2
WHERE SUBSTRING(`date`, 1,7) IS NOT NULL 
GROUP BY MONTHNUM 
ORDER BY MONTHNUM ;

-- Rolling out sum of layoffs , order of operation is grouping, ordering and then filtering using where 
WITH ROLLING_TOTAL AS 
(
SELECT SUBSTRING(`date`, 1,7) AS MONTHNUM, SUM(total_laid_off) AS Total_layoffs
FROM layoffs_staging2
WHERE SUBSTRING(`date`, 1,7) IS NOT NULL 
GROUP BY MONTHNUM 
ORDER BY MONTHNUM 
)
SELECT MONTHNUM,Total_layoffs, SUM(Total_layoffs) OVER (ORDER BY MONTHNUM ) AS Rolling_Total 
FROM ROLLING_TOTAL; 


-- Checking out countries and how much of their workforce they laid off as a rolling total 
WITH COUNTRY_ROLLING_TOTAL AS
(
SELECT country, SUM(total_laid_off) AS total_laidoff_team
FROM layoffs_staging2
group by country HAVING total_laidoff_team IS NOT NULL 
ORDER BY total_laidoff_team DESC
) 
SELECT country,total_laidoff_team, SUM(total_laidoff_team) OVER ( order by total_laidoff_team)
FROM COUNTRY_ROLLING_TOTAL;

-- Checking out countries and how much of their workforce they laid off as a rolling total over the days 
SELECT company, YEAR(`date`) ,SUM(total_laid_off) AS total_laidoff_team
FROM layoffs_staging2
group by company,  YEAR(`date`)
ORDER BY total_laidoff_team DESC;


-- Ranking which countries had the highest layoffs over the the years, we use a CTE to 
WITH company_year(company,years,total_laidoff_team) AS
(
SELECT company, YEAR(`date`) ,SUM(total_laid_off) 
FROM layoffs_staging2
group by company,  YEAR(`date`)
),
Company_Year_Rank as
(
SELECT *, dense_rank() OVER( partition by years order by total_laidoff_team DESC) AS Ranking 
FROM company_year
WHERE years IS NOT NULL

)
SELECT *
FROM Company_Year_Rank 
WHERE Ranking <= 5;






