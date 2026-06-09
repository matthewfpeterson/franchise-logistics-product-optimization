-- ====================================================================
-- ANALYTICAL INSIGHTS - FRANCHISE LOGISTICS & MENU VELOCITY
-- Objective: Extract actionable business logic from transformed views
-- ====================================================================

-- QUERY 1: Regional Logistics Latency 
SELECT 
    Store_State AS State,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    ROUND(AVG(Delivery_Lead_Time_Days), 2) AS Avg_Days_To_Customer    
FROM `retail_analytics.vw_franchise_delivery_matrix`
WHERE Store_State IS NOT NULL
GROUP BY Store_State
ORDER BY Total_Orders DESC;


-- QUERY 2: Menu Category Sales Velocity 
SELECT 
    Menu_Category,
    COUNT(DISTINCT Order_ID) AS Sales_Velocity
FROM `retail_analytics.vw_franchise_delivery_matrix`
WHERE Menu_Category IS NOT NULL
GROUP BY Menu_Category
ORDER BY Sales_Velocity DESC;
