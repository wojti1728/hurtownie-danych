SELECT 
	pizza_size,
	count(*)
FROM
	pizza_sales
WHERE
	LEFT(order_date, 7) = '2015-03' OR LEFT(order_date, 7) = '2015-02' 
GROUP BY 
	pizza_size;