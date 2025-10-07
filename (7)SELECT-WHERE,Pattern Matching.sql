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
WHERE price > 10000;

SELECT * FROM products
WHERE product_name LIKE 'Smar%';

SELECT * FROM products
WHERE product_name LIKE 'L_mp';