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
(2, 'Smartphone', 20000),
(3, 'Smartwatch', 10000),
(4, 'Tablet', 15000),
(5, 'Lamp', 2000);

SELECT * FROM products
WHERE price BETWEEN 10000 AND 30000;

SELECT * FROM products
WHERE product_id IN (1, 3, 5);

SELECT COUNT(*) AS total_products FROM products;

SELECT SUM(price) AS total_price FROM products;

SELECT AVG(price) AS average_price FROM products;

SELECT MAX(price) AS max_price FROM products;

SELECT MIN(price) AS min_price FROM products;