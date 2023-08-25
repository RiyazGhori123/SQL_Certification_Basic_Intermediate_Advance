SELECT customer_name, CAST(SUM(total_price) AS DECIMAL(20,6) AS amount
FROM customer c
INNER JOIN invoice i 
ON c.id = i.customer_id 
WHERE amount < 0.25*(SELECT AVG(total_price) FROM i)
ORDER BY amount DESC
