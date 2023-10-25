WITH order_data AS (
	SELECT
		order_id,
		sum(total_price) sum_total,
		MONTH(order_date) as order_month
	FROM
	pizza_sales
	group by order_id, order_date
	)
, monthly_averages AS (
	SELECT 
		order_month,
		AVG(sum_total) as average_price
	FROM	
		order_data
	GROUP BY	
		order_month
)

SELECT distinct
	od.order_id,
	od.sum_total,
	od.order_month,
	avg(ma.average_price),
	ps.order_date

FROM
order_data od
JOIN
	monthly_averages ma
ON
	od.order_month = ma.order_month
JOIN 
	pizza_sales ps
ON  od.order_id = ps.order_id
group BY
	od.order_id, od.sum_total, od.order_month, ps.order_date