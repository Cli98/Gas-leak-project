/****** Script for SelectTopNRows command from SSMS  ******/

SELECT DISTINCT TOP 41919
ABS(CAST([gaspro].[dbo].[BOPA_MN_O_Address_final].[Latitude] AS float)-CAST([gaspro].[dbo].[PLUTO_final].[Latitude] AS float)) AS lat,
ABS(CAST([gaspro].[dbo].[BOPA_MN_O_Address_final].[Longitude] AS float)-CAST([gaspro].[dbo].[PLUTO_final].[Longitude] AS float)) AS lon,
[gaspro].[dbo].[BOPA_MN_O_Address_final].[GI_BA_S_CP]
      ,[GI_BA_S_STREET]
      ,[GI_BA_S_ARTERY]
      ,[GI_BA_S_HOUSE_NO]
	  ,[gaspro].[dbo].[PLUTO_final].[Address]
	  ,[gaspro].[dbo].[BOPA_MN_O_Address_final].Latitude
	  ,[gaspro].[dbo].[BOPA_MN_O_Address_final].Longitude

  FROM [gaspro].[dbo].[BOPA_MN_O_Address_final],[gaspro].[dbo].[PLUTO_final]
WHERE
CAST([gaspro].[dbo].[BOPA_MN_O_Address_final].[Latitude] AS float)-CAST([gaspro].[dbo].[PLUTO_final].[Latitude] AS float)<0.0002 AND
CAST([gaspro].[dbo].[BOPA_MN_O_Address_final].[Longitude] AS float)-CAST([gaspro].[dbo].[PLUTO_final].[Longitude] AS float)<0.0002

