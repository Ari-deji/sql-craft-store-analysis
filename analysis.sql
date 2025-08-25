-- Assignment questions


-- Basic retrieval (Q1)

SELECT first_name ||' '|| last_name AS full_name, city FROM customers;

-- Filtering Data (Q2)

SELECT product_name FROM products WHERE price>=30000;

SELECT product_name, price FROM products WHERE price>=30000;

-- Aggregation of orders (Q3)

-- First query to return orders by customer

SELECT first_name, last_name, COUNT(order_id)
   ...> FROM customers
   ...> JOIN orders ON customers.customer_id = orders.customer_id
   ...> GROUP BY customers.customer_id;

-- second query to return the total number of orders

SELECT COUNT(order_id) AS total_orders   
   ...> FROM orders;

-- Joining tables (Q4)

SELECT  orders.order_id, customers.first_name, products.product_name
   ...> FROM orders 
   ...> JOIN customers ON orders.customer_id = customers.customer_id           
   ...> JOIN products ON orders.product_id = products.product_id;


-- Grouping and Aggregating (Q5)

SELECT first_name, COUNT(order_id)
   ...> FROM customers 
   ...> JOIN orders ON customers.customer_id = orders.customer_id
   ...> GROUP BY customers.customer_id;


-- Calculation and Aliasing

SELECT orders.order_id, products.product_name, orders.quantity * products.price AS total_price
   ...> FROM orders
   ...> JOIN products ON orders.product_id = products.product_id;


-- Complex JOIN & Ordering

SELECT first_name, last_name, SUM(quantity *price) AS total_spent
   ...> FROM customers
   ...> JOIN orders ON customers.customer_id = orders.customer_id
   ...> JOIN products ON orders.product_id = products.product_id
   ...> GROUP BY customers.customer_id
   ...> ORDER BY total_spent DESC;


