SELECT TOP (1000) [order_id]
      ,[date]
      ,[PizzaKey]
  FROM [cwiczenia4_gr3].[dbo].[SalesCustomer]


  create unique clustered index IX_SalesCustomer
  ON [dbo].[SalesCustomer] ([OrderKey],[order_id],[date],[PizzaKey])