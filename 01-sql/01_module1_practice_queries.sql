-- ==========================================
-- MODULE 1.2: BASIC FILTERING & OPERATORS
-- ==========================================
SELECT 
    job_id, 
    job_title_short, 
    job_location, 
    salary_year_avg
FROM 
    job_postings_fact
WHERE 
    job_title_short = 'Data Engineer' 
LIMIT 10;

-- IN Operator (List matching)
SELECT *
FROM job_postings_fact
WHERE job_title_short IN ('Data Analyst', 'Data Engineer', 'Senior Data Engineer');

-- BETWEEN Operator & Multi-Condition
SELECT *
FROM job_postings_fact
WHERE job_title_short = 'Data Engineer' 
  AND salary_year_avg BETWEEN 75000 AND 100000;

-- ==========================================
-- MODULE 1.4 & 1.5: WILDCARDS & MATH
-- ==========================================
-- Wildcard: _ (exact single character)
SELECT *
FROM job_postings_fact
WHERE job_location LIKE 'Columbus, __';

-- Wildcard: % (any sequence of characters)
SELECT *
FROM job_postings_fact
WHERE job_title LIKE '%Data Analyst%';

-- Arithmetic & Aliases (AS)
SELECT
  job_id,
  job_title_short,
  salary_hour_avg * 0.80 AS salary_hour_min,
  salary_hour_avg,
  salary_hour_avg * 1.20 AS salary_hour_max
FROM job_postings_fact
WHERE salary_hour_avg IS NOT NULL;

-- ==========================================
-- MODULE 1.6: AGGREGATIONS & GROUP BY
-- ==========================================
-- Single-Column Group By
SELECT
  job_country,
  AVG(salary_year_avg) AS avg_salary
FROM job_postings_fact
GROUP BY job_country
ORDER BY avg_salary DESC;

-- Multi-Column Group By (Country & Role)
SELECT
  job_country,
  job_title_short,
  MIN(salary_year_avg) AS min_salary,
  AVG(salary_year_avg) AS avg_salary,
  MAX(salary_year_avg) AS max_salary
FROM job_postings_fact
GROUP BY job_country, job_title_short
ORDER BY avg_salary DESC;

-- HAVING Clause & MEDIAN
SELECT
  job_title_short,
  AVG(salary_year_avg) AS avg_salary,
  MEDIAN(salary_year_avg) AS median_salary,
  MAX(salary_year_avg) AS max_salary
FROM job_postings_fact
GROUP BY job_title_short
HAVING MEDIAN(salary_year_avg) > 100_000
ORDER BY avg_salary DESC;