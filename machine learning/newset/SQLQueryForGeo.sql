/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DISTINCT
	   ABS(CAST([gaspro].[dbo].[MNOup].[Latitude] AS float)-CAST([gaspro].[dbo].[plutoup].[corx] AS float))As Lat
      ,ABS(CAST([gaspro].[dbo].[MNOup].[Longitude]AS float)-CAST([gaspro].[dbo].[plutoup].[cory] AS float))As Lon
	  ,[gaspro].[dbo].[MNOup].[GI_BA_S_CP]
      ,[GI_BA_S_STREET]
      ,[GI_BA_S_ARTERY]
      ,[GI_BA_S_HOUSE_NO]
	  ,[gaspro].[dbo].[plutoup].[Address]
	  ,[gaspro].[dbo].[MNOup].Latitude
	  ,[gaspro].[dbo].[MNOup].Longitude
  FROM [gaspro].[dbo].[MNOup],[gaspro].[dbo].[plutoup]

WHERE ABS(CAST([gaspro].[dbo].[MNOup].[Latitude] AS float)-CAST([gaspro].[dbo].[plutoup].[corx] AS float))<0.0005 AND 
	  ABS(CAST([gaspro].[dbo].[MNOup].[Longitude]AS float)-CAST([gaspro].[dbo].[plutoup].[cory] AS float))<0.0005
