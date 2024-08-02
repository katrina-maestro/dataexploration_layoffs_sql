### Introduction
The purpose of this project is to present the findings of exploratory data analysis (EDA) conducted on the "layoffs_staging2" dataset. This dataset contains detailed information about layoffs, including company details, dates of layoffs, total number of layoffs, percentage of workforce laid off, industry, country, funding stage, and more. The goal of this analysis is to provide insights into various aspects of the layoffs data through SQL queries.

### Objectives
- Identify companies that laid off their entire workforce and explore the financial challenges of those with high funding.
- Summarize total layoffs by company, with a focus on those with more than 2,000 layoffs.
- Determine the date range of layoffs to understand their temporal distribution.
- Analyze layoffs by industry and country to identify sectors and regions most affected.
- Examine the average percentage of workforce laid off by country.
- Investigate layoffs over time and their relationship with funding stages.
- Calculate the rolling total of layoffs to understand monthly and cumulative variations.
- Summarize total layoffs by company and year to identify key trends.

### Methodology
The EDA was conducted using SQL queries to extract and analyze data from the "layoffs_staging2" dataset. The following steps were taken:
1. **Dataset Examination:** Initial exploration of the dataset structure to identify key variables.
2. **Companies with Complete Layoffs:** Identifying and ordering companies that laid off their entire workforce.
3. **Total Layoffs Analysis:** Summarizing layoffs by company, focusing on those with significant numbers.
4. **Date Range Analysis:** Determining the earliest and latest dates of layoffs.
5. **Industry and Country Analysis:** Analyzing layoffs by industry and country, and calculating the average percentage of workforce laid off by country.
6. **Layoffs Over Time:** Summarizing total layoffs by year and analyzing layoffs by funding stage.
7. **Rolling Total Calculation:** Calculating the rolling sum of layoffs by month and country.
8. **Company and Year Analysis:** Summarizing total layoffs by company and year, and ranking countries with the highest layoffs each year.

### Results
- **Companies with Complete Layoffs:** Companies that laid off their entire workforce were identified and ordered by total layoffs. Some companies with high funding faced significant financial challenges.
- **Total Layoffs Analysis:** Companies with more than 2,000 layoffs were highlighted, with big tech companies laying off more than 10,000 employees, indicating significant workforce restructuring.
- **Date Range Analysis:** The analysis revealed the earliest and latest dates of layoffs, providing insights into their temporal distribution.
- **Industry and Country Analysis:** The study identified industries and countries with the highest total layoffs. The average percentage of workforce laid off by country showed variations in layoff severity, with a specific focus on companies based in Denmark.
- **Layoffs Over Time:** Trends and fluctuations in layoffs over time were illustrated. The relationship between funding stages and layoffs was also examined.
- **Rolling Total Calculation:** Monthly variations in layoffs were analyzed, along with the cumulative total of layoffs by country.
- **Company and Year Analysis:** Detailed examination of layoffs trends for each company and ranking of countries with the highest layoffs each year highlighted key distribution trends.

### Conclusion
The exploratory data analysis of the "layoffs_staging2" dataset provided valuable insights into various aspects of layoffs, including company trends, geographical distribution, temporal patterns, and the impact of funding stages. These insights can inform strategic decision-making and resource allocation in response to workforce challenges. Further analysis and visualization could enhance understanding of the underlying trends and dynamics within the layoffs data.
