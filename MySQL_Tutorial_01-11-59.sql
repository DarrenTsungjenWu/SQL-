USE sql_store;
-- DISTINCT 
SELECT DISTINCT city, state 
FROM customers

-- Select special patterns
SELECT * 
FROM customers 
WHERE last_name REGEXP 'b[ru]'
-- WHERE last_name REGEXP '^MY|SE'
-- WHERE last_name REGEXP 'EY$' OR 'ON$'
-- WHERE first_name IN ('ELKA', 'AMBUR') -- WHERE first_name REGEXP 'ELKA|AMBUR'
-- WHERE NOT points > 1000 AND birth_date >= '1985-01-01' 

SELECT * FROM customers WHERE address LIKE '%trail%'  OR '%avenue%' 
SELECT * FROM customers WHERE phone LIKE '%9' 
-- WHERE address NOT LIKE '%trail'
-- WHERE NOT points BETWEEN 1000 AND 1500