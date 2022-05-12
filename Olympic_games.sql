
SELECT  [ID]
       ,[Name] as 'Comepetitor Name' --Renamed column
	   ,CASE WHEN Sex='M' then 'MALE' else 'FEMALE' end as Sex  --better names for visual
	   ,[Age]
	   ,CASE WHEN [Age] < 18 then 'Under 18'
	         WHEN [Age] BETWEEN 18 and 25 then '18-25'
			 WHEN [Age] BETWEEN 25 and 30 then '25-30'
			 ELSE 'OVER 30' 
			 END AS 'Age Grouping'

	  ,Height
	  ,[Weight]
	  ,NOC as 'Nation Code'  --Full form
--	  ,CHARINDEX(' ',Games)-1 as 'Example 1'
--	  ,CHARINDEX(' ',REVERSE(Games))-1 as 'Example 2'
	  , LEFT(Games,CHARINDEX(' ',Games)-1 ) as 'Year'
	  ,RIGHT(Games,CHARINDEX(' ',REVERSE(Games))-1) as 'Season'
--	  ,Games
--	  ,[City] not important
	  ,[Sport]
	  ,[EVENT]
	  , CASE WHEN Medal='NA' Then 'NOT REGISTERED'
	         ELSE Medal end as Medal
	from [dbo].[athlete_events$]
	
