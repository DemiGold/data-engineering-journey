-- SQL Lesson 6: Multi-table queries with JOINs
-- 1.Find the domestic and international sales for each movie 
SELECT Movies.Title, Boxoffice.Domestic_sales, Boxoffice.International_sales FROM Movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.movie_id;

-- 2. Show the sales numbers for each movie that did better internationally rather than domestically
SELECT Movies.Title, Boxoffice.Domestic_sales, Boxoffice.International_sales FROM Movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.movie_id WHERE Boxoffice.International_sales > Boxoffice.Domestic_sales;

-- 3. List all the movies by their ratings in descending order
SELECT  Movies.Title, Rating FROM Movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.Movie_id ORDER BY Rating DESC;


-- SQL Lesson 7: OUTER JOINs
-- 1. Find the list of all buildings that have employees
SELECT DISTINCT Building FROM Employees;

-- 2. Find the list of all buildings and their capacity
SELECT * FROM Buildings;

--3. List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT Buildings.Building_name,Employees.Role FROM Buildings LEFT JOIN Employees ON Buildings.Building_name = Employees.Building;


-- SQL Lesson 8: A short note on NULLs
-- 1. Find the name and role of all employees who have not been assigned to a building
SELECT Name, Role FROM employees WHERE Building IS NULL;

--2. Find the names of the buildings that hold no employees
SELECT Building_name FROM Buildings LEFT JOIN Employees ON Buildings.Building_name = Employees.Building WHERE Employees.Building IS NULL;