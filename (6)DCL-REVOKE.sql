CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

CREATE TABLE IF NOT EXISTS patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    disease VARCHAR(50)
);

CREATE USER IF NOT EXISTS 'doctor'@'localhost' IDENTIFIED BY 'doc123';

GRANT SELECT, UPDATE ON hospital_db.patients TO 'doctor'@'localhost';
FLUSH PRIVILEGES;

SHOW GRANTS FOR 'doctor'@'localhost';

REVOKE UPDATE ON hospital_db.patients FROM 'doctor'@'localhost';
FLUSH PRIVILEGES;

SHOW GRANTS FOR 'doctor'@'localhost';