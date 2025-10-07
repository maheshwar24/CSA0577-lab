-- Step 1: Use the database
USE dbms;

-- Step 2: Create a table 'courses'
DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_months INT NOT NULL,
    fee DECIMAL(10,2) NOT NULL
);

--
INSERT INTO courses (course_id, course_name, duration_months, fee) VALUES
(1, 'Python Programming', 6, 15000),
(2, 'Data Science', 12, 40000),
(3, 'Web Development', 8, 20000);

SELECT * FROM courses;

DELETE FROM courses
WHERE course_name = 'Data Science';

SELECT * FROM courses;