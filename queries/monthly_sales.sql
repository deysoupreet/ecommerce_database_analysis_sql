-- Monthly Sales Trend
SELECT 
    strftime('%Y-%m', o.order_date) AS month,
    SUM(od.quantity * p.price) AS monthly_sales
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY month
ORDER BY month;
