USE PizzaRestaurant;

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(255) NOT NULL,
phone_number VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
order_date_time DATETIME NOT NULL,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) 
);

DROP TABLE IF EXISTS Pizzas;
CREATE TABLE Pizzas (
pizza_id INT AUTO_INCREMENT PRIMARY KEY,
pizza_type VARCHAR(255) NOT NULL,
price DECIMAL(5, 2) NOT NULL
);

DROP TABLE IF EXISTS Customer_Orders;
CREATE TABLE Customer_Orders(
customer_id INT NOT NULL,
order_id INT NOT NULL,
PRIMARY KEY (customer_id, order_id),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

DROP TABLE IF EXISTS Pizzas_Orders;
CREATE TABLE Pizzas_Orders (
order_id INT NOT NULL,
pizza_id INT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY (order_id, pizza_id),
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (pizza_id) REFERENCES Pizzas(pizza_id)
);

