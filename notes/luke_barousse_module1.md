# Luke Barousse Module 1 Notes (SQL Fundamentals)

## Comparison & Logical Operators
* `=` / `!=` / `<>` (Equal / Not Equal)
* `>` / `<` / `>=` / `<=` (Greater/Less than)
* `BETWEEN` (Inclusive range)
* `IN` (List matching)
* `LIKE` (Pattern matching)
* `IS NULL` / `IS NOT NULL` (Missing values)
* `AND` / `OR` / `NOT` (Logic combinations)

## Wildcards
* `%` = Matches zero, one, or multiple characters.
* `_` = Matches exactly one single character.
* Example: `LIKE 'Columbus, __'` matches "Columbus, OH" and "Columbus, GA".

## Aggregations
* `COUNT(*)`, `SUM()`, `AVG()`, `MIN()`, `MAX()`, `MEDIAN()`
* **`GROUP BY`**: Collapses rows into groups to calculate aggregates.
* **`HAVING` vs `WHERE`**: `WHERE` filters rows *before* aggregation. `HAVING` filters groups *after* aggregation. (You cannot use aggregate functions in `WHERE`).

## SQL Dialect "Friendly SQL" (DuckDB)
* Standard SQL does *not* allow you to use SELECT aliases in `WHERE`, `GROUP BY`, or `HAVING`.
* DuckDB (MotherDuck) allows this. For example: `HAVING median_salary > 100000` works in DuckDB, but in PostgreSQL you would have to write the full `MEDIAN(salary_year_avg)` expression.
* **Pro-tip for portability:** Always write the raw expression in `HAVING` so your code works on Snowflake, BigQuery, and Postgres.