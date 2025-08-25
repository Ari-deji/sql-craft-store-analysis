
-- Create the customers table

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    city TEXT
);

-- Create the products table

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    price REAL NOT NULL
);

-- Create the orders table

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert data into customers

INSERT INTO customers (customer_id, first_name, last_name, city) VALUES
(1, 'Asha', 'Nantale', 'Kampala'),
(2, 'Brian', 'Okello', 'Gulu'),
(3, 'Catherine', 'Mutesi', 'Jinja'),
(4, 'David', 'Kato', 'Kampala');

-- Insert data into products

INSERT INTO products (product_id, product_name, price) VALUES

(1, 'Woven Basket', 35000),
(2, 'Beaded Necklace', 15000),
(3, 'Carved Wooden Mask', 55000),
(4, 'Barkcloth Wallet', 25000);

-- Insert data into orders

INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(1, 1, 2, 2, '2025-07-15'),
(2, 2, 1, 1, '2025-07-16'),
(3, 1, 1, 1, '2025-07-17'),
(4, 3, 4, 1, '2025-07-18'),
(5, 4, 3, 1, '2025-07-19'),
(6, 2, 2, 3, '2025-07-20'),
(7, 3, 1, 2, '2025-07-21');


