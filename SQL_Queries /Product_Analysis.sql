-- ==========================================
-- PRODUCT ANALYSIS
-- ==========================================

-- 1. Top Products by Revenue

WITH product_revenue AS
(
    SELECT p.product_id,
           p.product_name,
           p.category,
           SUM(p.price * oi.quantity) AS product_revenue
    FROM products p
    JOIN order_items oi
    ON p.product_id = oi.product_id
    GROUP BY p.product_id,
             p.product_name,
             p.category
)
SELECT *
FROM product_revenue
ORDER BY product_revenue DESC
LIMIT 10;
