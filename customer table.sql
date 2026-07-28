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

select * from 
customers;
select * from orders;

update customers
set phone = '7385094941'
where customer_id = 6;

update customers
set phone = '9850429892'
where customer_id = 4;

alter table customers
rename column city to customer_city;

select * ,
	sum(price) over(partition by product_name order by order_id)as total_sum
from orders;

select c.customer_name,o.product_name,o.price
from customers c
right join orders o on c.customer_id = o.customer_id
where o.price >= 200;

alter table customers
modify column phone bigint;