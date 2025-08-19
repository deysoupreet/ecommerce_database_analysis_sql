-- Top Products by Revenue
SELECT 
    p.product_id,
    p.product_name,
    SUM(od.quantity * p.price) AS total_sales
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sales DESC
LIMIT 10;
