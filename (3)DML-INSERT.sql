USE dbms;

DROP TABLE IF EXISTS students;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    grade VARCHAR(5) NOT NULL
);

INSERT INTO students (student_id, student_name, grade) VALUES
(1, 'Alice', 'A'),
(2, 'Bob', 'B'),
(3, 'Charlie', 'A');

SELECT * FROM students;