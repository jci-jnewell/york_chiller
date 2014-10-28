USE [YorkSupport]
GO

/****** Object:  View [dbo].[VIEW_CHILLER_RPT_CON_WTY]    Script Date: 10/28/2014 9:18:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VIEW_CHILLER_RPT_CON_WTY]
AS
SELECT 
	  SERIAL_NUM,
      CMS_MODEL_NBR,
      CMS_CONTRACT_NBR,
      [START_DATE],
      SHIP_DATE
      /* Missing YEAR, SECOND_LEVEL_NAME, SDWRTY, SDWRNM, EW_START_DATE  */
  FROM [YorkSupport].[dbo].[jumbo_york_assets]
GO

