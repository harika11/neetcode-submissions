SELECT name
FROM sales_person
WHERE sales_id NOT IN (
    SELECT sales_id
    FROM orders
    WHERE com_id = 1
);