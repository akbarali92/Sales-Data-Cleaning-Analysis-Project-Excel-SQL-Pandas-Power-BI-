CREATE DATABASE sales_data;
USE sales_data;

#1: Revenue by City.
SELECT customer_city,
SUM(quantity*price*(1-discount)) AS revenue
FROM sales_data
GROUP BY customer_city
ORDER BY revenue DESC;


#2: Top Customers.
SELECT customer_id,
SUM(quantity*price*(1-discount)) AS revenue
FROM sales_data
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 10;