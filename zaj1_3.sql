WITH _february_orders as(
	SELECT order_id, total_price
	FROM pizza_sales
	WHERE order_date LIKE '2015-02%'
	)


select top 10 order_id, sum(total_price) as order_price, rank() over( order by sum(total_price) desc) price_rank from _february_orders 
group by order_id