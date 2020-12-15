-- Task 1: Insert 3 rows into products table (consider horizontal and vertical insertions)
-- USE sql_store;
-- INSERT INTO products (name, quantity_in_stock, unit_price)
-- VALUES ('Name_1', 7, 70.0), ('Name_2', 8, 80.0), ('Name_3', 9, 90.0)
-- On the above query we omit the primary key.
-- When it is done, we can check the results in table.

-- The primary key can be omitted, while it can also be preserved as well.
-- INSERT INTO products (product_id, name, quantity_in_stock, unit_price)
-- VALUES (DEFAULT, 'name_1', 7, 70.0), (DEFAULT, 'name_2', 8, 80), (DEFAULT, 'name_3', 9, 90.0)

-- Task 2: CREATE new table and INSERT values in it
-- Target: columns involved include columns in invoices table.
-- client_id from clients (table) should also be included in the columns
-- Select the data that has payment (payment is not the null or missing values). 
USE sql_invoicing;
CREATE TABLE invoicing_archived
SELECT i.invoice_id, i.number, c.name AS client_name, i.invoice_total, i.payment_total,
		i.invoice_date, i.due_date, i.payment_date
FROM invoices i
JOIN clients c
ON i.client_id = c.client_id
WHERE payment_date IS  NOT NULL
-- Use SELECT ... as sub-query for the table created.



