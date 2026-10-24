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