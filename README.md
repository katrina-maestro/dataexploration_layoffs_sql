# dataexploration_layoffs_sql
Introduction:
The purpose of this project report is to present the findings of exploratory data analysis (EDA) conducted on the "layoffs_staging2" dataset. The dataset contains information about layoffs, including company details, dates of layoffs, total number of layoffs, percentage of workforce laid off, industry, country, funding stage, etc. This report aims to provide insights into various aspects of the layoffs data through SQL queries.

Dataset Overview:

The "layoffs_staging2" dataset comprises several columns containing information related to layoffs.
Initial exploration involved examining the dataset structure and identifying key variables.
Key Insights:

Companies with Complete Layoffs:

We identified companies that laid off their entire workforce, ordered by total layoffs.
Additionally, we explored companies with complete layoffs and high funding, indicating potential financial challenges despite significant funding.
Analysis by Total Layoffs:

Total layoffs were summarized by company, focusing on those with more than 2000 layoffs.
Notably, big tech companies were found to have laid off more than 10,000 employees, reflecting significant workforce restructuring.
Date Range of Layoffs:

The earliest and latest dates of layoffs were determined, providing insights into the temporal distribution of layoffs.
Layoffs by Industry and Country:

Layoffs were analyzed by industry and country, highlighting industries and countries with the highest total layoffs.
The average percentage of workforce laid off by country was calculated, revealing variations in layoff severity across different countries.
Furthermore, companies based in Denmark and their total layoffs were examined.
Layoffs Over Time:

Total layoffs were summarized by year, illustrating trends and fluctuations in layoffs over time.
Layoffs were also analyzed by funding stage, shedding light on the relationship between funding and layoffs.
Layoffs as Rolling Total:

The rolling sum of layoffs was calculated by month, providing insights into monthly variations in layoffs.
Similarly, the rolling total of layoffs by country was examined, showing cumulative layoffs over time.
Analysis by Company and Year:

Total layoffs were summarized by company and year, allowing for a detailed examination of layoffs trends for each company.
Countries with the highest layoffs each year were ranked, highlighting key trends in layoff distribution.
Conclusion:
The exploratory data analysis of the layoffs dataset provided valuable insights into various aspects of layoffs, including company trends, geographical distribution, temporal patterns, and the impact of funding stages. These insights can inform strategic decision-making and resource allocation in response to workforce challenges. Further analysis and visualization could enhance our understanding of the underlying trends and dynamics within the layoffs data.
