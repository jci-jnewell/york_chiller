USE [YorkSupport]
GO

/****** Object:  View [dbo].[VIEW_CHILLER_SERIAL_NUM]    Script Date: 10/28/2014 9:19:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VIEW_CHILLER_SERIAL_NUM] WITH SCHEMABINDING
AS
SELECT 
	CMS_CONTRACT_NBR,
	SERIAL_NUM, 
	COUNT_BIG(*) AS DETAIL_COUNT
FROM dbo.jumbo_york_assets
WHERE LEN(SERIAL_NUM) > 0 AND LEN(CMS_CONTRACT_NBR) > 0
GROUP BY 
	SERIAL_NUM, CMS_CONTRACT_NBR

GO

