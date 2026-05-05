use Online_delivery;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    quantity INT,
    price INT,
    order_date DATE
);

INSERT INTO orders VALUES
(101, 1, 'Pizza', 2, 500, '2026-04-10'),
(102, 2, 'Burger', 1, 150, '2026-04-11'),
(103, 1, 'Pasta', 3, 600, '2026-04-12'),
(104, 3, 'Sandwich', 2, 200, '2026-04-12'),
(105, 4, 'Pizza', 1, 250, '2026-04-13'),
(106, 5, 'Biryani', 2, 400, '2026-04-13'),
(107, 6, 'Noodles', 1, 180, '2026-04-14'),
(108, 2, 'Pizza', 4, 1000, '2026-04-14');

select * from orders;

alter table orders
add column price int;

alter table orders
rename column price to Total_price;

update orders
set price = 325
where product_name = 'Pizza';

update orders
set Total_price = 200
where product_name = 'Burger';

update orders
set price = 200
where product_name = 'Burger';

update orders
set price = 250
where product_name = 'Pasta';

update orders
set price = 175
where product_name = 'Sandwich';

update orders
set price = 275
where product_name = 'Biryani';

update orders
set price = 330
where product_name = 'Noodles';