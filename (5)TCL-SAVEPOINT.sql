CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (emp_id, emp_name, salary) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000);

START TRANSACTION;

INSERT INTO employees (emp_id, emp_name, salary) VALUES (3, 'John', 45000);

SAVEPOINT sp1;

INSERT INTO employees (emp_id, emp_name, salary) VALUES (4, 'Mark', 48000);

ROLLBACK TO sp1;

COMMIT;

SELECT * FROM employees;