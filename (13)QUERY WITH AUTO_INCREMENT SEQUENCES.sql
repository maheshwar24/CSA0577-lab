CREATE DATABASE IF NOT EXISTS shop_db;
USE shop_db;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products (product_name, price) VALUES
('Laptop', 50000),
('Smartphone', 20000),
('Tablet', 15000);

SELECT * FROM products;

DROP TABLE IF EXISTS order_seq;
CREATE TABLE order_seq (
    id INT AUTO_INCREMENT PRIMARY KEY
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO order_seq VALUES (NULL); 
SET @seq_id = LAST_INSERT_ID();
INSERT INTO orders VALUES (@seq_id, 'Laptop');

INSERT INTO order_seq VALUES (NULL); 
SET @seq_id = LAST_INSERT_ID();
INSERT INTO orders VALUES (@seq_id, 'Smartphone');

SELECT * FROM orders;