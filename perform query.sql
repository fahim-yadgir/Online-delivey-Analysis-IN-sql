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

select c.customer_id , sum(o.quantity * o.price) 
from customers c
inner join orders o ON c.customer_id = o.customer_id
where c.customer_id = 1
group by c.customer_id;

select customer_id , max(price)
from orders
group by customer_id;


select product_name , price
from orders
where order_date between '2026-04-10' AND '2026-04-13' and price > 500;

select order_id , product_name,price
from orders
where price = (select max(price) from orders
				where price < (select max(price) from orders));

select product_name , max(quantity)
from orders
group by product_name;

select c.customer_name , o.product_name,o.price
from customers c
JOIN orders o ON c.customer_id = o.customer_id
where o.order_date between '2026-04-10' and '2026-04-13' AND o.product_name = 'Pizza';

select c.city , o.product_name , o.order_date
from customers c
join orders o on c.customer_id = o.customer_id
where o.order_date between '2026-04-10' AND '2026-04-13' and o.product_name = 'Burger' and c.city = 'Mumbai';

select c.customer_name ,sum(o.quantity * o.price)as total_Expends
from customers c
join orders o ON c.customer_id = o.customer_id
where c.customer_name = 'John Dsouza';

select product_name , max(quantity * price) as max_sale_product
from orders
group by product_name;

select product_name , sum(quantity*price) as max_sale
from orders
group by product_name
having max(quantity * price) = (select max(quantity * price)from orders);

select product_name , sum(quantity * price) as max_sale
from orders
group by product_name
having min(quantity * price) = (select min(quantity * price)from orders);

create view Total_pune_sale AS
select c.city,o.product_name,sum(o.quantity * o.price) as totel_sale
from customers c
inner join orders o on c.customer_id = o.customer_id
where c.city = 'Pune'
group by c.city,o.product_name;

select * from Total_pune_sale;