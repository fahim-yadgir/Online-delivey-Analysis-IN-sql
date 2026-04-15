create database Online_delivery;
use Online_delivery;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    phone VARCHAR(15)
);

INSERT INTO customers VALUES
(1, 'Amit Sharma', 'Pune', '9876543210'),
(2, 'Sara Khan', 'Mumbai', '9123456780'),
(3, 'Rahul Patil', 'Pune', '9988776655'),
(4, 'Neha Verma', 'Delhi', '9090909090'),
(5, 'John Dsouza', 'Goa', '8899776655'),
(6, 'Priya Singh', 'Bangalore', '9012345678');