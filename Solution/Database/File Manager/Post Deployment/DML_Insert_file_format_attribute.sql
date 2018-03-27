﻿USE [$(FileManagementDB_Name)]
GO

TRUNCATE TABLE [dbo].[file_format_attribute]

INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'agency', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'agency_location', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'agency_location_alias', 2, '^([A-Z]{3})', 'LEFT(agency_location_alias,3)', GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'team', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'patient_lastname', 1, '^([^,])', 'LEFT(patient_lastname, CHARINDEX('','', patient_lastname)-1)', GETDATE(), GETDATE(), 0)   --'^([^,])+'
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'patient_firstname', 1, '[^,]+$', 'LTRIM(SUBSTRING (patient_firstname,CHARINDEX('','',patient_firstname)+1,LEN(patient_firstname) - CHARINDEX('','',patient_firstname)))', GETDATE(), GETDATE(), 0)    --[^,]*$
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'MRN', 2, NULL, NULL, GETDATE(), GETDATE(), 0)					--^([A-Z]{3})
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'oasis_visit_type', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'visit_type', 7, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'assessment_dt', 3, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'responsible_position', 11, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'arrival_dt', 0, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'SOE_dt', 4, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'SOC_dt', 3, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'REC_dt', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'ROC_dt', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'hospice_dt', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'discharge_dt', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'payor_type', 7, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'payor_source', 8, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'secondary_payor_type', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'secondary_payor_source', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'clinician_firstname', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'clinician_lastname', -1, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'event', 5, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'stage', 12, NULL, NULL, GETDATE(), GETDATE(), 0)
INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'task', 10, NULL, NULL, GETDATE(), GETDATE(), 0)
-----------------------------------------------------------------------------------------------------------------------
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'Agency', N'agency', 0, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'Branch', N'branch', 1, 'NULL', GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'Team', N'team', 2, 'NULL', GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'ClientLastname', N'patient_lastname', 3, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'ClientFirstname', N'patient_firstname', 4, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'MRNo', N'MRN', 5, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'OASISVisitType', N'oasis_visit_type', 6, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'VisitType', N'visit_type', 7, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'VisitDate', N'visit_dt', 8, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'ResponsiblePosition', N'responsible_position', 9, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'Arrived', N'arrival_dt', 10, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'SOEDate', N'SOE_dt', 11, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'SOCDate', N'SOC_dt', 12, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'RECDate', N'REC_dt', 13, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'ROCDate', N'ROC_dt', 14, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'HospiceDate', N'hospice_dt', 15, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'DischargeDate', N'discharge_dt', 16, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'PayorType', N'payor_type', 17, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'PayorSource', N'payor_source', 18, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'SecondaryPayorType', N'secondary_payor_type', 19, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'SecondaryPayorSource', N'secondary_payor_source', 20, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'ClinicianFirstName', N'clinician_firstname', 21, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'ClinicianLastName', N'clinician_lastname', 22, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'Event', N'event', 24, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'Stage', N'stage', 25, NULL, NULL, GETDATE(), GETDATE(), 0)
--INSERT [dbo].[file_format_attribute]  VALUES (N'HCHB Spec 1', N'Task', N'task', 26, NULL, NULL, GETDATE(), GETDATE(), 0)


