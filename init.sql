CREATE DATABASE IF NOT EXISTS users_db;
USE users_db;
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (name, email) VALUES ('Martin Vergara', 'martin.vergara@duocuc.cl');

CREATE DATABASE IF NOT EXISTS products_db;
USE products_db;
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);
INSERT INTO products (name, price, stock) VALUES ('Laptop Corporativa', 799.99, 15);
