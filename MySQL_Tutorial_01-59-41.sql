-- USE sql_store;

-- SELECT * FROM orders WHERE shipped_date IS NULL
-- SELECT *, quantity*unit_price AS total_price
-- FROM order_items
-- WHERE order_id = 2 ORDER BY quantity * unit_price DESC

-- SELECT * FROM customers ORDER BY points DESC LIMIT 3

-- Combine order_items with products table showing order_id, product_id, unit_price and quantity.
-- * -- To combine, firstly select everything
-- SELECT order_id, o.product_id, o.unit_price, quantity -- then final simplified results after combined
-- Need to notice if columnn names goes duplicated across two combined tables. If so, assign which to select.
-- FROM order_items o -- Use o and p to replace the table names for simplicity queries
-- JOIN products p ON o.product_id = p.product_id

-- Advanced combination
-- Task statement: 1. join payment with payment method table
-- 2. matched by/based on client_id, payment_method
-- 3. Key indicators to show: client's name and payment method and some order info.
-- USE sql_invoicing; 
-- SELECT p.date, p.amount, p_m.name AS payment_method_name, c.name AS client_name
-- FROM payments p
-- JOIN payment_methods p_m
-- 	ON p.payment_method = p_m.payment_method_id
-- JOIN clients c
-- 	ON p.client_id = c.client_id

-- Task statement: join products with order items table
-- The key to involve is products table
-- Must show missing value where product_id in table products did not always equal that in order items.
USE sql_store;
SELECT p.product_id, p.name, o.quantity
FROM products p 
LEFT JOIN order_items o
	ON p.product_id = o.product_id
    