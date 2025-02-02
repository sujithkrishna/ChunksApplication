CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users (username, password) VALUES ('admin', '$2a$10$glgtJqdRj3DqcEjc1cn/6uELKR7CC9jO5MNweQabEI2dRmOCW7vMe');


SELECT * from users;