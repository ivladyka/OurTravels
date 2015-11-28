--  
-- Script to Update dbo.tbl_ticket in helpdeskbeta2.cloudapp.net.BWA_HelpDesk_1 
-- Generated среда, Апрель 24, 2013, at 06:31 PM 
--  
-- Please backup helpdeskbeta2.cloudapp.net.BWA_HelpDesk_1 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.tbl_ticket Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_RelatedTickets_tbl_ticket')
      ALTER TABLE [dbo].[RelatedTickets] DROP CONSTRAINT [FK_RelatedTickets_tbl_ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_RelatedTickets_tbl_ticket1')
      ALTER TABLE [dbo].[RelatedTickets] DROP CONSTRAINT [FK_RelatedTickets_tbl_ticket1]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_RemoteSessions_tbl_ticket')
      ALTER TABLE [dbo].[RemoteSessions] DROP CONSTRAINT [FK_RemoteSessions_tbl_ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketAssets_tbl_ticket')
      ALTER TABLE [dbo].[TicketAssets] DROP CONSTRAINT [FK_TicketAssets_tbl_ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketAssignments_tbl_ticket')
      ALTER TABLE [dbo].[TicketAssignment] DROP CONSTRAINT [FK_TicketAssignments_tbl_ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TktLogs_TID')
      ALTER TABLE [dbo].[TicketLogs] DROP CONSTRAINT [FK_TktLogs_TID]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketSentEmails_tbl_ticket')
      ALTER TABLE [dbo].[TicketSentEmails] DROP CONSTRAINT [FK_TicketSentEmails_tbl_ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_TicketTime_Ticket')
      ALTER TABLE [dbo].[TicketTime] DROP CONSTRAINT [fk_TicketTime_Ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketTimeEstimated_tbl_ticket')
      ALTER TABLE [dbo].[TicketTimeEstimated] DROP CONSTRAINT [FK_TicketTimeEstimated_tbl_ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketTravelCosts_tbl_ticket')
      ALTER TABLE [dbo].[TicketTravelCosts] DROP CONSTRAINT [FK_TicketTravelCosts_tbl_ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_ToDoItem_tbl_ticket')
      ALTER TABLE [dbo].[ToDoItem] DROP CONSTRAINT [FK_ToDoItem_tbl_ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_ToDoList_tbl_ticket')
      ALTER TABLE [dbo].[ToDoList] DROP CONSTRAINT [FK_ToDoList_tbl_ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_Folders_Ticket')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_Folders_Ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket1')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_LCJ_Ticket1]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket2')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_LCJ_Ticket2]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket3')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_LCJ_Ticket3]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket4')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_LCJ_Ticket4]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_Locations_Ticket')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_Locations_Ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Accounts')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_Accounts]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_CreationCats')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_CreationCats]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Locations')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_Locations]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Locations1')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_Locations1]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Project')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_Project]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_ResolutionCats')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_ResolutionCats]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_SchedTickets')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_SchedTickets]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_SubmissionCategories')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_SubmissionCategories]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_tbl_company')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_tbl_company]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_tbl_LoginCompanyJunc')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_tbl_LoginCompanyJunc]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_ticket_Levels')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_ticket_Levels]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_Ticket_Priority')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_Ticket_Priority]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_tbl_ticket_NewUserPost')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_tbl_ticket_NewUserPost]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_tbl_ticket_NewTechPost')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_tbl_ticket_NewTechPost]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_Tickets_PartsCost')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_Tickets_PartsCost]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_Tickets_LaborCost')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_Tickets_LaborCost]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_Tickets_TravelCost')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_Tickets_TravelCost]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_Tickets_MiscCost')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_Tickets_MiscCost]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_Tkts_intSLACompleteUsed')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_Tkts_intSLACompleteUsed]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_tbl_ticket_intSLAResponseUsed')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_tbl_ticket_intSLAResponseUsed]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF__tbl_ticke__btIni__2018A105')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF__tbl_ticke__btIni__2018A105]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF__tbl_ticke__intTk__62A57E71')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF__tbl_ticke__intTk__62A57E71]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF__tbl_ticke__btVia__75B852E5')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF__tbl_ticke__btVia__75B852E5]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_tbl_ticket_btHandledByCC')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_tbl_ticket_btHandledByCC]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_tbl_ticket_KB')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_tbl_ticket_KB]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'DF_tbl_ticket_btNoAccount')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [DF_tbl_ticket_btNoAccount]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE TABLE [dbo].[tmp_tbl_ticket] (
   [Id] [int] IDENTITY (1, 1) NOT NULL,
   [company_id] [int] NOT NULL,
   [User_id] [int] NOT NULL,
   [Technician_id] [int] NOT NULL,
   [Created_id] [int] NULL,
   [location_id] [int] NULL,
   [class_id] [int] NULL,
   [Status] [varchar] (15) NOT NULL,
   [Subject] [nvarchar] (100) NULL,
   [CreateTime] [smalldatetime] NOT NULL,
   [Note] [ntext] NULL,
   [NewUserPost] [bit] NOT NULL CONSTRAINT [DF_tbl_ticket_NewUserPost] DEFAULT ((0)),
   [NewTechPost] [bit] NOT NULL CONSTRAINT [DF_tbl_ticket_NewTechPost] DEFAULT ((0)),
   [ClosedTime] [smalldatetime] NULL,
   [btPreventive] [bit] NOT NULL,
   [SerialNumber] [nvarchar] (50) NULL,
   [folder_id] [int] NULL,
   [Room] [nvarchar] (30) NULL,
   [TicketNumber] [int] NOT NULL,
   [CustomXML] [ntext] NULL,
   [PartsCost] [money] NOT NULL CONSTRAINT [DF_Tickets_PartsCost] DEFAULT ((0)),
   [LaborCost] [money] NOT NULL CONSTRAINT [DF_Tickets_LaborCost] DEFAULT ((0)),
   [TravelCost] [money] NOT NULL CONSTRAINT [DF_Tickets_TravelCost] DEFAULT ((0)),
   [MiscCost] [money] NOT NULL CONSTRAINT [DF_Tickets_MiscCost] DEFAULT ((0)),
   [PriorityId] [int] NULL,
   [dtSLAComplete] [smalldatetime] NULL,
   [dtSLAResponse] [smalldatetime] NULL,
   [dtSLAStart] [smalldatetime] NULL,
   [intSLACompleteUsed] [int] NOT NULL CONSTRAINT [DF_Tkts_intSLACompleteUsed] DEFAULT ((0)),
   [intSLAResponseUsed] [int] NOT NULL CONSTRAINT [DF_tbl_ticket_intSLAResponseUsed] DEFAULT ((0)),
   [btInitResponse] [bit] NOT NULL CONSTRAINT [DF__tbl_ticke__btIni__2018A105] DEFAULT ((0)),
   [dtReqComp] [smalldatetime] NULL,
   [ReqCompNote] [nvarchar] (50) NULL,
   [dtFollowUp] [smalldatetime] NULL,
   [FollowUpNote] [nvarchar] (50) NULL,
   [tintLevel] [tinyint] NULL,
   [intTktTimeMin] [int] NOT NULL CONSTRAINT [DF__tbl_ticke__intTk__62A57E71] DEFAULT ((0)),
   [btViaEmailParser] [bit] NOT NULL CONSTRAINT [DF__tbl_ticke__btVia__75B852E5] DEFAULT ((0)),
   [intAcctId] [int] NULL,
   [intAcctLocationId] [int] NULL,
   [ClosureNote] [nvarchar] (50) NULL,
   [btResolved] [bit] NULL,
   [ResolutionCatsId] [int] NULL,
   [btConfirmed] [bit] NULL,
   [intConfirmedBy] [int] NULL,
   [dtConfirmed] [datetime] NULL,
   [vchConfirmedNote] [nvarchar] (254) NULL,
   [CreationCatsId] [int] NULL,
   [vchIdMethod] [nvarchar] (255) NULL,
   [btHandledByCC] [bit] NOT NULL CONSTRAINT [DF_tbl_ticket_btHandledByCC] DEFAULT ((0)),
   [intSubmissionCatId] [int] NULL,
   [EmailCC] [nvarchar] (255) NULL,
   [AccountLocationId] [int] NULL,
   [LocationId] [int] NULL,
   [Closed_id] [int] NULL,
   [TicketNumberPrefix] [nvarchar] (10) NULL,
   [RemainingHours] [decimal] (10, 4) NULL,
   [TotalHours] [decimal] (10, 4) NULL,
   [ProjectID] [int] NULL,
   [NextStep] [nvarchar] (100) NULL,
   [Workpad] [ntext] NULL,
   [NextStepDate] [datetime] NULL,
   [SchedTicketID] [int] NULL,
   [UpdatedTime] [smalldatetime] NULL,
   [EstimatedTime] [decimal] (10, 4) NULL,
   [PseudoId] [char] (6) NULL,
   [KB] [bit] NULL CONSTRAINT [DF_tbl_ticket_KB] DEFAULT ((0)),
   [KBAlternateId] [nvarchar] (255) NULL,
   [KBHelpfulCount] [int] NULL,
   [KBPublishLevel] [tinyint] NULL,
   [KBSearchDesc] [nvarchar] (150) NULL,
   [KBType] [tinyint] NULL,
   [btNoAccount] [bit] NULL CONSTRAINT [DF_tbl_ticket_btNoAccount] DEFAULT ((0))
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   SET IDENTITY_INSERT [dbo].[tmp_tbl_ticket] ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
	PRINT 'Begin transfer data to the temp table'
GO

IF @@TRANCOUNT = 1
BEGIN
DECLARE @StartID bigint, @LastID bigint, @EndID bigint
set @StartID = 0

select @LastID = max(Id)
from [dbo].[tbl_ticket]

while @StartID < @LastID
begin
    set @EndID = @StartID + 1000000

   INSERT INTO [dbo].[tmp_tbl_ticket] ([Id], [company_id], [User_id], [Technician_id], [Created_id], [location_id], [class_id], [Status], [Subject], [CreateTime], [Note], [NewUserPost], [NewTechPost], [ClosedTime], [btPreventive], [SerialNumber], [folder_id], [Room], [TicketNumber], [CustomXML], [PartsCost], [LaborCost], [TravelCost], [MiscCost], [PriorityId], [dtSLAComplete], [dtSLAResponse], [dtSLAStart], [intSLACompleteUsed], [intSLAResponseUsed], [btInitResponse], [dtReqComp], [ReqCompNote], [dtFollowUp], [FollowUpNote], [tintLevel], [intTktTimeMin], [btViaEmailParser], [intAcctId], [intAcctLocationId], [ClosureNote], [btResolved], [ResolutionCatsId], [btConfirmed], [intConfirmedBy], [dtConfirmed], [vchConfirmedNote], [CreationCatsId], [vchIdMethod], [btHandledByCC], [intSubmissionCatId], [EmailCC], [AccountLocationId], [LocationId], [Closed_id], [TicketNumberPrefix], [RemainingHours], [TotalHours], [ProjectID], [NextStep], [Workpad], [NextStepDate], [SchedTicketID], [UpdatedTime], [EstimatedTime], [PseudoId], [KB], [KBAlternateId], [KBHelpfulCount], [KBPublishLevel], [KBSearchDesc], [KBType], [btNoAccount])
   SELECT [Id], [company_id], [User_id], [Technician_id], [Created_id], [location_id], [class_id], [Status], [Subject], [CreateTime], [Note], [NewUserPost], [NewTechPost], [ClosedTime], [btPreventive], [SerialNumber], [folder_id], [Room], [TicketNumber], [CustomXML], [PartsCost], [LaborCost], [TravelCost], [MiscCost], [PriorityId], [dtSLAComplete], [dtSLAResponse], [dtSLAStart], [intSLACompleteUsed], [intSLAResponseUsed], [btInitResponse], [dtReqComp], [ReqCompNote], [dtFollowUp], [FollowUpNote], [tintLevel], [intTktTimeMin], [btViaEmailParser], [intAcctId], [intAcctLocationId], [ClosureNote], [btResolved], [ResolutionCatsId], [btConfirmed], [intConfirmedBy], [dtConfirmed], [vchConfirmedNote], [CreationCatsId], [vchIdMethod], [btHandledByCC], [intSubmissionCatId], [EmailCC], [AccountLocationId], [LocationId], [Closed_id], [TicketNumberPrefix], [RemainingHours], [TotalHours], [ProjectID], [NextStep], [Workpad], [NextStepDate], [SchedTicketID], [UpdatedTime], [EstimatedTime], [PseudoId], [KB], [KBAlternateId], [KBHelpfulCount], [KBPublishLevel], [KBSearchDesc], [KBType], [btNoAccount]
   FROM [dbo].[tbl_ticket]
    where Id BETWEEN @StartID AND @EndId

    set @StartID = @EndID + 1
end
END
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
	PRINT 'End transfer data to the temp table'
GO

IF @@TRANCOUNT = 1
   SET IDENTITY_INSERT [dbo].[tmp_tbl_ticket] OFF
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   DROP TABLE [dbo].[tbl_ticket]
GO

sp_rename N'[dbo].[tmp_tbl_ticket]', N'tbl_ticket'

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [PK_tbl_ticket] PRIMARY KEY NONCLUSTERED ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IDX_tbl_ticket_id] ON [dbo].[tbl_ticket] ([Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IDX_tbl_ticket_PseudoId] ON [dbo].[tbl_ticket] ([PseudoId])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IN_ktNumber] ON [dbo].[tbl_ticket] ([company_id], [TicketNumber])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [CL_tbl_ticket] UNIQUE CLUSTERED ([company_id], [Id])
GO

-- Adding Foreign Keys

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_Folders_Ticket')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_Folders_Ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_Folders_Ticket')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_Folders_Ticket] FOREIGN KEY ([company_id], [folder_id]) REFERENCES [dbo].[Folders] ([DId], [id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket1')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_LCJ_Ticket1]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket1')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [fk_LCJ_Ticket1] FOREIGN KEY ([company_id], [User_id]) REFERENCES [dbo].[tbl_LoginCompanyJunc] ([company_id], [id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket2')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_LCJ_Ticket2]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket2')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [fk_LCJ_Ticket2] FOREIGN KEY ([company_id], [Technician_id]) REFERENCES [dbo].[tbl_LoginCompanyJunc] ([company_id], [id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket3')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_LCJ_Ticket3]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket3')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [fk_LCJ_Ticket3] FOREIGN KEY ([company_id], [Created_id]) REFERENCES [dbo].[tbl_LoginCompanyJunc] ([company_id], [id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket4')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_LCJ_Ticket4]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_LCJ_Ticket4')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [fk_LCJ_Ticket4] FOREIGN KEY ([company_id], [Closed_id]) REFERENCES [dbo].[tbl_LoginCompanyJunc] ([company_id], [id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_Locations_Ticket')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_Locations_Ticket]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_Locations_Ticket')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_Locations_Ticket] FOREIGN KEY ([location_id]) REFERENCES [dbo].[tbl_Locations] ([id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Accounts')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_Accounts]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Accounts')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_Accounts] FOREIGN KEY ([company_id], [intAcctId]) REFERENCES [dbo].[Accounts] ([DId], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_CreationCats')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_CreationCats]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_CreationCats')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_CreationCats] FOREIGN KEY ([company_id], [CreationCatsId]) REFERENCES [dbo].[CreationCats] ([DId], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Locations')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_Locations]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Locations')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_Locations] FOREIGN KEY ([company_id], [LocationId]) REFERENCES [dbo].[Locations] ([DId], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Locations1')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_Locations1]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Locations1')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_Locations1] FOREIGN KEY ([company_id], [AccountLocationId]) REFERENCES [dbo].[Locations] ([DId], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Project')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_Project]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_Project')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_Project] FOREIGN KEY ([company_id], [ProjectID]) REFERENCES [dbo].[Project] ([CompanyID], [ProjectID])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_ResolutionCats')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_ResolutionCats]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_ResolutionCats')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_ResolutionCats] FOREIGN KEY ([company_id], [ResolutionCatsId]) REFERENCES [dbo].[ResolutionCats] ([DId], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_SchedTickets')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_SchedTickets]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_SchedTickets')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_SchedTickets] FOREIGN KEY ([company_id], [SchedTicketID]) REFERENCES [dbo].[SchedTickets] ([DId], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_SubmissionCategories')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_SubmissionCategories]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_SubmissionCategories')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_SubmissionCategories] FOREIGN KEY ([intSubmissionCatId]) REFERENCES [dbo].[SubmissionCategories] ([Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_tbl_company')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_tbl_company]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_tbl_company')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_tbl_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[tbl_company] ([company_id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_tbl_LoginCompanyJunc')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_tbl_ticket_tbl_LoginCompanyJunc]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_tbl_ticket_tbl_LoginCompanyJunc')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_tbl_ticket_tbl_LoginCompanyJunc] FOREIGN KEY ([company_id], [intConfirmedBy]) REFERENCES [dbo].[tbl_LoginCompanyJunc] ([company_id], [id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_ticket_Levels')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [fk_ticket_Levels]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_ticket_Levels')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [fk_ticket_Levels] FOREIGN KEY ([company_id], [tintLevel]) REFERENCES [dbo].[TktLevels] ([DId], [tintLevel])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_Ticket_Priority')
      ALTER TABLE [dbo].[tbl_ticket] DROP CONSTRAINT [FK_Ticket_Priority]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_Ticket_Priority')
      ALTER TABLE [dbo].[tbl_ticket] ADD CONSTRAINT [FK_Ticket_Priority] FOREIGN KEY ([company_id], [PriorityId]) REFERENCES [dbo].[Priorities] ([DId], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_RelatedTickets_tbl_ticket')
      ALTER TABLE [dbo].[RelatedTickets] ADD CONSTRAINT [FK_RelatedTickets_tbl_ticket] FOREIGN KEY ([DId], [TicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_RelatedTickets_tbl_ticket1')
      ALTER TABLE [dbo].[RelatedTickets] ADD CONSTRAINT [FK_RelatedTickets_tbl_ticket1] FOREIGN KEY ([DId], [RelatedTicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_RemoteSessions_tbl_ticket')
      ALTER TABLE [dbo].[RemoteSessions] ADD CONSTRAINT [FK_RemoteSessions_tbl_ticket] FOREIGN KEY ([DId], [TId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketAssets_tbl_ticket')
      ALTER TABLE [dbo].[TicketAssets] ADD CONSTRAINT [FK_TicketAssets_tbl_ticket] FOREIGN KEY ([DId], [TicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketAssignments_tbl_ticket')
      ALTER TABLE [dbo].[TicketAssignment] ADD CONSTRAINT [FK_TicketAssignments_tbl_ticket] FOREIGN KEY ([DepartmentId], [TicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TktLogs_TID')
      ALTER TABLE [dbo].[TicketLogs] ADD CONSTRAINT [FK_TktLogs_TID] FOREIGN KEY ([DId], [TId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketSentEmails_tbl_ticket')
      ALTER TABLE [dbo].[TicketSentEmails] ADD CONSTRAINT [FK_TicketSentEmails_tbl_ticket] FOREIGN KEY ([DId], [TicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'fk_TicketTime_Ticket')
      ALTER TABLE [dbo].[TicketTime] ADD CONSTRAINT [fk_TicketTime_Ticket] FOREIGN KEY ([DepartmentId], [TicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketTimeEstimated_tbl_ticket')
      ALTER TABLE [dbo].[TicketTimeEstimated] ADD CONSTRAINT [FK_TicketTimeEstimated_tbl_ticket] FOREIGN KEY ([DId], [TicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_TicketTravelCosts_tbl_ticket')
      ALTER TABLE [dbo].[TicketTravelCosts] ADD CONSTRAINT [FK_TicketTravelCosts_tbl_ticket] FOREIGN KEY ([DepartmentId], [TicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_ToDoItem_tbl_ticket')
      ALTER TABLE [dbo].[ToDoItem] ADD CONSTRAINT [FK_ToDoItem_tbl_ticket] FOREIGN KEY ([DId], [TicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_ToDoList_tbl_ticket')
      ALTER TABLE [dbo].[ToDoList] ADD CONSTRAINT [FK_ToDoList_tbl_ticket] FOREIGN KEY ([DId], [TicketId]) REFERENCES [dbo].[tbl_ticket] ([company_id], [Id])
GO
-- Finished Adding Foreign Keys

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.tbl_ticket Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.tbl_ticket Table'
END
GO
