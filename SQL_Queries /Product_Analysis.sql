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

-- ==========================================
-- 2. Products Above Average Revenue
-- ==========================================

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
),
avg_product_revenue AS
(
    SELECT AVG(product_revenue) AS avg_revenue
    FROM product_revenue
)
SELECT pr.*
FROM product_revenue pr
CROSS JOIN avg_product_revenue apr
WHERE pr.product_revenue > apr.avg_revenue;

-- ==========================================
-- 3. Product Revenue Ranking
-- ==========================================

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
SELECT product_id,
       product_name,
       category,
       product_revenue,
       RANK() OVER(
           ORDER BY product_revenue DESC
       ) AS product_rank
FROM product_revenue;

-- ==========================================
-- 4. Top Product Per Category
-- ==========================================

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
),
product_rank AS
(
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY category
               ORDER BY product_revenue DESC
           ) AS category_rank
    FROM product_revenue
)
SELECT product_id,
       product_name,
       category,
       product_revenue
FROM product_rank
WHERE category_rank = 1;

-- ==========================================
-- 5. Category Revenue Analysis
-- ==========================================

WITH category_revenue AS
(
    SELECT p.category,
           SUM(p.price * oi.quantity) AS total_revenue
    FROM products p
    JOIN order_items oi
    ON p.product_id = oi.product_id
    GROUP BY p.category
)
SELECT *
FROM category_revenue
ORDER BY total_revenue DESC;
