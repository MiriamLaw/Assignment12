TRUNCATE TABLE Customer_Orders;
TRUNCATE TABLE Pizzas_Orders;
DELETE FROM Orders;
DELETE FROM Customers;
DELETE FROM Pizzas;

select * from pizzas;

INSERT INTO pizzas (pizza_type, price) 
VALUES
('Pepperoni & Cheese', 7.99),
('Vegetarian', 9.99),
('Meat Lovers', 14.99),
('Hawaiian', 12.99);

select * from customers;

INSERT INTO Customers (customer_name, phone_number) 
VALUES
('Trevor Page', '226-555-4982'),
('John Doe', '555-555-9498');

select * from orders;

INSERT INTO Orders (customer_id, order_date_time) 
VALUES
(10, '2014-09-10 09:47:00'),
(11, '2014-09-10 13:20:00'),
(10, '2014-09-10 15:30:00');

INSERT INTO Pizzas_Orders (order_id, pizza_id, quantity) 
VALUES
(10, 21, 1), 
(10, 23, 1), 
(11, 22, 1), 
(11, 23, 2), 
(12, 23, 1), 
(12, 24, 1); 
select * from pizzas_orders;

SELECT 
c.customer_name,
c.phone_number,
SUM(p.price * po.quantity) AS total_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Pizzas_Orders po ON o.order_id = po.order_id
JOIN Pizzas p ON po.pizza_id = p.pizza_id
GROUP BY c.customer_id;

Select
	c.customer_name,
    c.phone_number,
    DATE(o.order_date_time) AS order_date,
    SUM(p.price * po.quantity) AS total_amount
From
	Customers c
Join
	Orders o ON c.customer_id = o.customer_id
JOIN
	Pizzas_Orders po ON o.order_id = po.order_id
Join
	Pizzas p ON po.pizza_id = p.pizza_id
Group By
	c.customer_id, DATE(o.order_date_time);
