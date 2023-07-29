
SELECT 
    *
FROM
    pizza_sales;
   /*QUERY TO FIND TOTAL REVENUE*/
 SELECT
 SUM(total_price) AS total_revenue
 FROM 
 pizza_sales;
 /* QUERY TO FIND AVERAGE ORDER VALUE*/
 SELECT 
 SUM(total_price) /COUNT(DISTINCT order_id) AS average_order_value
 from
 pizza_sales;
 /*QUERY TO FIND TOTAL PIZZAS SOLD*/
 SELECT 
 COUNT(quantity) AS	total_pizza
 FROM
 pizza_sales;
 /*QUERY TO FIND TOTAL ORDERS*/
 SELECT 
 COUNT(DISTINCT order_id) AS total_orders
 FROM
 pizza_sales;
 /*QUERY TO FIND AVERAGE PIZZAS PER ORDER*/
 SELECT
 COUNT(quantity)/ COUNT(DISTINCT order_id) AS average_pizza_per_order
 FROM
 pizza_sales;
 /*QUERY TO FIND BEST FIVE PIZZAS */
 SELECT 
 pizza_name,
 SUM(quantity) AS pizzas_sold
 FROM
 pizza_sales
 GROUP BY pizza_name
 ORDER BY pizzas_sold DESC
 LIMIT 5;
/*QUERY TO FIND WORST FIVE PIZZAS */
 SELECT 
 pizza_name,
 SUM(quantity) AS pizzas_sold
 FROM
 pizza_sales
 GROUP BY pizza_name
 ORDER BY pizzas_sold 
 LIMIT 5;
 /*QUERY TO FIND HOURS WITH MAXIMUM ORDERS IN A DAY*/
 SELECT HOUR(order_time) AS max_order_time,
 COUNT(DISTINCT order_id) AS no_of_orders
 FROM
 pizza_sales
 GROUP BY  HOUR(order_time)
 ORDER BY no_of_orders DESC;
 /*QUERY TO FIND DAYSOF WEEK WITH MAXIMUM ORDERS IN A MONTH*/
 SELECT DAY(order_date) AS max_order_day,
 COUNT(DISTINCT order_id) AS no_of_orders
 FROM
 pizza_sales
 GROUP BY  DAY(order_date)
 ORDER BY no_of_orders DESC;
 /*QUERY TO FIND PIZZA CATEGORY WITH MAXIMUM ORDERS */
 SELECT pizza_category,
 COUNT(DISTINCT order_id) AS no_of_orders
 FROM
 pizza_sales
 GROUP BY  pizza_category
 ORDER BY no_of_orders DESC;
 /*QUERY TO FIND PIZZA SIZE WITH MAXIMUM ORDERS */
 SELECT pizza_size,
 COUNT(DISTINCT order_id) AS no_of_orders
 FROM
 pizza_sales
 GROUP BY  pizza_size
 ORDER BY no_of_orders DESC;