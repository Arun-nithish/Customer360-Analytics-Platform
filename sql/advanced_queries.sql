
-- Revenue by Region
SELECT region,SUM(sales) revenue FROM orders GROUP BY region;

-- Top Customers
SELECT customer_id,SUM(sales) revenue FROM orders GROUP BY customer_id ORDER BY revenue DESC LIMIT 10;

-- Monthly Revenue
SELECT DATE_TRUNC('month',order_date),SUM(sales) FROM orders GROUP BY 1;

-- Category Performance
SELECT category,SUM(profit) profit FROM orders GROUP BY category;

-- Window Function Example
SELECT customer_id,sales,
RANK() OVER(ORDER BY sales DESC) sales_rank
FROM orders;

-- CTE Example
WITH regional AS (
SELECT region,SUM(sales) revenue FROM orders GROUP BY region)
SELECT * FROM regional;
