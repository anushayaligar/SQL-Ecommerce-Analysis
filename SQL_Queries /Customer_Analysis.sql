-- ==========================================
-- CUSTOMER ANALYSIS
-- ==========================================

-- 1. Top Customers by Revenue

WITH customer_revenue AS
(
    SELECT customer_id,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id,
       total_revenue
FROM customer_revenue
ORDER BY total_revenue DESC
LIMIT 10;

-- ==========================================
-- 2. Repeat Customers
-- ==========================================

WITH customer_summary AS
(
    SELECT customer_id,
           COUNT(order_id) AS total_orders,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_summary
WHERE total_orders > 1;

-- ==========================================
-- 3. Customers Above Average Revenue
-- ==========================================

WITH customer_revenue AS
(
    SELECT customer_id,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
),
avg_revenue AS
(
    SELECT AVG(total_revenue) AS avg_customer_revenue
    FROM customer_revenue
)
SELECT cr.*
FROM customer_revenue cr
CROSS JOIN avg_revenue ar
WHERE cr.total_revenue > ar.avg_customer_revenue;

-- ==========================================
-- 4. Customer Revenue Contribution %
-- ==========================================

WITH customer_revenue AS
(
    SELECT customer_id,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id,
       total_revenue,
       ROUND(
           100 * total_revenue /
           SUM(total_revenue) OVER(),
           2
       ) AS revenue_percentage
FROM customer_revenue
ORDER BY revenue_percentage DESC;

-- ==========================================
-- 5. Customer Revenue Ranking
-- ==========================================

WITH customer_revenue AS
(
    SELECT customer_id,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id,
       total_revenue,
       RANK() OVER(
           ORDER BY total_revenue DESC
       ) AS customer_rank
FROM customer_revenue;

-- ==========================================
-- 6. Customer Segmentation
-- ==========================================

WITH customer_revenue AS
(
    SELECT customer_id,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id,
       total_revenue,
       NTILE(4) OVER(
           ORDER BY total_revenue DESC
       ) AS customer_segment
FROM customer_revenue;
