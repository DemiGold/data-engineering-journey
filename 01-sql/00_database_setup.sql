-- ==========================================
-- DATABASE SETUP & MOUNTING (MotherDuck)
-- ==========================================

-- Attach shared MotherDuck cloud database to local environment alias
ATTACH 'md:_share/data_jobs/058ad1f4-939b-4998-95e1-0df8f8644f3c' AS data_jobs;

-- Fully qualified pathing format: <database>.<schema>.<table_name>
SELECT * FROM data_jobs.main.job_postings_fact LIMIT 10;