-- USE sql_store;
-- Practice "natural join"
-- SELECT * 
-- FROM orders
-- NATURAL JOIN customers

--  Task 1: OUTER JOIN on products + order_items table
-- SELECT p.product_id, p.name, oi.quantity
-- FROM products p
-- LEFT JOIN order_items oi
-- 	ON p.product_id = oi.product_id

-- Task 2: order, shipper, status
-- SELECT o.order_date, o.order_id, c.first_name, s.name AS shipper, os.name AS status
-- FROM orders o
-- LEFT JOIN shippers s
-- 	ON o.shipper_id = s.shipper_id
-- LEFT JOIN order_statuses os
-- 	ON o.status = os.order_status_id
-- LEFT JOIN customers c
-- 	ON o.customer_id = c.customer_id
-- ORDER BY order_date DESC

-- Task 3: payment join by whom, what date, how much and what payment method
-- USE sql_invoicing;
-- SELECT p.date, c.name, p.amount, pm.name AS payment_method
-- FROM payments p
-- LEFT JOIN clients c
-- 	ON p.client_id = c.client_id
-- LEFT JOIN payment_methods pm
-- 	ON p.payment_method = pm.payment_method_id

-- Task 4: Cross join across shippers and products table
-- Explicit form
USE sql_store;
-- SELECT * 
-- FROM shippers s
-- CROSS JOIN products p
-- Implicit form
-- SELECT * FROM shippers, products

-- Task 5: UNION - customer table, with new column "type" added
-- condition: points <= 2000 : Bronze; 2000 - 3000 : silver; > 3000 : Gold
-- SELECT * 
-- FROM customers c
-- UNION
SELECT c.customer_id, c.first_name, c.points, 'Bronze' AS type
FROM customers c WHERE c.points <= 2000
UNION 
SELECT c.customer_id, c.first_name, c.points, 'Silver' AS type
FROM customers c WHERE 2000 < c.points AND c.points <= 3000
-- FROM customer c WHERE c.points BETWEEN 2000 AND 3000
UNION 
SELECT c.customer_id, c.first_name, c.points, 'Gold' AS type
FROM customers c WHERE c.points > 3000
-- UNION
-- SELECT * FROM customers


