/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[Color]
      ,[StandardCost]
      ,[ListPrice]
      ,[Size]
      ,[Weight]
      ,[ProductCategoryID]
      ,[ProductModelID]
      ,[SellStartDate]
      ,[SellEndDate]
      ,[DiscontinuedDate]
      ,[ThumbNailPhoto]
      ,[ThumbnailPhotoFileName]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorksLT2012].[SalesLT].[Product]

  select ProductID, Name, SellEndDate from saleslt.product
  where SellEndDate IS NULL

  select ProductID, Name, SellEndDate from saleslt.product
  where SellEndDate IS NOT NULL