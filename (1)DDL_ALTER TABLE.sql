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
(3, 'Charlie', 'A'),
(4, 'David', 'C');

ALTER TABLE students ADD age INT NOT NULL DEFAULT 0;

UPDATE students SET age = 18 WHERE student_id IN (1,2);
UPDATE students SET age = 19 WHERE student_id IN (3,4);

ALTER TABLE students CHANGE grade class VARCHAR(5);

SELECT * FROM students;