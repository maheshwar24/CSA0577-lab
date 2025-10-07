CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(101, 'Alice', 'HR', 50000),
(102, 'Bob', 'Finance', 55000),
(103, 'Charlie', 'IT', 60000),
(104, 'David', 'Finance', 48000),
(105, 'Eva', 'IT', 70000);

CREATE OR REPLACE VIEW IT_Employees AS
SELECT emp_id, emp_name, salary
FROM employees
WHERE dept = 'IT';

SELECT * FROM IT_Employees;

CREATE INDEX idx_salary ON employees(salary);

SELECT emp_name, salary
FROM employees
WHERE salary > 55000;