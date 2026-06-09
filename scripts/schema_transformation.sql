-- ====================================================================
-- RETAIL DATA ARCHITECTURE - OLIST TRANSFORMATION & SCHEMA STRATEGY
-- Objective: Join and flatten products, orders, and customer tables 
-- Target Stakeholders: Store Analytics (Operations & Finance)
-- ====================================================================

CREATE VIEW `retail_analytics.vw_franchise_delivery_matrix` AS
WITH OrderMetrics AS (
    SELECT 
        o.order_id AS Order_ID,
        o.customer_id AS Customer_ID,
        oi.product_id AS Flavor_ID,
        oi.price AS Product_Revenue,
        -- Calculate explicit shipping latencies 
        DATEDIFF(day, o.order_purchase_timestamp, o.order_delivered_customer_date) AS Delivery_Lead_Time_Days
    FROM `cloud_warehouse.raw_olist_orders` o
    INNER JOIN `cloud_warehouse.raw_olist_order_items` oi ON o.order_id = oi.order_id
    WHERE o.order_status = 'delivered'
      AND o.order_delivered_customer_date IS NOT NULL
      AND o.order_purchase_timestamp IS NOT NULL
)
SELECT 
    om.Order_ID,
    p.product_category_name AS Menu_Category,
    c.customer_state AS Store_State,
    om.Delivery_Lead_Time_Days
FROM OrderMetrics om
LEFT JOIN `cloud_warehouse.raw_olist_products` p ON om.Flavor_ID = p.product_id
LEFT JOIN `cloud_warehouse.raw_olist_customers` c ON om.Customer_ID = c.customer_id;
