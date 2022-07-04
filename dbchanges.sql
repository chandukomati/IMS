
--drop procedure aie.SP_UPDATE_WHARFAGE_RATE_ENQUIRY_WISE_OLD
--drop procedure aie.SP_GET_MATERIAL_COST_DATA_VER2
--drop procedure aie.SP_GET_WELD_CONSUMABLES_SUMMARY_SHEET_V2
--drop procedure aie.SP_GET_BOM_WELD_KG_SUMMARY_SHEET_VER_2
--drop procedure aie.SP_GET_BOM_WELD_KG_SUMMARY_SHEET_2
--drop proc aie.SP_GET_LOGISTIC_PARTB_CALCULATION_BKP
--drop proc aie.SP_GET_MATERIAL_DETAILS_BY_ENQUIRY_NO2


drop table aie.tblWEPType_Backup_20210327
drop table aie.tblFormula_backup_20210327
drop table aie.tblCustomDutyMaster
drop table aie.tblPortClearanceMaster
drop table aie.tblCurrencyMaster


GO
alter table aie.tblNozzleForgeData add MOC nvarchar(100) null
GO
ALTER TABLE [AIE].[tblInternals] ADD Remarks nvarchar(MAX)
GO
ALTER TABLE [AIE].[tblExternals] ADD Remarks nvarchar(MAX)
GO
ALTER TABLE [AIE].[tblBOM] ADD SFTotal float
GO
ALTER TABLE [AIE].[tblEquipmentThicknessDetail] ADD ParentId INT
ALTER TABLE [AIE].tblEquipmentThickness ADD PrevRevComponent nvarchar(30)
ALTER TABLE AIE.tblNLPOutputEst ADD NozzleOverlayID Float
ALTER TABLE AIE.tblNLPOutputEst ADD NozzleOverlayBase Float
ALTER TABLE AIE.tblNLPOutputEst ADD NozzleOverlayGF Float
ALTER TABLE [AIE].[tblNozzleThickness] ADD OverlayMaterial nvarchar(200)
ALTER TABLE [AIE].[tblNozzleThickness] ADD OverlayType nvarchar(30)
ALTER TABLE [AIE].tblNLPOutputEst ADD NoofGussets bit DEFAULT 0 NOT NULL
ALTER TABLE [AIE].tblInternals ADD FinishedUnitWeight float
ALTER TABLE [AIE].tblInternals ADD FinishedTotalWeight float
ALTER TABLE [AIE].tblExternals ADD FinishedUnitWeight float
ALTER TABLE [AIE].tblExternals ADD FinishedTotalWeight float
ALTER TABLE AIE.tblMainSupportType ADD Remarks nvarchar(MAX)
GO
alter table aie.tblTrxCostSheetDetails add Anchor_Currency nvarchar(100) null
GO
alter table aie.tblTrxCostSheetDetails add Anchor_CurrencyVal float null
GO
GO
ALTER TABLE [AIE].[tblWeldInputSpecificationMaster]	ADD [TemplateId] [int] NULL
GO
alter table aie.tblWeldingInputWCPressureWeld alter column SAWFlux nvarchar(max)
GO
GO
ALTER TABLE aie.tblWCFactor_Log	ADD Material varchar(50) NULL
GO
GO
alter table aie.tblWCFactor alter column Material varchar(50)
GO
alter table aie.tblLogisticEnquiryShipmentDetails drop column AddtionalFixure
Go
GO
alter table aie.tblExternals alter column SmallSize nvarchar(200)
GO
GO
alter table aie.tblEquipmentDetailPLNG alter column Contingency float null
GO
alter table aie.tblBlastingRate_Log ADD BlastingNo int null
GO



--tblbom Manual change 'IsApplicableStud' set null
--tblTQ manual change 'IsSubmit' set not null
--tblPlanningSheet manual change 'ComponentNo' set null
--tblPaintApplicationCost_Log manual change 'PaintApplicationNo' set null
--tblNLPOutputEst change 'AnchorChair', 'TemplateMisc' set default value 0
--tblMainSupportType change rename 'TypeOfExternal' to 'SupportType' 
--tblInternals Manual change 'IsApplicableStud' set null


GO
INSERT INTO AIE.tblBOMMaster(Component,Type,IsMOC,IsType,IsSize,IsOD,IsBaseMetalID,IsThkMin,IsLength,IsWidthHeight,IsThkFactor,IsThickness,IsQty,IsCladOLThk,IsOverlayType,IsOverlayMaterial,IsJoinedWith,IsSFTop,IsSFBottom,IsEB,IsMachineAllowance,IsSmallEndRadius,IsBigEndRadius,IsKnukleRadius,IsRadius,IsPetals,IsLsSegments,IsCS,IsDensity,IsUnitWeight,IsTotalWeight,PreparedBy,PreparedOn,EditedBy,EditedOn,IsInternalOD,IsInternalID,IsInternalSmallEnd,IsInternalNOofSegments,IsInternalLength,IsInternalWidth,IsInternalHeight,IsInternalThickness,IsInternalQty,IsInternalWeight,IsInternalTypeofInstallation,IsInternalWeldingofInternals,IsInternalTypeOfJoining,IsInternalSize,IsInternalRating,IsInternalType,IsNoofRing,IsGapBetweenSegment,IsNoofRingSegments,IsVisibleLength,IsVisibleWidth,IsVisibleWeight,IsVisibleTotalWeight,IsVisibleSkirtSideThickness,IsVisibleShellSideThickness,IsVisibleYRingHeight,IsVisibleShellHeight,IsWeldLength,IsVisibleFinishedUnitWeight,IsVisibleFinishedTotalWeight,IsFinishedUnitWeight,IsEditableThickness,IsEditableThicknessFactor,IsComponentType,IsSchedule,IsWeightKG,IsLocalImport,IsCoating)
Values
('No of Gussets','BOM',1,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0)

GO

Insert Into AIE.tblComponentWiseWEPThicknessRange(Component,ComponentType,ThicknessFrom,ThicknessTo,WEP,FSProcess,CBProcess)
Select 'Template' Component,ComponentType,ThicknessFrom,ThicknessTo,WEP,FSProcess,CBProcess From AIE.tblComponentWiseWEPThicknessRange Where Component = 'Base Ring'

GO

Update AIE.tblNLPOutputEst Set NoofGussets =0

GO

--default there is 2 value maintained then as per logic discussed with pankaj sir need to be change fromDia value 0
update AIE.tblInsulationCage set FromDia=0 where CageID=1
GO
update AIE.tblThermoCoupleDetails set MOC='SS347' where MOC='SS'
GO
update AIE.tblBOM set MOC='SS347' where SaveFrom like '%thermo%'
GO
