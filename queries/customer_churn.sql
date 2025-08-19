-- Customers who have not purchased in the last 6 months
SELECT 
    c.customer_id,
    c.name,
    MAX(o.order_date) AS last_order_date
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING julianday('now') - julianday(MAX(o.order_date)) > 180
   OR MAX(o.order_date) IS NULL  -- customers who never ordered
ORDER BY last_order_date;
