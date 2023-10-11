-- DIMENSÃO PEDIDOS
SELECT TOP (1000) [OrderKey]
      ,[CustomerKey]
      ,[StoreKey]
      ,[Order Date]
      ,[Delivery Date]
      ,[Currency Code]
  FROM [Contoso 1M].[Data].[Orders]
   -------------------------------------------

  -- DIMENSÃO LOJAS
  SELECT TOP (1000) [StoreKey]
      ,[Store Code]
      ,[Country]
      ,[State]
      ,[Name]
      ,[Square Meters]
      ,[Open Date]
      ,[Close Date]
      ,[Status]
  FROM [Contoso 1M].[Data].[Store]
    -------------------------------------------

  -- DIMENSÃO PRODUTO
  SELECT TOP (1000) [ProductKey]
      ,[Product Code]
      ,[Product Name]
      ,[Manufacturer]
      ,[Brand]
      ,[Color]
      ,[Weight Unit Measure]
      ,[Weight]
      ,[Unit Cost]
      ,[Unit Price]
      ,[Subcategory Code]
      ,[Subcategory]
      ,[Category Code]
      ,[Category]
  FROM [Contoso 1M].[Data].[Product]
    -------------------------------------------

  -- FATO
  SELECT TOP (5000) [OrderKey]
      ,[Line Number]
      ,[ProductKey]
      ,[Quantity]
      ,[Unit Price]
      ,[Net Price]
      ,[Unit Cost]
  FROM [Contoso 1M].[Data].[OrderRows]
    -------------------------------------------

  -- DIMENSÃO GEOLOCALIZAÇÃO
  SELECT TOP (1000) [GeoLocationKey]
      ,[CountryCode]
      ,[Country]
      ,[StateCode]
      ,[State]
      ,[NumCustomers]
  FROM [Contoso 1M].[Data].[GeoLocations]
  -------------------------------------------

  -- DIMENSÃO DATA
  SELECT TOP (1000) [Date]
      ,[DateKey]
      ,[Year]
      ,[Year Quarter]
      ,[Year Quarter Number]
      ,[Quarter]
      ,[Year Month]
      ,[Year Month Short]
      ,[Year Month Number]
      ,[Month]
      ,[Month Short]
      ,[Month Number]
      ,[Day of Week]
      ,[Day of Week Short]
      ,[Day of Week Number]
      ,[Working Day]
      ,[Working Day Number]
  FROM [Contoso 1M].[Data].[Date]
  -------------------------------------------

   -- DIMENSÃO CONSUMIDOR
  SELECT TOP (1000) [CustomerKey]
      ,[Gender]
      ,[Title]
      ,[GivenName]
      ,[MiddleInitial]
      ,[Surname]
      ,[StreetAddress]
      ,[City]
      ,[State]
      ,[StateFull]
      ,[ZipCode]
      ,[Country]
      ,[CountryFull]
      ,[Birthday]
      ,[Age]
      ,[Occupation]
      ,[Company]
      ,[Vehicle]
      ,[Latitude]
      ,[Longitude]
      ,[Continent]
  FROM [Contoso 1M].[Data].[Customer]
    -------------------------------------------

-- ??
  SELECT TOP (1000) [Date]
      ,[FromCurrency]
      ,[ToCurrency]
      ,[Exchange]
  FROM [Contoso 1M].[Data].[CurrencyExchange]