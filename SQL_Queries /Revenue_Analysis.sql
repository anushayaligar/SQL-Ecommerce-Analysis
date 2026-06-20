
-- ==========================================
-- 1. Top Customers by Revenue
-- ==========================================

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
-- 2. Revenue Contribution Percentage
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
FROM customer_revenue;


-- ==========================================
-- 3. Customer Revenue Ranking
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
-- 4. Running Revenue Total
-- ==========================================

WITH daily_revenue AS
(
    SELECT order_date,
           SUM(total_amount) AS revenue
    FROM orders
    GROUP BY order_date
)
SELECT order_date,
       revenue,
       SUM(revenue) OVER(
           ORDER BY order_date
       ) AS running_total
FROM daily_revenue;
