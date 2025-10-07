-- Step 1: Use the database
CREATE DATABASE IF NOT EXISTS store_db;
USE store_db;

-- Step 2: Create a table 'products'
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

-- Step 3: Create a new user 'analyst'
CREATE USER 'analyst'@'localhost' IDENTIFIED BY 'password123';

-- Step 4: Grant SELECT and INSERT privileges on 'products' table
GRANT SELECT, INSERT ON store_db.products TO 'analyst'@'localhost';

-- Step 5: Apply privileges
FLUSH PRIVILEGES;

-- Step 6: Check granted privileges (optional)
SHOW GRANTS FOR 'analyst'@'localhost';