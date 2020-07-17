SELECT *
FROM orders
LIMIT 10;

SELECT DISTINCT order_date
FROM orders
ORDER BY order_date;

SELECT special_instructions
FROM orders
LIMIT 20;

SELECT special_instructions
FROM orders
WHERE special_instructions is NOT NULL
LIMIT 20;

SELECT special_instructions
FROM orders
WHERE special_instructions is NOT NULL
ORDER BY special_instructions 
LIMIT 20;

SELECT special_instructions
FROM orders
WHERE special_instructions LIKE "%sauce%"
ORDER BY special_instructions ;

SELECT special_instructions
FROM orders
WHERE special_instructions LIKE "%door%"
ORDER BY special_instructions ;

SELECT special_instructions
FROM orders
WHERE special_instructions LIKE "%box%"
ORDER BY special_instructions ;

SELECT id AS '#',special_instructions AS 'Notes'
FROM orders
WHERE special_instructions LIKE "%box%"
ORDER BY special_instructions ;
