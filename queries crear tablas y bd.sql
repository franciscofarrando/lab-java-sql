CREATE TABLE aircrafts (
    aircraft_id INT AUTO_INCREMENT PRIMARY KEY,
    aircraft VARCHAR(50) UNIQUE,
    seats INT
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_status VARCHAR(20),
    total_mileage INT
);

CREATE TABLE flights (
    flight_id VARCHAR(10) PRIMARY KEY,
    flight_number VARCHAR(10),
    flight_mileage INT,
    aircraft_id INT,
    customer_id INT,
    FOREIGN KEY (aircraft_id) REFERENCES aircrafts(aircraft_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO aircrafts (aircraft, seats) VALUES
('Boeing 747', 400),
('Airbus A330', 236),
('Boeing 777', 264);

INSERT INTO customers (customer_name, customer_status, total_mileage) VALUES
('Agustine Riviera', 'Silver', 115235),
('Alaina Sepulvida', 'None', 6008),
('Tom Jones', 'Gold', 205767),
('Sam Rio', 'None', 2653),
('Jessica James', 'Silver', 127656),
('Ana Janco', 'Silver', 136773),
('Jennifer Cortez', 'Gold', 300582),
('Christian Janco', 'Silver', 14642);

INSERT INTO flights (flight_id, flight_number, flight_mileage, aircraft_id, customer_id) VALUES
('DL143-A', 'DL143', 135, 1, 1),
('DL122-A', 'DL122', 4370, 2, 1),
('DL122-B', 'DL122', 4370, 2, 2),
('DL122-C', 'DL122', 4370, 2, 3),
('DL53-A',  'DL53',  2078, 3, 3),
('DL222-A', 'DL222', 1765, 3, 3),
('DL143-B', 'DL143', 135, 1, 4),
('DL37-A',  'DL37',  531,  1, 4),
('DL143-C', 'DL143', 135, 1, 5),
('DL122-D', 'DL122', 4370, 2, 5),
('DL222-B', 'DL222', 1765, 3, 6),
('DL222-C', 'DL222', 1765, 3, 7),
('DL222-D', 'DL222', 1765, 3, 8);





