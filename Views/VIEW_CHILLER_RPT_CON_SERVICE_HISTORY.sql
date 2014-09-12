USE [YorkSupport]
GO

/****** Object:  View [dbo].[VIEW_CHILLER_RPT_CON_SERVICE_HISTORY]    Script Date: 9/12/2014 2:55:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO









CREATE VIEW [dbo].[VIEW_CHILLER_RPT_CON_SERVICE_HISTORY]
AS
SELECT 
	a.[ROW_ID],
	a.[SERIAL_NUM],
	b.[LAST_UPD],
	b.[LAST_UPD_BY],
	--c.[STATUS],
	'N/A' AS [STATUS],
	a.[DESC_TEXT],
	a.[PROD_ID],
	a.[ROOT_ASSET_ID],
	a.[X_EQUIPMENT_CONTRACT_NUMBER],
	a.[X_MODEL]
FROM [YorkSupport].[dbo].[s_asset] AS a
INNER JOIN [YorkSupport].[dbo].[s_srv_req] AS b
	ON b.ASSET_ID = a.ROW_ID
--INNER JOIN [YorkSupport].[dbo].[cx_aeh] AS c
--	ON c.SR_NUM = b.SR_NUM
WHERE a.[SERIAL_NUM] IS NOT NULL





GO

