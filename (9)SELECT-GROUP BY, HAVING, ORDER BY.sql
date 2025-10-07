CREATE DATABASE IF NOT EXISTS store_db;
USE store_db;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 50000),
(2, 'Smartphone', 'Electronics', 20000),
(3, 'Smartwatch', 'Electronics', 10000),
(4, 'Tablet', 'Electronics', 15000),
(5, 'T-Shirt', 'Clothing', 1000),
(6, 'Jeans', 'Clothing', 2000),
(7, 'Jacket', 'Clothing', 3000);

SELECT category, COUNT(*) AS total_products, SUM(price) AS total_price
FROM products
GROUP BY category;

SELECT category, COUNT(*) AS total_products, SUM(price) AS total_price
FROM products
GROUP BY category
HAVING SUM(price) > 20000;

SELECT category, COUNT(*) AS total_products, SUM(price) AS total_price
FROM products
GROUP BY category
ORDER BY total_price DESC;