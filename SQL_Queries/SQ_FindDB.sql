/****** Script for Select - looking for [Id]  command from SSMS  ******/
SELECT [Id]
      ,[DataConnectorId]
      ,[Name]
      ,[Description]
  FROM [Dundas Dashboard Dundas DataStore].[dbo].[NativeStructure]
  WHERE "DataConnectorID" LIKE '%FirstDigitsofDataConnector%'
  
