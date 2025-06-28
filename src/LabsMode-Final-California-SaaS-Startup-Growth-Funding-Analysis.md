# California SaaS Startup Growth & Funding Analysis – Labs Mode Documentation

## Table of Contents
- Week 1: Data Acquisition & Exploration
- Week 2: Data Cleaning & SQL Analysis
- Week 3: Visualization & Dashboard Design
- Week 4: Documentation, Publishing, and Portfolio Prep

---

## Week 1: Data Acquisition & Exploration

- **Tasks completed:**  
  - Installed PostgreSQL (/screenshots/postgresqlinstallation.png)
  - Designed table structure (/screenshots/tableschemadesign.png)
  - Researched/downloaded dataset (/screenshots/datasetsourceselection.png)
  - Loaded data into Excel (/screenshots/exceldataexploration.png)
  - Assessed data quality (/screenshots/dataqualityassessment.png)
  - Defined business impact questions (/screenshots/businessquestionsdefinition.png)

- **Labs Mode Questions & Answers:**

  **1.1 Install and configure PostgreSQL on your Mac**  
  *Q: What installation challenges did you encounter? Which configuration settings optimized performance for your project?*  
  A: PostgreSQL was installed using the official installer. Default port 5432 was used, and authentication was set up for local development. Shared buffers and work_mem were tuned for improved query performance.  
  *Screenshot: /screenshots/postgresqlinstallation.png*

  **1.2 Design table structure for funding data**  
  *Q: How did you determine optimal data types and constraints? What normalization decisions did you make and why?*  
  A: Data types were chosen based on the nature of each field (e.g., VARCHAR for names, INTEGER for counts, DECIMAL for growth rates). Minimal normalization was used to keep the schema simple and efficient for analysis, with NOT NULL constraints on key fields.  
  *Screenshot: /screenshots/tableschemadesign.png*

  **1.3 Research and download a free startup funding dataset**  
  *Q: What criteria guided your dataset selection? How did you validate data quality and relevance for your analysis goals?*  
  A: The dataset was selected from Growjo for its focus on SaaS companies, employee growth, and funding. Only California companies with 1–500 employees were included. Data completeness and relevance to business questions were checked.  
  *Screenshot: /screenshots/datasetsourceselection.png*

  **1.4 Load data into Excel for initial exploration**  
  *Q: What data formatting issues did you discover? How did you handle missing values and inconsistent data types?*  
  A: Inconsistencies in company names and locations were found, along with missing values in funding and founding year. Excel validation and conditional formatting were used to identify and address these issues.  
  *Screenshot: /screenshots/exceldataexploration.png*

  **1.5 Identify key variables and check data quality**  
  *Q: What percentage of data was complete for each key variable? Which quality issues required strategic analytical pivots?*  
  A: Company names were 100% complete, employees 99.5%, growth 98.8%, and funding 32.9%. Due to missing funding data, the analysis pivoted to focus on employee growth and related metrics.  
  *Screenshot: /screenshots/dataqualityassessment.png*

  **1.6 Define 3-4 core business impact questions**  
  *Q: How did your data quality assessment inform your business questions? What stakeholder value do these questions address?*  
  A: Business questions were tailored to focus on employee growth, geographic trends, and high-growth company identification, all supported by high-quality data. These questions address investor and founder needs for benchmarking and opportunity identification.  
  *Screenshot: /screenshots/businessquestionsdefinition.png*

---

## Week 2: Data Cleaning & SQL Analysis

- **Tasks completed:**  
  - Imported cleaned dataset (/screenshots/importsuccess.png)
  - Ran SQL validation queries (/screenshots/sqlvalidation.png)
  - Wrote SQL for business questions (/screenshots/businessqueries.png)
  - Cleaned further with Python (/screenshots/pythoncleaninganalysis.png)
  - Created validation visualizations (/screenshots/employeegrowthdistribution.png, /screenshots/growthvsfunding.png)
  - Set up Jupyter Notebook (/screenshots/jupytersetup.png)
  - Configured VS Code with extensions (/screenshots/vscode-extensions-list.jpg)
  - Created GitHub repo (/screenshots/githubrepo.png)

- **Labs Mode Questions & Answers:**

  **2.7 Import cleaned dataset into PostgreSQL**  
  *Q: What import challenges did you resolve? How did you optimize table structure for analytical performance?*  
  A: Fixed VARCHAR length errors by using TEXT for URLs. Ensured all columns matched the cleaned CSV and optimized types for performance.  
  *Screenshot: /screenshots/importsuccess.png*

  **2.8 Test basic SQL queries**  
  *Q: What specific validation queries did you run? What were the exact results (row counts, data ranges)? Which outliers did you discover and how did you handle them?*  
  A: Ran row count, null checks, min/max, and uniqueness queries. Results matched the CSV, with minimal nulls and realistic ranges. Outliers in funding were noted and handled using medians.  
  *Screenshot: /screenshots/sqlvalidation.png*

  **2.9 Write SQL queries to answer business questions**  
  *Q: What were your exact SQL queries for each business impact question? What performance optimizations did you implement? What unexpected patterns did you discover in the data?*  
  A: Wrote queries for employee growth, funding by location, and company age. Used indexes and aggregate functions for performance. Discovered some high-growth companies with moderate funding.  
  *Screenshot: /screenshots/businessqueries.png*

  **2.10 Use Python Pandas for further cleaning**  
  *Q: Which data quality issues did Python reveal that SQL missed? What transformation logic did you apply? What statistical insights emerged?*  
  A: Used Python to standardize text fields, handle missing values, and calculate company age. Statistical insights included median and percentile growth rates.  
  *Screenshot: /screenshots/pythoncleaninganalysis.png*

  **2.11 Create simple visualizations to validate insights**  
  *Q: Which visualization types best represented your findings? What design decisions did you make and why? How did visuals change your analytical conclusions?*  
  A: Used histograms and scatter plots to validate growth and funding patterns. Visuals confirmed most companies have moderate growth and a few outliers.  
  *Screenshots: /screenshots/employeegrowthdistribution.png, /screenshots/growthvsfunding.png*

  **2.12 Set up Python Anaconda Jupyter Notebook**  
  *Q: What configuration challenges did you encounter? Which libraries did you install beyond defaults? How did you optimize for your specific analysis needs?*  
  A: No challenges encountered. Used pandas, numpy, matplotlib, and seaborn for analysis and visualization.  
  *Screenshot: /screenshots/jupytersetup.png*

  **2.13 Ensure VS Code with Cursor AI is ready for development**  
  *Q: Which extensions proved most valuable for data analysis? How did you configure the environment for optimal productivity? What integration challenges did you solve?*  
  A: Key extensions included Python, Jupyter, Pylance, GitLens, and Data Wrangler. No integration issues.  
  *Screenshot: /screenshots/vscode-extensions-list.jpg*

  **2.14 Create a new GitHub repository for your project**  
  *Q: How did you structure your repository for professional presentation? What naming conventions did you establish? Which files did you include in your initial commit?*  
  A: Repo uses clear folder structure for src, screenshots, and docs, with lowercase, descriptive names. Initial commit included README and .gitignore.  
  *Screenshot: /screenshots/githubrepo.png*

---

## Week 3: Visualization & Dashboard Design

- **Tasks completed:**  
  - Sketched dashboard wireframe (/screenshots/dashboardwireframe.png)
  - Selected KPIs (see KPI section below)
  - Connected Tableau to data (/screenshots/tableauconnection.png)
  - Built charts and filters (/screenshots/tableaucharts.png)
  - Combined visuals into dashboard (/screenshots/tableaudashboard.png)

- **Labs Mode Questions & Answers:**

  **3.15 Sketch dashboard wireframe for Tableau Public**  
  *Q: What layout decisions supported your business impact questions? How did you prioritize visual hierarchy? What user experience considerations influenced your design?*  
  A: KPIs are at the top, filters on the left, and main charts in the center, with a map at the bottom. Layout is designed for clarity and fast scanning.  
  *Screenshot: /screenshots/dashboardwireframe.png*

  **3.16 Identify key metrics and KPIs for dashboard**  
  *Q: Which metrics directly answered stakeholder questions? How did you validate KPI relevance? What benchmarks did you establish for success measurement?*  
  A: See "Key Metrics and KPI Selection" section below.

  **3.17 Connect Tableau Public to PostgreSQL**  
  *Q: What connection challenges did you overcome? Which authentication methods worked best? How did you optimize data refresh performance?*  
  A: Tableau Public does not support direct PostgreSQL connections, so data was exported as CSV and connected locally.  
  *Screenshot: /screenshots/tableauconnection.png*

  **3.18 Build visualizations (charts, KPIs, filters)**  
  *Q: Which chart types most effectively communicated your insights? How did you handle data limitations in visual design? What interactivity features enhanced user understanding?*  
  A: Used KPI cards, bar charts, histograms, scatter plots, and maps. Filters and tooltips improve interactivity and clarity.  
  *Screenshot: /screenshots/tableaucharts.png*

  **3.19 Combine visuals into an interactive dashboard**  
  *Q: How did you ensure dashboard coherence and professional appearance? What user testing informed your final design? Which performance optimizations did you implement?*  
  A: All visuals are arranged for logical flow and clarity. Performance was optimized by using CSV extracts and limiting chart complexity.  
  *Screenshot: /screenshots/tableaudashboard.png*

---

## Week 4: Documentation, Publishing, and Portfolio Prep

- **Tasks completed:**  
  - Wrote README.md
  - Summarized findings in portfolio docs
  - Published Tableau dashboard (/screenshots/tableaupublicpublish.png)
  - Prepared Notion/portfolio (/screenshots/portfolioprep.png)

- **Labs Mode Questions & Answers:**

  **4.20 Document your process in GitHub README**  
  *Q: How did you structure your project narrative for maximum employer impact? Which technical details demonstrated your competency? How did you balance technical depth with accessibility?*  
  A: README is structured with a project overview, data and methods, business questions, technical approach, results, and clear instructions for reproducibility. Technical details are explained clearly for both technical and non-technical audiences.

  **4.21 Summarize key findings and business impact**  
  *Q: What quantifiable business value did your analysis create? How did you translate technical findings into executive-level insights? Which recommendations had the highest ROI potential?*  
  A: The analysis identified 211 high-growth SaaS companies in California, with San Francisco as the leading hub. Median employee growth rate is 21.88%. Recommendations include targeting high-growth regions and benchmarking against top performers.

  **4.22 Publish dashboard to Tableau Public**  
  *Q: What privacy considerations influenced your publication decisions? How did you optimize for public accessibility? What metadata enhanced discoverability?*  
  A: Data is from Growjo and is publicly available, so there are no privacy concerns. The dashboard is public, with descriptive titles, tags, and a summary for discoverability.  
  *Screenshot: /screenshots/tableaupublicpublish.png*

  **4.23 Prepare project for portfolio website/LinkedIn/Notion**  
  *Q: How did you craft your project story for maximum professional impact? Which achievements highlighted your analytical thinking? How did you demonstrate business acumen alongside technical skills?*  
  A: The project is summarized on Notion with a concise narrative, key findings, dashboard link, and portfolio-ready visuals. Achievements include end-to-end data pipeline, actionable business insights, and clear communication for employers.  
  *Screenshot: /screenshots/portfolioprep.png*

---

## Key Metrics and KPI Selection

- **Median Employee Growth Rate:** Measures typical company growth, robust to outliers.
- **High-Growth Company Threshold (75th percentile):** Identifies companies growing faster than 75% of peers.
- **Total Funding:** Sums reported funding for all companies, showing capital landscape.
- **Top 10 by Employee Growth:** Highlights fastest-scaling companies.
- **Geographic Distribution:** Maps high-growth clusters by city.
- **Benchmarks:** 
  - Median employee growth: 21.88%
  - 75th percentile: 48.15%
  - High-growth companies: 211

---

## Screenshot Reference Table

| Step/Description                       | Screenshot File Path                                 |
|-----------------------------------------|-----------------------------------------------------|
| Business queries                        | /screenshots/businessqueries.png                    |
| Business questions definition           | /screenshots/businessquestionsdefinition.png        |
| Dashboard wireframe                     | /screenshots/dashboardwireframe.png                 |
| Data quality assessment                 | /screenshots/dataqualityassessment.png              |
| Dataset source selection                | /screenshots/datasetsourceselection.png             |
| Employee growth distribution            | /screenshots/employeegrowthdistribution.png         |
| Excel data exploration                  | /screenshots/exceldataexploration.png               |
| GitHub repo                             | /screenshots/githubrepo.png                         |
| Growth vs Funding                       | /screenshots/growthvsfunding.png                    |
| Import success                          | /screenshots/importsuccess.png                      |
| Jupyter setup                           | /screenshots/jupytersetup.png                       |
| Portfolio prep                          | /screenshots/portfolioprep.png                      |
| PostgreSQL installation                 | /screenshots/postgresqlinstallation.png             |
| Python cleaning analysis                | /screenshots/pythoncleaninganalysis.png             |
| SQL validation                          | /screenshots/sqlvalidation.png                      |
| Tableau connection                      | /screenshots/tableauconnection.png                  |
| Tableau dashboard                       | /screenshots/tableaudashboard.png                   |
| Tableau public publish                  | /screenshots/tableaupublicpublish.png               |
| Table schema design                     | /screenshots/tableschemadesign.png                  |
| VS Code extensions list                 | /screenshots/vscode-extensions-list.jpg             |

---

## Supporting Documentation

- [README.md](README.md)
- [Tableau Dashboard](https://public.tableau.com/app/profile/farooq.syed6811/viz/CaliforniaSaaSStartupGrowthFundingAnalysis/CaliforniaSaaSStartupGrowthFundingAnalysis)
- [Notion Project Page](https://www.notion.so/California-SaaS-Startup-Growth-Funding-Analysis-220cff0b4864800a8fd6fa3315c357ab)

---

*All screenshots referenced are available in the `/screenshots` folder.*
