SELECT a.city_name, pr.product_name, ROUND(SUM(ii.line_total_price), 2) AS tot
FROM city a, customer cu, invoice i, invoice_item ii, product pr 
WHERE a.id = cu.city_id AND cu.id = i.customer_id AND i.id = ii.invoice_id AND ii.product_id = pr.id 
GROUP BY ci.city_name, pr.product_name 
ORDER BY tot DESC, a.city_name, pr.product_name 
