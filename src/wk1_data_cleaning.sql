-- 1. Identify and count missing values in key columns
SELECT
  COUNT(*) - COUNT(company_name) AS missing_company_names,
  COUNT(*) - COUNT(total_funding) AS missing_total_funding,
  COUNT(*) - COUNT(current_employees) AS missing_current_employees,
  COUNT(*) - COUNT(founded) AS missing_founded
FROM startup_funding_analysis;

-- 2. Remove exact duplicate rows based on all key fields
DELETE FROM startup_funding_analysis
WHERE ctid NOT IN (
  SELECT MIN(ctid)
  FROM startup_funding_analysis
  GROUP BY company_name, city, state, founded, total_funding, current_employees
);

-- 3. Standardize company names: trim whitespace and set to proper case
UPDATE startup_funding_analysis
SET company_name = INITCAP(TRIM(company_name));

-- 4. Handle non-numeric or error values in total_funding
UPDATE startup_funding_analysis
SET total_funding = NULL
WHERE total_funding ~ '[^0-9.]';

-- 5a. Remove rows with critical nulls (company_name or founded)
DELETE FROM startup_funding_analysis
WHERE company_name IS NULL OR founded IS NULL;

-- 5b. Impute missing employee counts with the median (if desired)
UPDATE startup_funding_analysis
SET current_employees = (
  SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY current_employees)
  FROM startup_funding_analysis
  WHERE current_employees IS NOT NULL
)
WHERE current_employees IS NULL;

-- 6. Convert total_funding column to numeric (if currently text)
ALTER TABLE startup_funding_analysis
ALTER COLUMN total_funding TYPE NUMERIC
USING total_funding::NUMERIC;

-- 7. Convert founded column to DATE (if currently text)
ALTER TABLE startup_funding_analysis
ALTER COLUMN founded TYPE DATE
USING TO_DATE(founded, 'YYYY-MM-DD');

-- 8. Validate data ranges for funding and employees
SELECT
  MIN(total_funding) AS min_funding,
  MAX(total_funding) AS max_funding,
  MIN(current_employees) AS min_employees,
  MAX(current_employees) AS max_employees
FROM startup_funding_analysis;
