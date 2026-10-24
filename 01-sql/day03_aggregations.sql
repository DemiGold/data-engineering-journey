-- SQL Lesson 9: Queries with expressions
-- 1. List all movies and their combined sales in millions of dollars
SELECT Movies.Title, (Boxoffice.Domestic_sales + Boxoffice.International_sales) AS Total_sales FROM Movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.movie_id;

-- 2. List all movies and their ratings in percent
SELECT Movies.Id, Movies.Title,(Boxoffice.Rating * 10) AS ratings_in_percentage FROM Movies LEFT JOIN Boxoffice ON Movies.Id = Boxoffice.Movie_Id;

-- 3. List all movies that were released on even number years
SELECT * FROM Movies WHERE (Year % 2) = 0;