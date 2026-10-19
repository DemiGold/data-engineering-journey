-- SQL Lesson 1: SELECT queries 101
-- 1.  Find the title of each Film
SELECT title FROM Movies;

-- 2. Find the director of each Film
SELECT director FROM Movies;

-- 3. Find the title and director of each Film
SELECT title, director FROM Movies;

-- 4. Find the title and director of each film
SELECT title, year FROM Movies;

-- 5. Find all the information about each film
SELECT * FROM Movies;


-- SQL Lesson 2: Queries with constraints (Pt. 1)
-- 1. Find the movie with a row id of 6
SELECT * FROM Movies WHERE id = 6;

-- 2. Find the movies released in the years between 2000 and 2010
SELECT * FROM Movies WHERE Year BETWEEN 2000 AND 2010;

--3. Find the movies not released in the years between 2000 and 2010
SELECT * FROM Movies WHERE Year NOT BETWEEN 2000 AND 2010;

-- 4. Find the first 5 Pixar movies and their realease year
SELECT Title, Year FROM Movies LIMIT 5;


-- SQL Lesson 3: Queries with constraints (Pt. 2)
-- 1. Find all the Toy Story movies
SELECT  * FROM Movies WHERE Title LIKE '%Toy Story%';

-- 2. Find all the movies directed by John Lasseter
SELECT * FROM Movies WHERE Director = 'John Lasseter';

-- 3. Find all the movies ( and director) not directed by John Lasseter
SELECT Title, Director FROM Movies WHERE Director != 'John Lasseter';

-- 4. Find all the WALL-* movies
SELECT * FROM Movies WHERE Title LIKE 'WALL-%';


-- SQL Lesson 4: Filtering and sorting Query results
-- 1. List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT Director FROM Movies ORDER BY Director ASC;

-- 2. List the last four Pixar movies released (ordered from most recent to least)
SELECT * FROM Movies ORDER BY Year DESC LIMIT 4;

-- 3. List the first five Pixar movies sorted alphabetically
SELECT * FROM Movies ORDER BY Title ASC LIMIT 5;

-- 4. List the next five Pixar movies sorted alphabetically 
SELECT * FROM Movies ORDER BY Title ASC LIMIT 5 OFFSET 5;


-- SQL Review: Simple SELECT Queries
-- 1.List all the Canadian cities and their populations
SELECT City, Population FROM North_american_cities WHERE Country = 'Canada';

-- 2. Order all the cities in the United States by their latitude from north to south
SELECT City FROM North_american_cities WHERE Country = 'United States' ORDER BY latitude DESC;

-- 3. List all the cities west of Chicago, ordered from west to east
SELECT City FROM North_american_cities WHERE longitude < -87.6298 ORDER BY longitude ASC;

-- 4. List the two largest cities in Mexico (by population)
SELECT * FROM North_american_cities WHERE Country = 'Mexico' ORDER BY Population DESC LIMIT 2;

-- 5. List the third and fourth largest cities (by population) in the United States and their population
SELECT * FROM North_american_cities WHERE Country = 'United States' ORDER BY Population DESC LIMIT 2 OFFSET 2;


-- SQL Lesson 6: Multi-table queries with JOINs
-- 1.Find the domestic and international sales for each movie 
SELECT Movies.Title, Boxoffice.Domestic_sales, Boxoffice.International_sales FROM Movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.movie_id;

-- 2. Show the sales numbers for each movie that did better internationally rather than domestically
SELECT Movies.Title, Boxoffice.Domestic_sales, Boxoffice.International_sales FROM Movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.movie_id WHERE Boxoffice.International_sales > Boxoffice.Domestic_sales;

-- 3. List all the movies by their ratings in descending order
SELECT  Movies.Title, Rating FROM Movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.Movie_id ORDER BY Rating DESC;

-- 4. Find the list of all buildings that have employees
