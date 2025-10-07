CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (emp_id, emp_name, salary) VALUES
(1, 'John', 50000),
(2, 'Jane', 60000);

START TRANSACTION;

UPDATE employees
SET salary = 65000
WHERE emp_id = 2;

COMMIT;

SELECT * FROM employees;