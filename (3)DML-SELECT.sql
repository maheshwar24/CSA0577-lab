-- Step 1: Use the database
USE dbms;

-- Step 2: Create a table 'movies'
DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100) NOT NULL,
    director VARCHAR(50) NOT NULL,
    rating DECIMAL(3,1) NOT NULL
);

-- Step 3: Insert sample data
INSERT INTO movies (movie_id, movie_name, director, rating) VALUES
(1, 'Pushpa', 'Sukumar', 9.0),
(2, 'RRR', 'Rajamouli', 9.4),
(3, 'Saaho', 'Sujeeth', 9.2),
(4, 'AVPL', 'Trivikram', 9.3);

-- Step 4: Retrieve movies with rating greater than 8.5
SELECT movie_name, director, rating
FROM movies
WHERE rating > 8.5;