select * from pizzas;
 INSERT INTO pizzas (pizza_id, pizza_type, price)
 VALUES (1, 'Pepperoni & Cheese', 7.99);
 INSERT INTO pizzas (pizza_id, pizza_type, price)
 VALUES (2, 'Vegetarian', 9.99);
 INSERT INTO pizzas (pizza_id, pizza_type, price)
 VALUES (3, 'Meat Lovers', 14.99);
  INSERT INTO pizzas (pizza_id, pizza_type, price)
 VALUES (4, 'Hawaiian', 12.99);

INSERT INTO Customers (customer_name, phone_number) 
VALUES ('Trevor Page', '226-555-4982');
INSERT INTO Customers (customer_name, phone_number) 
VALUES ('John Doe', '555-555-9498');
select * from customers;
INSERT INTO Orders (customer_id, order_date_time)
VALUES (1, '2014-09-10 09:47:00');
INSERT INTO Orders (customer_id, order_date_time)
VALUES (2, '2014-09-10 013:20:00');
INSERT INTO Orders (customer_id, order_date_time)
VALUES (1, '2014-09-10 09:47:00');

INSERT INTO Pizzas_Orders (order_id, pizza_id, quantity) 
VALUES (1, 1, 1);
INSERT INTO Pizzas_Orders (order_id, pizza_id, quantity) 
VALUES (1, 3, 1);

INSERT INTO Pizzas_Orders (order_id, pizza_id, quantity) 
VALUES (2, 2, 1);
INSERT INTO Pizzas_Orders (order_id, pizza_id, quantity) 
VALUES (2, 3, 2);

INSERT INTO Pizzas_Orders (order_id, pizza_id, quantity) 
VALUES (3, 3, 1);
INSERT INTO Pizzas_Orders (order_id, pizza_id, quantity) 
VALUES (3, 4, 1);

select 
	c.customer_name,
	c.phone_number,
	o.order_date_time,
	p.pizza_type,
    p.price,
    po.quantity
From
	Customers c
Join
	Orders o ON c.customer_id = o.customer_id
Join
    Pizzas_Orders po ON o.order_id = po.order_id
Join
	Pizzas p ON po.pizza_id = p.pizza_id;