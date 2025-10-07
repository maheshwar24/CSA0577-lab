CREATE DATABASE IF NOT EXISTS store_db;
USE store_db;

DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Clothing');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT PRIMARY KEY,                  -- PRIMARY KEY
    product_name VARCHAR(100) NOT NULL,          -- NOT NULL
    price DECIMAL(10,2) CHECK (price > 0),      -- CHECK
    category_id INT,                             -- FOREIGN KEY
    sku VARCHAR(20) UNIQUE,                      -- UNIQUE
    stock INT DEFAULT 0,                         -- DEFAULT
    CONSTRAINT fk_category FOREIGN KEY (category_id)
    REFERENCES categories(category_id)           -- FOREIGN KEY
);

INSERT INTO products (product_id, product_name, price, category_id, sku, stock) VALUES
(1, 'Laptop', 50000, 1, 'LAP123', 10),
(2, 'T-Shirt', 500, 2, 'TSH456', 50),
(3, 'Headphones', 2000, 1, 'HP789', DEFAULT);

DESCRIBE products;

SELECT * FROM products;