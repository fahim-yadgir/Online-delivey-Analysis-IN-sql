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

