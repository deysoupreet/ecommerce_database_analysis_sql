-- Revenue per Customer
SELECT 
    c.customer_id,
    c.name,
    SUM(od.quantity * p.price) AS total_spent,
    COUNT(DISTINCT o.order_id) AS order_count,
    MAX(o.order_date) AS last_order_date
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;

