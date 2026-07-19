CREATE DATABASE skylearn;

USE skylearn;

CREATE TABLE deployments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    version VARCHAR(20),
    deployed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO deployments (version)
VALUES ('1.0.0');
