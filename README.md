# California SaaS Startup Growth & Funding Analysis

## Project Overview
This project analyzes the growth and funding landscape of SaaS startups in California. Using real-world data, the goal is to identify high-growth companies, understand geographic trends, and uncover how funding correlates with employee expansion. The results are visualized in an interactive Tableau dashboard.

## Data
- **Source:** Growjo, filtered for California SaaS startups.
- **Key Variables:** Company name, location, current employees, employee growth rate, year founded, total funding, company URL.
- **Preparation:** Data was cleaned in Excel and Python, loaded into PostgreSQL, and exported as CSV for Tableau visualization.

## Business Impact Questions
- What is the typical employee growth rate for SaaS startups in California?
- How many companies are experiencing high growth, and where are they located?
- What is the relationship between funding and employee growth?
- Which companies are leading in employee growth?

## Technical Approach
- **Data Cleaning:** Cleaned and transformed data using Excel and Python (Pandas).
- **Database:** Structured and queried data in PostgreSQL.
- **Analysis:** Explored and validated data with SQL and Python.
- **Visualization:** Built interactive dashboards and charts in Tableau Public (using CSV export).
- **Documentation:** Key metrics and methodology are detailed below.

---

# KPI Selection & Methodology

## Metrics Directly Answering Stakeholder Questions

- **Median Employee Growth Rate:** 21.88%
- **Number of High-Growth Companies (above 75th percentile):** 211
- **Total Funding (Sum):** $13.16B
- **Top 10 Companies by Employee Growth:**  
  Outlier, Rivian and Volkswagen Group Technologies, Pipeful, PassRight - U.S. Visa, Deccan AI, Agency, GoodOnes, Palona AI, LawPro.ai, Rooster Scheduling
- **Geographic Distribution of Employee Growth:**  
  Highest concentration of high-growth companies in San Francisco, followed by Los Angeles, Palo Alto, and San Diego.

## KPI Relevance Validation

- Selected metrics that map directly to the business impact questions defined in project scoping (growth, funding, geography).
- Ensured all KPIs are based on fields with high data completeness and reliability in the dataset.
- Benchmarks (e.g., 75th percentile for high growth) were established using statistical analysis of the actual data.

## Benchmarks for Success Measurement

- **Median Employee Growth Rate:** 21.88% (typical growth for CA SaaS startups)
- **High-Growth Threshold:** 48.15% (75th percentile of employee growth)
- **Top 10 Companies:** Highest employee growth rates (see above)
- **Total Funding:** $13.16B (sum of all funding reported)
- **Geographic Benchmark:** San Francisco as the leading city for high-growth companies

---

## Results & Visualizations

- **Median Employee Growth Rate:** 21.88%
- **Number of High-Growth Companies (above 75th percentile):** 211
- **Total Funding (Sum):** $13.16B
- **Top 10 Companies by Employee Growth:** Outlier, Rivian and Volkswagen Group Technologies, Pipeful, PassRight - U.S. Visa, Deccan AI, Agency, GoodOnes, Palona AI, LawPro.ai, Rooster Scheduling
- **Geographic Trends:** San Francisco leads in high-growth companies, followed by Los Angeles, Palo Alto, and San Diego.

![Tableau Dashboard Screenshot](screenshots/tableaudashboard.png)

> **Tableau Public Dashboard:** [California SaaS Startup Growth & Funding Analysis](https://public.tableau.com/app/profile/farooq.syed6811/viz/CaliforniaSaaSStartupGrowthFundingAnalysis/CaliforniaSaaSStartupGrowthFundingAnalysis)

---

## Key Insights & Recommendations

- The majority of high-growth SaaS startups are clustered in the Bay Area, with San Francisco as the clear leader.
- Employee growth is not always directly correlated with funding; several top performers have achieved high growth with moderate funding.
- Stakeholders can use these insights to identify investment opportunities and benchmark startup performance.

---

## How to Reproduce/Explore

1. Clone this repository.
2. See `src/startup_funding_analysis_cleaned.csv` for the cleaned dataset.
3. Review data cleaning and analysis scripts in the `src/` folder.
4. Open the Tableau dashboard (link above) for interactive exploration.
5. See KPI methodology and benchmarks in this document.
6. (Optional) See `src/` for full project documentation and weekly breakdowns.

---

## Contact

**Farooq Syed**  
[LinkedIn: linkedin.com/in/farooqalisyed/](https://www.linkedin.com/in/farooqalisyed/)

---

*For detailed KPI definitions and benchmarks, see the "KPI Selection & Methodology" section above.*

*Data source: `startup_funding_analysis_cleaned.csv`*
