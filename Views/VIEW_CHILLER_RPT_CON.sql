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

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2) )"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 298
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 336
               Bottom = 135
               Right = 638
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CHILLER_RPT_CON'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CHILLER_RPT_CON'
GO

