SELECT 
	COUNT(*) AS order_count,
	order_date,
	datepart(hour, order_time) AS hour
FROM
	pizza_sales
WHERE
	order_date = '2015-01-01'
GROUP BY
	datepart(hour, order_time), order_date
ORDER BY
hour

