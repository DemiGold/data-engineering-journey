# MotherDuck Database Schema Architecture

## Table Types
The `data_jobs` dataset uses a Star/Snowflake schema model:
1. **`job_postings_fact`** (Central Fact Table): Primary transactional dataset with job IDs, titles, locations, and salary metrics.
2. **`company_dim`** (Dimension Table): Attributes and metadata for companies.
3. **`skills_dim`** (Dimension Table): Master lookup of technical skills.
4. **`skills_job_dim`** (Bridge Table): Links job postings to specific skills (~7.19M+ rows).

## Data Dictionary: `job_postings_fact`
* **Identifiers:** `job_id`, `company_id`
* **Role Metadata:** `job_title_short`, `job_title`, `job_location`, `job_via`, `search_location`, `job_country`
* **Logistics:** `job_schedule_type`, `job_work_from_home` (Boolean), `job_posted_date`
* **Compensation:** `salary_rate`, `salary_year_avg`, `salary_hour_avg`
* **Requirements:** `job_no_degree_mention`, `job_health_insurance`