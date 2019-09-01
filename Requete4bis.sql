/****** Script de la commande SelectTopNRows à partir de SSMS  ******/
SELECT TOP (1000) [identifiant]
    ,[client]
    ,[tarif]
    ,[date]
FROM [AJC].[dbo].[achat]