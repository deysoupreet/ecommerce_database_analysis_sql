-- Products with Low Stock
SELECT 
    p.product_id,
    p.product_name,
    IFNULL(SUM(od.quantity), 0) AS total_ordered
FROM Products p
LEFT JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
HAVING total_ordered < 50
ORDER BY total_ordered ASC;

