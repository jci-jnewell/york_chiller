USE [YorkSupport]
GO

/****** Object:  View [dbo].[VIEW_CHILLER_RPT_CON_WTY_CLAIM_COMMENT]    Script Date: 10/28/2014 9:18:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[VIEW_CHILLER_RPT_CON_WTY_CLAIM_COMMENT]
AS
SELECT 
	[SD_NBR],
	[DATE_OF_ENTRY],
	[TIME_STAMP],
	[USER_ID],
	[SEQUENCE_NBR],
	[COMMENT_SOURCE],
	[COMMENT],
	[SD_TRANSMISSION_STATUS]
FROM [YorkSupport].[dbo].[SD_SDD005]


GO

