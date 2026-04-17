use Online_delivery;
select * from customers;
select * from orders;

select c.city , sum(o.quantity * o.price) as total_revenu
from customers c
JOIN orders o ON c.customer_id = c.customer_id
group by c.city;

select o.order_date , sum(o.quantity * o.price) as Three_days_total_revenue
from customers c
JOIN orders o ON c.customer_id = c.customer_id
where c.city = 'Pune'
group by o.order_date
order by o.order_date
limit 1 offset 2;

select c.city , sum(o.quantity * o.price)as all_days_revenue
from customers c
JOIN orders o ON c.customer_id = c.customer_id
where c.city = 'Pune'
group by c.city;

select o.product_name , sum(o.quantity * o.price)as Total_Pizza_revenue_from_pune
from customers c
JOIN orders o ON c.customer_id = c.customer_id
where o.product_name = 'Pizza' and c.city = 'Pune'
group by o.product_name;

select c.city ,sum(o.quantity * o.price) as total_revenue
from customers c
JOIN orders o on c.customer_id = o.customer_id
group by c.city;

select c.city ,max(o.quantity * o.price) as max_price
from customers c
JOIN orders o ON c.customer_id = o.customer_id
where c.city = 'Mumbai'
group by c.city;

select product_name , max(quantity) as max_quantity
from orders
where product_name = 'pizza'
group by product_name;

select product_name , order_date,sum(quantity * price) as revenue
from orders
where order_date between '2026-04-9' and '2026-04-14' and product_name = 'Pizza'
group by order_date,product_name;





