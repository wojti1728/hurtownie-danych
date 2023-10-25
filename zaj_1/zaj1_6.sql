SELECT 
	pizza_name,
	pizza_category,
	count(*) as popularity
FROM
	pizza_sales
WHERE
	LEFT(order_date, 7) = '2015-01'
GROUP BY 
	pizza_name, pizza_category