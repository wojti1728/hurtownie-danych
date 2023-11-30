create view SalesCustomer
with schemabinding
as
select OrderKey, order_id, [date], dc.PizzaKey from [dbo].[FactsSales] fs
inner join [dbo].[DIMCustomers] dc on dc.PizzaKey = fs.PizzaKey