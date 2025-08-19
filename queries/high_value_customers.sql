-- Customers who spent more than 10,000
SELECT 
    c.customer_id,
    c.name,
    SUM(od.quantity * p.price) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.customer_id, c.name
HAVING total_spent > 10000
ORDER BY total_spent DESC;
