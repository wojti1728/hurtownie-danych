SELECT 
	pizza_name,
	pizza_category,
	SUM(quantity) as total_quantity
FROM
	pizza_sales
WHERE
	order_date = '2015-01-01'
GROUP BY 
	pizza_name, pizza_category
ORDER BY 
	total_quantity DESC
	