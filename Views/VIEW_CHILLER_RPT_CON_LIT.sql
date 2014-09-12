USE [YorkSupport]
GO

/****** Object:  View [dbo].[VIEW_CHILLER_RPT_CON_LIT]    Script Date: 9/12/2014 2:55:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[VIEW_CHILLER_RPT_CON_LIT]
AS
WITH lit([fileid], [filename], [metatags], [keywords], [modelnum], [modelnums]) AS (
SELECT 
	[fileid],
	[filename], 
	[metatags], 
	[keywords], 
	CAST(LTRIM(RTRIM(LEFT(modelnums, CHARINDEX(',', modelnums + ',') - 1))) AS VARCHAR(256)) AS [modelnum],
    CAST(STUFF(modelnums, 1, CHARINDEX(',', modelnums + ','), '') AS VARCHAR(256)) AS [modelnums]
FROM CHILLER_LIT
UNION ALL
SELECT 
	[fileid],
	[filename], 
	[metatags], 
	[keywords], 
	CAST(LTRIM(RTRIM(LEFT(modelnums, CHARINDEX(',', modelnums + ',') - 1))) AS VARCHAR(256)) AS [modelnum],
    CAST(STUFF(modelnums, 1, CHARINDEX(',', modelnums + ','), '') AS VARCHAR(256)) AS [modelnums]
FROM lit
WHERE modelnums > ''
)

SELECT DISTINCT
	A.[SERIAL_NUM],
	A.[CMS_CONTRACT_NBR],
	L.[filename]
FROM lit AS L
INNER JOIN jumbo_york_assets AS A
	ON LEFT(A.CMS_MODEL_NBR, LEN(L.modelnum)) = L.modelnum


GO

