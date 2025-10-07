CREATE DATABASE IF NOT EXISTS dbms;

USE dbms;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 750.00),
(2, 'Smartphone', 500.00),
(3, 'Keyboard', 25.50),
(4, 'Mouse', 15.00),
(5, 'Monitor', 200.00);

SELECT * FROM products;