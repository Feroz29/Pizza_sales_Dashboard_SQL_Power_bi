SELECT * FROM pizza_sales;
DESC pizza_sales;
select sum(total_price)/count(distinct order_id) as Avg_order_value from pizza_sales;
select sum(quantity) as Total_pizza_sold from pizza_sales;
select count(distinct order_id) as Total_orders from pizza_sales;
select sum(quantity)/count(distinct order_id) as Avg_Pizza_sold_per_order from pizza_sales;
select dayname( order_date) as order_day,count(distinct order_id) as Total_orders
from pizza_sales
group by dayname(order_date);
SELECT DATE_FORMAT(order_date, '%M') AS Month_name, COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY DATE_FORMAT(order_date, '%M')
ORDER BY FIELD(Month_name, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');

