SELECT 
    c.customer_state AS State,
    COUNT(DISTINCT o.order_id) AS Total_Orders,
    ROUND(AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)), 2) AS Avg_Days_To_Customer
FROM olist_orders_dataset o
INNER JOIN olist_customers_dataset c 
    ON o.customer_id = c.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY Avg_Days_To_Customer DESC;
