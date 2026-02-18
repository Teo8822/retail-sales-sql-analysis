-- Total Revenue
SELECT SUM(price * quantity) AS total_revenue
FROM sales_data;

-- Revenue by Category
SELECT category,
       SUM(price * quantity) AS revenue
FROM sales_data
GROUP BY category
ORDER BY revenue DESC;

-- Average Order Value
SELECT AVG(price * quantity) AS avg_order_value
FROM sales_data;

-- Customer Purchase Frequency
SELECT customer_id,
       COUNT(order_id) AS total_orders
FROM sales_data
GROUP BY customer_id
ORDER BY total_orders DESC;
