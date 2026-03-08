CREATE DATABASE school_management;
USE school_management;

CREATE TABLE schools (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL
);

INSERT INTO schools (name, address, latitude, longitude)
VALUES
("ABC School", "Bangalore", 12.9716, 77.5946),
("Green Valley School", "Hyderabad", 17.3850, 78.4867),
("Delhi Public School", "Delhi", 28.7041, 77.1025),
("Sunrise High School", "Chennai", 13.0827, 80.2707);

select * from schools;