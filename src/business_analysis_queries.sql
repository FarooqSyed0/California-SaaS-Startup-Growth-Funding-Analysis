-- =========================================
-- Q1: Top 10 Startups by Employee Growth
-- =========================================
WITH top_growth AS (
  SELECT
    company_name,
    current_employees,
    employee_growth,
    city
  FROM startup_funding_analysis
  WHERE employee_growth IS NOT NULL
  ORDER BY employee_growth DESC
  LIMIT 10
)
SELECT * FROM top_growth;

-- =========================================
-- Q2: Median Funding for High-Growth Startups
-- =========================================
WITH funding_stats AS (
  SELECT
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY total_funding) AS median_funding
  FROM startup_funding_analysis
  WHERE employee_growth > 20
)
SELECT * FROM funding_stats;

-- =========================================
-- Q3: Employee Growth vs. Company Age
-- =========================================
SELECT
  company_name,
  employee_growth,
  EXTRACT(YEAR FROM CURRENT_DATE) - founded AS company_age
FROM startup_funding_analysis
WHERE founded IS NOT NULL
  AND employee_growth IS NOT NULL
ORDER BY employee_growth DESC;

-- =========================================
-- Q4: Funding by City
-- =========================================
SELECT
  city,
  COUNT(*) AS company_count,
  SUM(total_funding) AS total_funding
FROM startup_funding_analysis
WHERE total_funding IS NOT NULL
GROUP BY city
ORDER BY total_funding DESC;
