/****** Script for SelectTopNRows command from SSMS  ******/
SELECT Score, count(*) as Total
  FROM [Reach].[dbo].[AnalyticsOutput] group by score;

SELECT Branch, count(*) as Total
  FROM [Reach].[dbo].[AnalyticsOutput] group by branch; 

SELECT Score, sum(noattempts) as Attempts, count(*) as 'Total PTSD'
  FROM [Reach].[dbo].[AnalyticsOutput] where PTSD = 1 group by score;