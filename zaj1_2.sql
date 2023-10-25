WITH _not_pineapple_orders as (
SELECT distinct 
	[order_id]
	,[order_date]
from [dbo].[pizza_sales]
where left(order_date,7) = '2015-03' and pizza_ingredients NOT LIKE '%Pineapple%')

select STRING_AGG(order_id, ', ') as non_pineapple_orders, order_date from _not_pineapple_orders group by order_date