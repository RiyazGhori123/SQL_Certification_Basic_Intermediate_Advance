SELECT a.country_name, count(*), AVG(d.total_price)
FROM country a, city b, customer c, invoice d
WHERE a.id = b.country_id AND b.id = c.city_id AND c.id = d.customer_id
GROUP BY a.country name
HAVING AVG(d.total_price) > (SELECT AVG(total price))
