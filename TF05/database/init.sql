CREATE DATABASE IF NOT EXISTS monitoring;
USE monitoring;

CREATE TABLE IF NOT EXISTS health_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(50),
    status VARCHAR(20),
    response_time VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);