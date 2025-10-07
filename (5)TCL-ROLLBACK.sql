CREATE DATABASE IF NOT EXISTS store_db;
USE store_db;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 50000),
(2, 'Smartphone', 20000);

START TRANSACTION;

DELETE FROM products
WHERE product_id = 2;

ROLLBACK;

SELECT * FROM products;