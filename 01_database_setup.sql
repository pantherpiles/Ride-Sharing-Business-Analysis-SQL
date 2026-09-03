DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS drivers;
DROP TABLE IF EXISTS rides;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    city TEXT,
    signup_date DATE
);

INSERT INTO customers (customer_id, customer_name, city, signup_date) VALUES
(1, 'Aarav Sharma', 'Delhi', '2024-01-15'),
(2, 'Priya Singh', 'Mumbai', '2024-02-20'),
(3, 'Rohan Gupta', 'Bengaluru', '2024-03-10'),
(4, 'Neha Verma', 'Delhi', '2024-04-05'),
(5, 'Kabir Khan', 'Mumbai', '2024-05-12'),
(6, 'Ananya Patel', 'Bengaluru', '2024-06-18'),
(7, 'Ishaan Mehta', 'Delhi', '2024-07-22'),
(8, 'Sneha Kapoor', 'Mumbai', '2024-08-30');


CREATE TABLE drivers (
    driver_id INTEGER PRIMARY KEY,
    driver_name TEXT,
    city TEXT,
    rating DECIMAL(3,2)
);

INSERT INTO drivers (driver_id, driver_name, city, rating) VALUES
(101, 'Rahul Kumar', 'Delhi', 4.8),
(102, 'Vikram Singh', 'Mumbai', 4.6),
(103, 'Arjun Patel', 'Bengaluru', 4.9),
(104, 'Sanjay Mehta', 'Delhi', 4.5),
(105, 'Amit Shah', 'Mumbai', 4.7),
(106, 'Karan Rao', 'Bengaluru', 4.8);


CREATE TABLE rides (
    ride_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    driver_id INTEGER,
    ride_date DATE,
    pickup_city TEXT,
    fare DECIMAL(10,2),
    status TEXT
);

INSERT INTO rides 
(ride_id, customer_id, driver_id, ride_date, pickup_city, fare, status)
VALUES
(1001, 1, 101, '2025-01-05', 'Delhi', 250, 'Completed'),
(1002, 2, 102, '2025-01-06', 'Mumbai', 320, 'Completed'),
(1003, 3, 103, '2025-01-08', 'Bengaluru', 280, 'Completed'),
(1004, 4, 104, '2025-01-10', 'Delhi', 0, 'Cancelled'),
(1005, 5, 105, '2025-01-12', 'Mumbai', 450, 'Completed'),
(1006, 6, 106, '2025-01-15', 'Bengaluru', 350, 'Completed'),
(1007, 1, 101, '2025-02-02', 'Delhi', 400, 'Completed'),
(1008, 2, 102, '2025-02-05', 'Mumbai', 0, 'Cancelled'),
(1009, 3, 103, '2025-02-08', 'Bengaluru', 500, 'Completed'),
(1010, 7, 104, '2025-02-12', 'Delhi', 220, 'Completed'),
(1011, 8, 105, '2025-02-15', 'Mumbai', 380, 'Completed'),
(1012, 4, 101, '2025-02-18', 'Delhi', 300, 'Completed'),
(1013, 5, 102, '2025-03-03', 'Mumbai', 420, 'Completed'),
(1014, 6, 103, '2025-03-06', 'Bengaluru', 0, 'Cancelled'),
(1015, 7, 104, '2025-03-10', 'Delhi', 275, 'Completed'),
(1016, 8, 105, '2025-03-14', 'Mumbai', 600, 'Completed'),
(1017, 1, 106, '2025-03-18', 'Bengaluru', 330, 'Completed'),
(1018, 2, 101, '2025-03-22', 'Delhi', 290, 'Completed'),
(1019, 3, 102, '2025-04-04', 'Mumbai', 410, 'Completed'),
(1020, 4, 103, '2025-04-08', 'Bengaluru', 450, 'Completed');
