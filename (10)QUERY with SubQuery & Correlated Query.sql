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

SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

SELECT product_name, category, price
FROM products p1
WHERE price > (
    SELECT AVG(price)
    FROM products p2
    WHERE p2.category = p1.category
);