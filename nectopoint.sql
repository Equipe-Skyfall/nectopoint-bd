CREATE DATABASE IF NOT EXISTS nectopoint;
USE nectopoint;

CREATE TABLE `user` (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    title ENUM('ANALYST', 'MANAGER', 'DIRECTOR', 'EXECUTIVE') NOT NULL, -- Adjust based on TipoCargo
    department VARCHAR(255) NOT NULL,
    work_journey_type VARCHAR(255) NOT NULL,
    employee_number VARCHAR(50) UNIQUE NOT NULL,
    daily_hours INT NOT NULL,
    bank_of_hours BIGINT DEFAULT 0,
    birth_date DATE NOT NULL,
    CONSTRAINT chk_birth_date CHECK (birth_date < CURDATE())
);