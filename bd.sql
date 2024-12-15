CREATE DATABASE mydatabase;
USE mydatabase;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    fullName VARCHAR(255) NOT NULL,
    phone VARCHAR(50),
    email VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    address VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    services VARCHAR(255) NOT NULL,
    pay VARCHAR(255) NOT NULL,
    status VARCHAR(255) DEFAULT 'Новая заявка',
    declineReason VARCHAR(255),
    FOREIGN KEY (userId) REFERENCES users(id) ON DELETE CASCADE
);
