CREATE DATABASE IF NOT EXISTS bank_db;
USE bank_db;

DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO accounts (account_id, account_name, balance) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 30000);

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION;

UPDATE accounts SET balance = balance - 10000 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 10000 WHERE account_id = 2;

COMMIT;

SELECT * FROM accounts;