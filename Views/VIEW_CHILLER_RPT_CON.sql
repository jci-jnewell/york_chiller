USE [YorkSupport]
GO

/****** Object:  View [dbo].[VIEW_CHILLER_RPT_CON]    Script Date: 10/28/2014 9:17:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[VIEW_CHILLER_RPT_CON]
AS
SELECT DISTINCT
	a.[SERIAL_NUM],
	b.[CONTRACT_NUMBER],
	b.[CONTRACT_NAME],
	b.DFF1_I_ESTIMATED_COMP_DATE,
	b.DFF1_S_RENEWAL_DATE,
	b.DFF2_WARRANTY_START_DATE,
	b.DFF2_WARRANTY_PERIOD_IN_MONTHS,
	b.DFF2_WARRANTY_END_DATE,
	b.DFF3_TRANSFER_DATE,
	b.DFF4_PSA_IS_PC_FLAG,
	b.DFF4_MULTI_YR_PSA_FLAG,
	b.DFF4_MULTI_YR_CUR_YR_NUMBER,
	b.DFF4_MULTI_YR_TERM_IN_YEARS,
	b.DFF6_WORK_SITE_STREET_1,
	b.DFF6_WORK_SITE_STREET_2,
	b.DFF6_WORK_SITE_CITY,
	b.DFF6_WORK_SITE_STATE,
	b.DFF6_WORK_SITE_ZIP,
	b.DFF6_WORK_SITE_COUNTRY,
	b.DFF7_PREVIOUS_CONTRACT_NUMBER,
	b.DFF7_ASSOCIATED_CONTRACT_NUM,
	b.DFF8_I_PRIME_CONTRACTOR_NAME,
	b.PA_PROJECT_NAME,
	b.CBS_CONTRACT_STATUS,
	b.CONTRACT_CLOSED_DATE,
	b.MECH_CONTRACTOR_NAME,
	b.EQUIP_DEF_SHIP_INSTRUCTIONS,
	b.BUSINESS_LINE
FROM dbo.[VIEW_CHILLER_SERIAL_NUM] AS a
LEFT OUTER JOIN dbo.cbs_contract AS b
	ON a.[CMS_CONTRACT_NBR] = b.[CONTRACT_NUMBER]



GO
