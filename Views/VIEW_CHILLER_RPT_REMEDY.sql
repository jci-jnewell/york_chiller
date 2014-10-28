USE [YorkSupport]
GO

/****** Object:  View [dbo].[VIEW_CHILLER_RPT_REMEDY]    Script Date: 10/28/2014 9:18:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VIEW_CHILLER_RPT_REMEDY]
AS
SELECT 
	[Case ID],
    [Login],
    [Individual],
    [Create_Date],
    [Name],
    [Type],
    [Item],
    [Status],
    [Description],
    [Work_Log]
 FROM [YorkSupport].[dbo].[remedy]
GO

