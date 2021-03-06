USE [IPTDEV]
GO
/****** Object:  StoredProcedure [dbo].[UserSignIn]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[UserSignIn]
GO
/****** Object:  StoredProcedure [dbo].[UpdateandInsert]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[UpdateandInsert]
GO
/****** Object:  StoredProcedure [dbo].[start_ssis_job]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[start_ssis_job]
GO
/****** Object:  StoredProcedure [dbo].[ShikeishoMaster]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[ShikeishoMaster]
GO
/****** Object:  StoredProcedure [dbo].[LM_Shikeisho_Update]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[LM_Shikeisho_Update]
GO
/****** Object:  StoredProcedure [dbo].[GetShikeishyoData]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[GetShikeishyoData]
GO
/****** Object:  StoredProcedure [dbo].[GetAllUserShikeishyoData]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[GetAllUserShikeishyoData]
GO
/****** Object:  StoredProcedure [dbo].[GetAllSavedSuplierListAndPartDetails]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[GetAllSavedSuplierListAndPartDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetAllPendingUser]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[GetAllPendingUser]
GO
/****** Object:  StoredProcedure [dbo].[addBuyerstoGroup]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP PROCEDURE [dbo].[addBuyerstoGroup]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [FK_users_users1]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [FK_users_users]
GO
ALTER TABLE [dbo].[user_roles] DROP CONSTRAINT [FK_user_roles_users]
GO
ALTER TABLE [dbo].[user_roles] DROP CONSTRAINT [FK_user_roles_roles]
GO
ALTER TABLE [dbo].[buyers] DROP CONSTRAINT [FK_buyers_buyers_group]
GO
/****** Object:  Table [dbo].[users]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[user_roles]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[user_roles]
GO
/****** Object:  Table [dbo].[TmpWebEreq]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpWebEreq]
GO
/****** Object:  Table [dbo].[TmpSupplier]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpSupplier]
GO
/****** Object:  Table [dbo].[TmpShikeishoParts]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpShikeishoParts]
GO
/****** Object:  Table [dbo].[TmpShikeisho]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpShikeisho]
GO
/****** Object:  Table [dbo].[TmpPUO]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpPUO]
GO
/****** Object:  Table [dbo].[TmpPUC]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpPUC]
GO
/****** Object:  Table [dbo].[TmpLmShikeisho]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpLmShikeisho]
GO
/****** Object:  Table [dbo].[TmpLmParts]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpLmParts]
GO
/****** Object:  Table [dbo].[TmpEreqToWebereq]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpEreqToWebereq]
GO
/****** Object:  Table [dbo].[TmpEpics]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpEpics]
GO
/****** Object:  Table [dbo].[TmpEoDb]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpEoDb]
GO
/****** Object:  Table [dbo].[TmpDrawing]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpDrawing]
GO
/****** Object:  Table [dbo].[TmpCommoditiesBuyersList]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[TmpCommoditiesBuyersList]
GO
/****** Object:  Table [dbo].[Tdb0511]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[Tdb0511]
GO
/****** Object:  Table [dbo].[Tdb0411]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[Tdb0411]
GO
/****** Object:  Table [dbo].[Tdb0311]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[Tdb0311]
GO
/****** Object:  Table [dbo].[Tdb0211]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[Tdb0211]
GO
/****** Object:  Table [dbo].[Tdb0111]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[Tdb0111]
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[suppliers]
GO
/****** Object:  Table [dbo].[status]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[status]
GO
/****** Object:  Table [dbo].[shipment_ut]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[shipment_ut]
GO
/****** Object:  Table [dbo].[shikeisho_details]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[shikeisho_details]
GO
/****** Object:  Table [dbo].[shikeisho]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[shikeisho]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[roles]
GO
/****** Object:  Table [dbo].[rfq_parts]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[rfq_parts]
GO
/****** Object:  Table [dbo].[proc_department]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[proc_department]
GO
/****** Object:  Table [dbo].[po_list]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[po_list]
GO
/****** Object:  Table [dbo].[PL_PARTS_MASTER]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[PL_PARTS_MASTER]
GO
/****** Object:  Table [dbo].[parts_master_old]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[parts_master_old]
GO
/****** Object:  Table [dbo].[PARTS_MASTER]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[PARTS_MASTER]
GO
/****** Object:  Table [dbo].[parts_details]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[parts_details]
GO
/****** Object:  Table [dbo].[parts]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[parts]
GO
/****** Object:  Table [dbo].[part_order]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[part_order]
GO
/****** Object:  Table [dbo].[GL_PL_MASTER]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[GL_PL_MASTER]
GO
/****** Object:  Table [dbo].[file_processing]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[file_processing]
GO
/****** Object:  Table [dbo].[eo_details]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[eo_details]
GO
/****** Object:  Table [dbo].[eo]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[eo]
GO
/****** Object:  Table [dbo].[enics_eop]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[enics_eop]
GO
/****** Object:  Table [dbo].[enics_eod]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[enics_eod]
GO
/****** Object:  Table [dbo].[enics_eob]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[enics_eob]
GO
/****** Object:  Table [dbo].[drawing_master]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[drawing_master]
GO
/****** Object:  Table [dbo].[department]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[department]
GO
/****** Object:  Table [dbo].[compass_approval]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[compass_approval]
GO
/****** Object:  Table [dbo].[child_parts]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[child_parts]
GO
/****** Object:  Table [dbo].[buyers_group]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[buyers_group]
GO
/****** Object:  Table [dbo].[buyers]    Script Date: 7/24/2018 6:05:13 PM ******/
DROP TABLE [dbo].[buyers]
GO
/****** Object:  Table [dbo].[buyers]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[buyers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[buyer_code] [varchar](10) NOT NULL,
	[buyer_name] [varchar](50) NULL,
	[buyer_extensio] [varchar](20) NULL,
	[buyer_email] [varchar](30) NULL,
	[buyer_group_code] [varchar](10) NULL,
 CONSTRAINT [PK_buyers] PRIMARY KEY CLUSTERED 
(
	[buyer_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[buyers_group]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[buyers_group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[group_code] [varchar](10) NOT NULL,
	[group_name] [varchar](50) NULL,
	[group_desc] [varchar](50) NULL,
	[supplier_assistance] [nvarchar](50) NULL,
	[dept_code] [varchar](10) NULL,
 CONSTRAINT [PK_buyers_group] PRIMARY KEY CLUSTERED 
(
	[group_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[child_parts]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[child_parts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[child_part_no] [varchar](30) NULL,
	[child_level] [int] NULL,
	[part_no] [varchar](30) NULL,
	[child_part_name] [varchar](40) NULL,
	[part_classification] [varchar](5) NULL,
	[unit_price] [int] NULL,
	[drawing_no] [varchar](30) NULL,
	[drawing_url] [nvarchar](150) NULL,
	[quantity] [int] NULL,
	[pl_no] [nvarchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[compass_approval]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[compass_approval](
	[order_id] [varchar](50) NULL,
	[network_no] [varchar](50) NULL,
	[suborder_ID] [varchar](50) NULL,
	[group_no] [varchar](50) NULL,
	[network_category_id] [varchar](50) NULL,
	[approval_user] [varchar](50) NULL,
	[approval_date] [varchar](50) NULL,
	[total_cost] [varchar](50) NULL,
	[total_hour] [varchar](50) NULL,
	[po_kanri_no] [varchar](50) NULL,
	[shikeisho_no] [varchar](8) NULL,
	[ec_ode] [varchar](50) NULL,
	[process_kanri_no] [varchar](50) NULL,
	[network_text] [varchar](50) NULL,
	[category_id] [varchar](50) NULL,
	[d_code] [varchar](50) NULL,
	[temp_approval_user] [varchar](50) NULL,
	[temp_approval_date] [varchar](50) NULL,
	[if_request_flag] [varchar](50) NULL,
	[if_output_date] [varchar](50) NULL,
	[update_date] [varchar](50) NULL,
	[update_user] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[department]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dept_id] [varchar](10) NOT NULL,
	[dept_name] [varchar](20) NULL,
	[deptdesc] [varchar](50) NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[dept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[drawing_master]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[drawing_master](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[drawing_url] [nvarchar](200) NOT NULL,
	[drawing_no] [varchar](50) NOT NULL,
	[part_no] [varchar](50) NULL,
 CONSTRAINT [PK_drawing_master_1] PRIMARY KEY CLUSTERED 
(
	[drawing_url] ASC,
	[drawing_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[enics_eob]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[enics_eob](
	[EONO] [varchar](50) NULL,
	[CRNO] [varchar](50) NULL,
	[ISWAS] [varchar](50) NULL,
	[PL] [varchar](50) NULL,
	[VC] [varchar](50) NULL,
	[PARTNAME] [varchar](50) NULL,
	[PARTNO] [varchar](50) NULL,
	[PI] [varchar](50) NULL,
	[QTY] [varchar](50) NULL,
	[CL] [varchar](50) NULL,
	[INTCHG_O] [varchar](50) NULL,
	[INTCHG_N] [varchar](50) NULL,
	[PPS] [varchar](50) NULL,
	[DWGNO] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[enics_eod]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[enics_eod](
	[EONO] [varchar](50) NULL,
	[CRNO] [varchar](50) NULL,
	[ISWAS] [varchar](50) NULL,
	[GL] [varchar](50) NULL,
	[MC] [varchar](50) NULL,
	[PL] [varchar](50) NULL,
	[VC] [varchar](50) NULL,
	[CL] [varchar](50) NULL,
	[PARTNAME] [varchar](50) NULL,
	[LR] [varchar](50) NULL,
	[OPT] [varchar](50) NULL,
	[OI] [varchar](50) NULL,
	[PLUSMINUS] [varchar](50) NULL,
	[PI] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[enics_eop]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[enics_eop](
	[EONO] [varchar](50) NULL,
	[CRNO] [varchar](50) NULL,
	[SUBJCT] [varchar](50) NULL,
	[DWGLISTNO] [varchar](50) NULL,
	[CL] [varchar](50) NULL,
	[PARTNO] [varchar](50) NULL,
	[PPS] [varchar](50) NULL,
	[IDENT_1] [varchar](50) NULL,
	[IDENT_2] [varchar](50) NULL,
	[PARTNAME] [varchar](50) NULL,
	[DESC_J] [varchar](50) NULL,
	[DESC_C] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eo]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eo](
	[eo_no] [varchar](6) NULL,
	[shikeisho_no] [varchar](8) NULL,
	[subject] [varchar](25) NULL,
	[status] [varchar](3) NULL,
	[generation_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eo_details]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eo_details](
	[eo_no] [varchar](6) NULL,
	[shikeisho_no] [varchar](8) NULL,
	[subject] [varchar](100) NULL,
	[user_name_login] [nvarchar](100) NULL,
	[updated_on] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[file_processing]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[file_processing](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[process_id] [varchar](30) NULL,
	[source_system] [varchar](20) NULL,
	[file_name] [varchar](100) NULL,
	[file_received_date] [datetime] NULL,
	[file_process_completion_flag] [varchar](3) NULL,
	[file_process_completion_date] [datetime] NULL,
	[remarks] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_PL_MASTER]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_PL_MASTER](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[GL] [varchar](50) NOT NULL,
	[PL] [varchar](50) NOT NULL,
	[CL] [nchar](10) NULL,
 CONSTRAINT [PK_GL_PL_MASTER] PRIMARY KEY CLUSTERED 
(
	[GL] ASC,
	[PL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[part_order]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[part_order](
	[SIKEISYO-NO] [char](8) NULL,
	[BUBAN] [char](16) NULL,
	[FUGOU] [varchar](1) NULL,
	[JIKOTEI] [char](4) NULL,
	[NOUKI] [char](6) NULL,
	[ORDER] [varchar](10) NULL,
	[KANRI-NO] [varchar](6) NULL,
	[KISYU] [varchar](8) NULL,
	[FILLER] [varchar](1) NULL,
	[UPG] [varchar](6) NULL,
	[PPS] [varchar](1) NULL,
	[DATAHA] [varchar](1) NULL,
	[NOUSEI] [varchar](1) NULL,
	[SEIHIN] [varchar](2) NULL,
	[SURYO] [varchar](6) NULL,
	[NAIJI] [varchar](1) NULL,
	[CYCLE] [varchar](1) NULL,
	[SAGYOT] [varchar](2) NULL,
	[INP-YMD] [varchar](6) NULL,
	[SHINTAN] [varchar](2) NULL,
	[BUHINMEI] [varchar](20) NULL,
	[KEITAN] [varchar](3) NULL,
	[TEBAN] [varchar](8) NULL,
	[TORICD] [varchar](4) NULL,
	[KOUJYOU] [varchar](1) NULL,
	[TANKA-X] [varchar](9) NULL,
	[TANKAKU] [varchar](1) NULL,
	[SHIKYU] [varchar](1) NULL,
	[HOAN] [varchar](1) NULL,
	[KENSAKBN] [varchar](1) NULL,
	[HOUSOU] [varchar](1) NULL,
	[TEHAIS] [varchar](1) NULL,
	[CHOKUNOU] [varchar](1) NULL,
	[KENSAT] [varchar](1) NULL,
	[TETAN] [varchar](2) NULL,
	[INP-TANTO] [varchar](2) NULL,
	[KD-TUISOU] [varchar](10) NULL,
	[LOTKBN] [varchar](1) NULL,
	[LOTSU] [varchar](6) NULL,
	[NOUBA] [varchar](3) NULL,
	[SYONAI] [varchar](1) NULL,
	[ZAIRYOU] [varchar](1) NULL,
	[NAIGAI] [varchar](1) NULL,
	[NOUHINSYO] [varchar](1) NULL,
	[NOUSEI-2] [varchar](1) NULL,
	[NOUHINSYO-NO] [varchar](5) NULL,
	[GYO-NO] [varchar](1) NULL,
	[TEHAI-SYUBETU] [varchar](1) NULL,
	[NOBA-MEI] [varchar](25) NULL,
	[TANKA-2] [varchar](5) NULL,
	[FILLER-2] [varchar](5) NULL,
	[HAKKO-YY] [varchar](2) NULL,
	[HAKKO-MM] [varchar](2) NULL,
	[HAKKO-KU] [varchar](1) NULL,
	[HAKKO-JYUN] [varchar](1) NULL,
	[HARAIDASI] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[parts]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parts](
	[id] [int] NULL,
	[no] [int] NULL,
	[shikeisho_no] [varchar](10) NULL,
	[first_time] [varchar](10) NULL,
	[district] [nvarchar](10) NULL,
	[generation] [nvarchar](10) NULL,
	[part_no] [varchar](20) NULL,
	[part_name] [nvarchar](100) NULL,
	[child_part_exists] [varchar](3) NULL,
	[requested_quantity] [int] NULL,
	[internal_delivery_time] [date] NULL,
	[implementation_instructions] [nvarchar](100) NULL,
	[interior_make] [nvarchar](20) NULL,
	[part_status] [nvarchar](20) NULL,
	[remarks] [nvarchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[parts_details]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parts_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shikeisho_no] [varchar](8) NOT NULL,
	[eo_no] [varchar](7) NOT NULL,
	[first_time] [varchar](3) NULL,
	[district] [nvarchar](10) NULL,
	[generation] [tinyint] NULL,
	[part_no] [varchar](20) NOT NULL,
	[part_name] [nvarchar](50) NULL,
	[part_classification] [varchar](10) NULL,
	[no_of_vehicles] [int] NULL,
	[quantity_per_vehicle] [int] NULL,
	[requested_quantity] [int] NULL,
	[modified_quantity] [int] NULL,
	[received_quantity] [int] NULL,
	[pending_quantity] [int] NULL,
	[unit_price] [int] NULL,
	[part_order_no] [varchar](20) NULL,
	[desired_date] [date] NULL,
	[due_date] [date] NULL,
	[delivered_date] [date] NULL,
	[delivered_location] [nvarchar](10) NULL,
	[internal_delivery_time] [datetime] NULL,
	[implementation_instructions] [nvarchar](100) NULL,
	[interior_make] [nvarchar](20) NULL,
	[remarks] [nvarchar](100) NULL,
	[status] [varchar](100) NULL CONSTRAINT [DF_parts_details_status]  DEFAULT (N'NEW'),
	[reason_for_cancel] [nvarchar](100) NULL,
	[drawing_no] [varchar](20) NULL,
	[drawing_url] [nvarchar](200) NULL,
	[upg] [nvarchar](20) NULL,
	[pl_no] [nvarchar](20) NULL,
	[child_part_available] [varchar](5) NULL,
	[buyer_code] [nvarchar](20) NULL,
	[bom_verified_by] [varchar](30) NULL,
	[bom_approved_by] [varchar](30) NULL,
	[supplier_code] [varchar](20) NULL,
	[is_active] [bit] NULL,
	[pps] [nvarchar](10) NULL,
	[buyer_group] [varchar](10) NULL,
	[progress_manager] [varchar](5) NULL,
	[contract_code] [varchar](5) NULL,
	[contract_unit_price] [varchar](20) NULL,
	[unit_price_indicator] [varchar](2) NULL,
	[inspection_category] [varchar](2) NULL,
	[delivery_no] [int] NULL,
	[delivery_note_classification] [varchar](2) NULL,
	[receipt_no] [int] NULL,
	[sno_invoice_no] [varchar](5) NULL,
	[year] [varchar](2) NULL,
	[month] [varchar](2) NULL,
	[no] [int] NULL,
	[next_step] [varchar](4) NULL,
	[part_identification_code] [varchar](1) NULL,
	[production_group] [varchar](2) NULL,
	[childpart_excel_url] [nvarchar](max) NULL,
	[input_date_month] [varchar](6) NULL,
	[hakko_classification] [varchar](1) NULL,
	[hakko_season] [varchar](1) NULL,
	[delivery_factory] [nvarchar](1) NULL,
	[delivered_factory] [nvarchar](1) NULL,
	[lot_quantity] [int] NULL,
	[arrangement_type] [varchar](1) NULL,
	[payout_destination] [varchar](12) NULL,
	[modified_due_date] [date] NULL,
	[prefered_supplier_code] [varchar](5) NULL,
	[prefered_supplier_name] [nvarchar](100) NULL,
	[prefered_supplier_address] [nvarchar](200) NULL,
	[prefered_supplier_phone] [varchar](50) NULL,
	[prefered_supplier_email] [varchar](50) NULL,
	[shipping_mode_air] [varchar](10) NULL,
	[direct_overseas_delivery] [varchar](20) NULL,
	[designer] [varchar](50) NULL,
	[designer_department] [varchar](50) NULL,
	[desired_location] [varchar](10) NULL,
	[lm_expected_location] [nchar](10) NULL,
	[user_name_login] [varchar](50) NULL,
	[updated_on] [date] NULL,
 CONSTRAINT [PK_parts_details] PRIMARY KEY CLUSTERED 
(
	[shikeisho_no] ASC,
	[eo_no] ASC,
	[part_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PARTS_MASTER]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PARTS_MASTER](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[part_no] [varchar](50) NOT NULL,
	[part_name] [varchar](50) NULL,
	[cl] [varchar](50) NULL,
	[drawing_list_no] [varchar](50) NULL,
	[pps] [varchar](50) NULL,
	[generation] [int] NULL,
	[drawing_no] [varchar](50) NULL,
 CONSTRAINT [PK_PARTS_MASTER] PRIMARY KEY CLUSTERED 
(
	[part_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[parts_master_old]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parts_master_old](
	[id] [int] NULL,
	[part_no] [varchar](30) NOT NULL,
	[part_name] [nvarchar](50) NULL,
	[generation] [varchar](2) NULL,
	[part_identification_code] [varchar](1) NULL,
	[gl_no] [varchar](20) NOT NULL,
	[mc] [varchar](20) NULL,
	[pl_no] [varchar](20) NOT NULL,
	[vc] [varchar](20) NULL,
	[cl] [varchar](20) NULL,
	[lr] [varchar](10) NULL,
	[ol] [varchar](10) NULL,
	[plus_or_minus] [varchar](5) NULL,
	[is_or_was] [varchar](10) NULL,
	[quantity] [int] NULL,
	[pps] [nvarchar](5) NULL,
	[upg] [varchar](6) NULL,
	[drawing_list_no] [varchar](30) NULL,
	[drawing_no] [varchar](30) NULL,
	[cr_no] [varchar](20) NULL,
	[configuration_id] [varchar](1) NULL,
	[color_classification] [varchar](1) NULL,
	[drawing_segment] [varchar](1) NULL,
	[suppliment_classification] [varchar](1) NULL,
	[internal_external_classification] [varchar](1) NULL,
	[arrange_classification] [varchar](1) NULL,
	[component_payment_classification] [varchar](1) NULL,
	[material_classification] [varchar](1) NULL,
	[processing_division] [varchar](1) NULL,
	[cost_category] [varchar](1) NULL,
	[next_step1] [varchar](4) NULL,
	[next_step2] [varchar](4) NULL,
	[next_step3] [varchar](4) NULL,
	[next_step4] [varchar](4) NULL,
	[next_step5] [varchar](4) NULL,
	[kd_type] [varchar](6) NULL,
	[number] [varchar](50) NULL,
	[start_eo_no] [varchar](7) NULL,
	[start_eo_date] [varchar](8) NULL,
	[end_eo_no] [varchar](7) NULL,
	[end_eo_date] [varchar](8) NULL,
	[business_partner_code] [varchar](4) NULL,
	[contract_manager] [varchar](3) NULL,
	[purchase_application_period] [varchar](8) NULL,
	[unit_price] [varchar](12) NULL,
	[unit_price_indicator] [varchar](1) NULL,
	[eo_no] [varchar](6) NULL,
	[from_source] [varchar](4) NULL,
	[cut_off] [varchar](8) NULL,
 CONSTRAINT [PK_parts_master_old] PRIMARY KEY CLUSTERED 
(
	[part_no] ASC,
	[gl_no] ASC,
	[pl_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PL_PARTS_MASTER]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PL_PARTS_MASTER](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[pl_no] [varchar](50) NOT NULL,
	[part_no] [varchar](50) NOT NULL,
	[drawing_no] [varchar](50) NULL,
 CONSTRAINT [PK_PL_PARTS_MASTER] PRIMARY KEY CLUSTERED 
(
	[pl_no] ASC,
	[part_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[po_list]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[po_list](
	[po_number] [varchar](20) NULL,
	[supplier] [varchar](5) NULL,
	[po_date] [date] NULL,
	[po_url] [varchar](124) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[proc_department]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[proc_department](
	[Id] [int] NULL,
	[dept_code] [varchar](10) NULL,
	[dept_name] [nvarchar](100) NULL,
	[supplier_desc] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rfq_parts]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rfq_parts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shikeisho_no] [varchar](8) NOT NULL,
	[eo_no] [varchar](7) NULL,
	[part_no] [varchar](30) NOT NULL,
	[supplier_code] [varchar](20) NOT NULL,
	[desired_date] [date] NULL,
	[delivery_date] [date] NULL,
 CONSTRAINT [PK_rfq_parts] PRIMARY KEY CLUSTERED 
(
	[shikeisho_no] ASC,
	[part_no] ASC,
	[supplier_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[roles]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] NULL,
	[role_id] [varchar](10) NOT NULL,
	[role_name] [varchar](30) NULL,
	[role_desc] [nvarchar](50) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shikeisho]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shikeisho](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shikeisho_no] [varchar](8) NOT NULL,
	[designer] [nvarchar](50) NULL,
	[order_no] [varchar](10) NULL,
	[subject_en] [nvarchar](200) NULL,
	[subject_ja] [nvarchar](200) NULL,
	[machine_type] [nvarchar](10) NULL,
	[management_no] [varchar](10) NULL,
	[network_no] [varchar](10) NULL,
	[model] [varchar](10) NULL,
	[desired_date] [datetime] NULL,
	[production_volume_units] [int] NULL,
	[material_cost] [int] NULL,
	[requestor_code] [varchar](20) NULL,
	[requestorname] [nvarchar](50) NULL,
	[approval_dept_code] [varchar](6) NULL,
	[approval_dept_name] [nvarchar](50) NULL,
	[request_destination_code] [varchar](6) NULL,
	[request_destination_name] [nvarchar](50) NULL,
	[payout_destination1] [varchar](10) NULL,
	[payout_destination1_name] [nvarchar](50) NULL,
	[payout_destination2] [varchar](10) NULL,
	[payout_destination2_name] [nvarchar](50) NULL,
	[payout_destination3] [varchar](10) NULL,
	[payout_destination3_name] [nvarchar](50) NULL,
	[creation_date] [datetime] NULL,
	[delivery_location] [nvarchar](50) NULL,
	[created_on] [nvarchar](20) NULL,
	[date_of_issue] [datetime] NULL,
	[request_no] [varchar](10) NULL,
	[department] [varchar](10) NULL,
	[group_code] [varchar](10) NULL,
	[responsible_person_l4] [nvarchar](100) NULL,
	[person_in_charge] [nvarchar](50) NULL,
	[extension_l4] [varchar](15) NULL,
	[extension_in_charge] [nvarchar](50) NULL,
	[remarks] [nvarchar](200) NULL,
	[new_or_updated] [varchar](10) NULL,
	[shikeisho_status] [varchar](20) NULL,
	[user_name_login] [varchar](50) NULL,
	[updated_on] [datetime] NULL,
	[fund_approved_path] [nvarchar](200) NULL,
 CONSTRAINT [PK_shikeisho] PRIMARY KEY CLUSTERED 
(
	[shikeisho_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shikeisho_details]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shikeisho_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shikeisho_no] [varchar](8) NOT NULL,
	[eo_no] [varchar](7) NOT NULL,
	[designer] [nvarchar](50) NULL,
	[order_no] [varchar](10) NULL,
	[subject_en] [nvarchar](150) NULL,
	[subject_ja] [nvarchar](150) NULL,
	[management_no] [varchar](6) NULL,
	[sixth_digit] [varchar](1) NULL,
	[model] [varchar](10) NULL,
	[desired_date] [date] NULL,
	[material_cost] [int] NULL,
	[request_code] [varchar](6) NULL,
	[requestor_name] [nvarchar](50) NULL,
	[approval_dept_code] [varchar](6) NULL,
	[approval_dept_name] [nvarchar](50) NULL,
	[request_destination_code] [varchar](6) NULL,
	[request_destination_name] [nvarchar](50) NULL,
	[payout_destination1] [varchar](10) NULL,
	[payout_destination1_name] [nvarchar](50) NULL,
	[payout_destination2] [varchar](10) NULL,
	[payout_destination2_name] [nvarchar](50) NULL,
	[payout_destination3] [varchar](10) NULL,
	[payout_destination3_name] [nvarchar](50) NULL,
	[creation_date] [date] NULL,
	[delivery_date] [date] NULL,
	[delivery_location] [nvarchar](50) NULL,
	[created_on] [nvarchar](20) NULL,
	[date_of_issue] [date] NULL,
	[request_no] [varchar](10) NULL,
	[department] [varchar](10) NULL,
	[group_code] [varchar](10) NULL,
	[responsible_person_l4] [nvarchar](100) NULL,
	[person_in_charge] [nvarchar](100) NULL,
	[extension_l4] [varchar](15) NULL,
	[extension_in_charge] [nvarchar](15) NULL,
	[eo_status] [varchar](10) NULL,
	[shikeisho_status] [varchar](100) NULL CONSTRAINT [DF_shikeisho_details_shikeisho_status]  DEFAULT ('NEW'),
	[fund_approved_proof] [nvarchar](30) NULL,
	[fund_approved_path] [nvarchar](200) NULL,
	[lm_approved_by] [nvarchar](50) NULL,
	[lm_approved_date] [date] NULL,
	[pps] [varchar](15) NULL,
	[reason_for_cancel] [varchar](100) NULL,
	[user_name_login] [varchar](50) NULL,
	[updated_on] [date] NULL,
	[is_active] [bit] NULL,
	[assigned_user] [varchar](30) NULL,
	[compass_approved_date] [datetime] NULL,
	[domestic_overseas] [varchar](10) NULL,
	[network_management_no] [varchar](15) NULL,
	[remarks] [nvarchar](200) NULL,
	[reason_for_issue] [varchar](100) NULL,
	[background_of_desired_delivery] [varchar](100) NULL,
	[lm_expected_date] [date] NULL,
 CONSTRAINT [PK_shikeisho_details] PRIMARY KEY CLUSTERED 
(
	[shikeisho_no] ASC,
	[eo_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shipment_ut]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shipment_ut](
	[bookout_date] [datetime] NULL,
	[no] [varchar](10) NULL,
	[part_number] [varchar](20) NULL,
	[part_name] [varchar](30) NULL,
	[eo_from_mitsubishi_logistics] [varchar](30) NULL,
	[category_allocation] [varchar](10) NULL,
	[fuso_shikeisho_no] [varchar](10) NULL,
	[quantity] [int] NULL,
	[weight_per_piece] [int] NULL,
	[total_weight] [int] NULL,
	[date_for_parts_check] [datetime] NULL,
	[comments] [varchar](100) NULL,
	[shipping_mode] [varchar](20) NULL,
	[enlav_reser_vierungs_number] [varchar](20) NULL,
	[son_number] [varchar](20) NULL,
	[tracking_number] [varchar](20) NULL,
	[price_per_piece_related_to_order_no] [int] NULL,
	[price_per_piece_including_all_other_costs] [int] NULL,
	[price_per_piece_including_all_5markup] [int] NULL,
	[price_total_including_all_5markup] [int] NULL,
	[parts_checkut_completed] [varchar](20) NULL,
	[price_total_piece_including_all_othercosts] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[status]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[status](
	[status_id] [int] NULL,
	[status_code] [varchar](15) NULL,
	[status_desc] [varchar](30) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suppliers](
	[id] [int] NOT NULL,
	[globus_code] [varchar](50) NULL,
	[local_code] [varchar](50) NULL,
	[supplier_name_ja] [nvarchar](100) NULL,
	[supplier_name_en] [nvarchar](100) NULL,
	[supplier_type] [nvarchar](50) NULL,
	[department] [varchar](50) NULL,
	[buyer_name] [nvarchar](50) NULL,
	[assistant_name] [nvarchar](50) NULL,
	[post_code] [varchar](50) NULL,
	[address] [nvarchar](200) NULL,
	[telephone] [varchar](50) NULL,
	[contact_person] [nvarchar](50) NULL,
	[email] [varchar](max) NULL,
	[comment] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tdb0111]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tdb0111](
	[shikeisho_no] [varchar](8) NULL,
	[subject] [varchar](62) NULL,
	[subject_half] [varchar](30) NULL,
	[arrangement_eo_number] [varchar](7) NULL,
	[model] [varchar](8) NULL,
	[order_no] [varchar](10) NULL,
	[control_number] [varchar](6) NULL,
	[prototype_number] [int] NULL,
	[test_requester] [varchar](4) NULL,
	[test_requested_party] [varchar](4) NULL,
	[parts_to_be_paid_out] [varchar](12) NULL,
	[parts_to_be_paidout1_number] [int] NULL,
	[number_of_parts_payout_destinations2] [int] NULL,
	[number_of_parts_destinations3] [int] NULL,
	[planned_order_completion_date] [datetime] NULL,
	[part_congregation_completion_date] [datetime] NULL,
	[delivery_date] [datetime] NULL,
	[number_of_registered_parts] [int] NULL,
	[number_of_orders] [int] NULL,
	[delivery_number] [int] NULL,
	[number_of_stocks] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tdb0211]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tdb0211](
	[shikeisho_no] [nvarchar](8) NULL,
	[part_number] [varchar](16) NULL,
	[registered_quantity] [int] NULL,
	[goods_receipt_completion_flag] [varchar](1) NULL,
	[goods_issue_completion_flag] [varchar](1) NULL,
	[latest_order_date] [datetime] NULL,
	[latest_delivery_date] [datetime] NULL,
	[total_order_quantity] [int] NULL,
	[order_quantity] [int] NULL,
	[total_delivered_quantity] [int] NULL,
	[ticket_issue_and_delivery_by_destination_1] [int] NULL,
	[ticket_issue_and_delivery_by_destination_2] [int] NULL,
	[ticket_issue_and_delivery_by_destination_3] [int] NULL,
	[ticket_issue_and_delivery_by_destination_4] [int] NULL,
	[ticket_issue_and_delivery_by_destination_5] [int] NULL,
	[terminal_1_for_trial_manufacture] [varchar](5) NULL,
	[terminal_2_for_trial_production] [varchar](4) NULL,
	[terminal_3_for_trial_manufacture] [varchar](4) NULL,
	[terminal_4_for_trial_manufacture] [varchar](4) NULL,
	[terminal_5_for_trial_manufacture] [varchar](4) NULL,
	[employee_number] [varchar](5) NULL,
	[update_date] [datetime] NULL,
	[date_of_registration] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tdb0311]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tdb0311](
	[order_number] [varchar](8) NULL,
	[shikeisho_no] [varchar](8) NULL,
	[part_number] [varchar](16) NULL,
	[gl_no] [varchar](12) NULL,
	[pl_no] [varchar](12) NULL,
	[suppliers] [varchar](4) NULL,
	[order_date] [varchar](8) NULL,
	[number_of_orders] [int] NULL,
	[unit_purchase_price] [int] NULL,
	[purchase_price] [int] NULL,
	[purchase_multiplier] [int] NULL,
	[unit_price_determination_date] [datetime] NULL,
	[interior_unit_price] [int] NULL,
	[temporary_unit_price_classification] [varchar](1) NULL,
	[provisional_unit_price] [int] NULL,
	[registration_division] [varchar](1) NULL,
	[material_branch] [varchar](1) NULL,
	[journalist] [varchar](2) NULL,
	[design_in_market_mark] [varchar](1) NULL,
	[initial_classification] [varchar](1) NULL,
	[with_or_without_configuration] [varchar](1) NULL,
	[next_step] [varchar](4) NULL,
	[in_charge_of_process] [varchar](2) NULL,
	[contract_manager] [varchar](3) NULL,
	[urgency] [varchar](1) NULL,
	[internal_delivery_time] [varchar](8) NULL,
	[destination_eono] [varchar](8) NULL,
	[payment_material_code] [varchar](12) NULL,
	[purchased_party] [varchar](4) NULL,
	[material_support_date] [datetime] NULL,
	[payment_completion_date] [datetime] NULL,
	[order_due_date] [datetime] NULL,
	[delivery_date_answer_date] [datetime] NULL,
	[corrected_delivery_date] [datetime] NULL,
	[modification_count] [int] NULL,
	[due_date] [datetime] NULL,
	[provisionally_delivered_quantity] [int] NULL,
	[delivery_total] [int] NULL,
	[quantity_delivered_on_the_day] [int] NULL,
	[inspection_category] [varchar](1) NULL,
	[inspection_weight] [int] NULL,
	[in_charge_of_inspection] [varchar](1) NULL,
	[inspection_completion_date] [datetime] NULL,
	[present_status_record] [varchar](1) NULL,
	[defect_occurrence_date] [datetime] NULL,
	[defect_code] [varchar](2) NULL,
	[defect_determination_number] [varchar](5) NULL,
	[bad_cumulative] [int] NULL,
	[defective_quantity_on_the_day] [int] NULL,
	[order_cancellation_date] [datetime] NULL,
	[cancellation_indicator] [varchar](1) NULL,
	[reason_for_cancellation] [varchar](1) NULL,
	[employee_number] [varchar](5) NULL,
	[update_date] [nvarchar](50) NULL,
	[date_of_registration] [nvarchar](50) NULL,
	[regular_order_quantity] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tdb0411]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tdb0411](
	[shikeisho_no] [varchar](8) NULL,
	[part_number] [varchar](16) NULL,
	[section_code] [varchar](4) NULL,
	[cumulative_goods_receipt] [int] NULL,
	[goods_receipt_1] [int] NULL,
	[goods_receipt_2] [int] NULL,
	[goods_receipt_3] [int] NULL,
	[goods_receipt_4] [int] NULL,
	[goods_receipt_5] [int] NULL,
	[goods_receipt_6] [int] NULL,
	[goods_receipt_7] [int] NULL,
	[goods_receipt_8] [int] NULL,
	[goods_receipt_9] [int] NULL,
	[goods_receipt_10] [int] NULL,
	[goods_receipt_date_1] [datetime] NULL,
	[goods_receipt_date_2] [datetime] NULL,
	[goods_receipt_date_3] [datetime] NULL,
	[goods_receipt_date_4] [datetime] NULL,
	[goods_receipt_date_5] [datetime] NULL,
	[goods_receipt_date_6] [datetime] NULL,
	[goods_receipt_date_7] [datetime] NULL,
	[goods_receipt_date_8] [datetime] NULL,
	[goods_receipt_date_9] [datetime] NULL,
	[goods_receipt_date_10] [datetime] NULL,
	[goods_receipt_processing_date_1] [datetime] NULL,
	[goods_receipt_processing_date_2] [datetime] NULL,
	[goods_receipt_processing_date_3] [datetime] NULL,
	[goods_receipt_processing_date_4] [datetime] NULL,
	[goods_receipt_processing_date_5] [datetime] NULL,
	[goods_receipt_processing_date_6] [datetime] NULL,
	[goods_receipt_processing_date_7] [datetime] NULL,
	[goods_receipt_processing_date_8] [datetime] NULL,
	[goods_receipt_processing_date_9] [datetime] NULL,
	[goods_receipt_processing_date_10] [datetime] NULL,
	[total_issue] [int] NULL,
	[goods_issue_1] [int] NULL,
	[goods_issue_2] [int] NULL,
	[goods_issue_3] [int] NULL,
	[goods_issue_4] [int] NULL,
	[goods_issue_5] [int] NULL,
	[goods_issue_6] [int] NULL,
	[goods_issue_7] [int] NULL,
	[goods_issue_8] [int] NULL,
	[goods_issue_9] [int] NULL,
	[goods_issue_10] [int] NULL,
	[goods_issue_date_1] [datetime] NULL,
	[goods_issue_date_2] [datetime] NULL,
	[goods_issue_date_3] [datetime] NULL,
	[goods_issue_date_4] [datetime] NULL,
	[goods_issue_date_5] [datetime] NULL,
	[goods_issue_date_6] [datetime] NULL,
	[goods_issue_date_7] [datetime] NULL,
	[goods_issue_date_8] [datetime] NULL,
	[goods_issue_date_9] [datetime] NULL,
	[goods_issue_date_10] [datetime] NULL,
	[goods_issue_processing_date_1] [datetime] NULL,
	[goods_issue_processing_date_2] [datetime] NULL,
	[goods_issue_processing_date_3] [datetime] NULL,
	[goods_issue_processing_date_4] [datetime] NULL,
	[goods_issue_processing_date_5] [datetime] NULL,
	[goods_issue_processing_date_6] [datetime] NULL,
	[goods_issue_processing_date_7] [datetime] NULL,
	[goods_issue_processing_date_8] [datetime] NULL,
	[goods_issue_processing_date_9] [datetime] NULL,
	[goods_issue_processing_date_10] [datetime] NULL,
	[number_of_stocks] [int] NULL,
	[location_1] [varchar](4) NULL,
	[location_2] [varchar](4) NULL,
	[location_3] [varchar](4) NULL,
	[remark_1] [varchar](10) NULL,
	[remark_2] [varchar](10) NULL,
	[remark_3] [varchar](10) NULL,
	[remark_4] [varchar](10) NULL,
	[remark_5] [varchar](10) NULL,
	[remark_6] [varchar](10) NULL,
	[remark_7] [varchar](10) NULL,
	[remark_8] [varchar](10) NULL,
	[remark_9] [varchar](10) NULL,
	[remark_10] [varchar](10) NULL,
	[purchase_request_order] [varchar](10) NULL,
	[physical_inventory_quantity] [int] NULL,
	[physical_inventory_processing_date] [datetime] NULL,
	[physical_inventory_location] [varchar](4) NULL,
	[physical_inventory_order] [varchar](10) NULL,
	[theoretical_inventory_count] [int] NULL,
	[theoretical_inventory_processing_date] [datetime] NULL,
	[total_goods_receipt_on_the_day] [int] NULL,
	[accumulated_total_of_goods_issue_on_the_day] [int] NULL,
	[employee_number] [varchar](5) NULL,
	[update_date] [datetime] NULL,
	[registration_date] [datetime] NULL,
	[number_of_receipts_exceeded] [int] NULL,
	[number_of_shipments_exceeded] [int] NULL,
	[storage_cumulative_goods_receipt_for_the_current_month] [int] NULL,
	[storage_cumulative_issue_of_the_current_month] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tdb0511]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tdb0511](
	[part_number] [varchar](16) NULL,
	[parts_name] [varchar](30) NULL,
	[design_estimate_unit_price] [int] NULL,
	[estimated_design_cost] [int] NULL,
	[prototype_estimate_unit_price] [int] NULL,
	[total_stock_number] [int] NULL,
	[inventory_availability_classification] [varchar](1) NULL,
	[lead_time] [int] NULL,
	[arrange_classification] [varchar](1) NULL,
	[suppliers] [varchar](4) NULL,
	[next_step] [varchar](4) NULL,
	[material_branch] [varchar](1) NULL,
	[reference_part_number] [varchar](16) NULL,
	[purchase_cancellation_classification] [varchar](1) NULL,
	[reason_for_cancellation_of_order] [varchar](1) NULL,
	[order_cancellation_date] [datetime] NULL,
	[employee_number] [varchar](5) NULL,
	[update_date] [datetime] NULL,
	[registration_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpCommoditiesBuyersList]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpCommoditiesBuyersList](
	[DC2_code] [varchar](10) NULL,
	[DC2_commodity_name] [varchar](50) NULL,
	[detailed_DC_code] [varchar](20) NULL,
	[detailed_commodity_name] [varchar](100) NULL,
	[location] [nvarchar](100) NULL,
	[team] [varchar](50) NULL,
	[buyer] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpDrawing]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpDrawing](
	[eo_no] [varchar](6) NOT NULL,
	[processing_date] [varchar](8) NOT NULL,
	[eo_no2] [varchar](6) NOT NULL,
	[implementation_category] [varchar](2) NOT NULL,
	[drawing_number] [varchar](16) NOT NULL,
	[cl] [varchar](2) NOT NULL,
	[part_number] [varchar](16) NOT NULL,
	[dwgcl] [varchar](2) NOT NULL,
	[pps] [varchar](1) NOT NULL,
	[identity１] [varchar](1) NOT NULL,
	[sdpart] [varchar](1) NOT NULL,
	[org] [varchar](1) NOT NULL,
	[reference_part_number] [varchar](16) NOT NULL,
	[epv] [nvarchar](50) NOT NULL,
	[reserve] [varchar](1) NOT NULL,
	[supplier_cost] [varchar](6) NOT NULL,
	[supplier_name] [nvarchar](50) NOT NULL,
	[url] [nvarchar](163) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpEoDb]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpEoDb](
	[eo_number] [varchar](50) NULL,
	[eo_classification] [varchar](2) NULL,
	[reception_date_regular] [varchar](20) NULL,
	[reception_date_provisional] [varchar](20) NULL,
	[reception_date_old] [varchar](20) NULL,
	[reason_for_change] [varchar](10) NULL,
	[implementation_category] [varchar](10) NULL,
	[switching_condition] [varchar](5) NULL,
	[management_section] [varchar](5) NULL,
	[management_section_2] [varchar](5) NULL,
	[no_act] [varchar](5) NULL,
	[model] [varchar](20) NULL,
	[regular_eo_1] [varchar](10) NULL,
	[regular_eo_2] [varchar](10) NULL,
	[summary_eo] [varchar](10) NULL,
	[no_act_reference_eo] [varchar](10) NULL,
	[eo_before_division] [varchar](10) NULL,
	[reply_deadline] [varchar](20) NULL,
	[filler] [varchar](5) NULL,
	[response_due_date_eo_change_schedule_date] [varchar](20) NULL,
	[scheduled_delivery_date_of_parts] [varchar](20) NULL,
	[planned_processing_date_timer] [varchar](20) NULL,
	[line_code_1] [varchar](5) NULL,
	[line_code_2] [varchar](5) NULL,
	[line_code_3] [varchar](5) NULL,
	[line_code_4] [varchar](5) NULL,
	[several_number_part_child_segments] [varchar](5) NULL,
	[eo_reception_processing_date] [varchar](20) NULL,
	[eo_reception_processing_time] [varchar](20) NULL,
	[eo_reception_processing_terminal] [varchar](8) NULL,
	[construction_processing_date] [varchar](20) NULL,
	[construction_processing_name] [varchar](30) NULL,
	[answer_processing_date] [varchar](20) NULL,
	[answer_processing_name] [varchar](30) NULL,
	[split_processing_date] [varchar](20) NULL,
	[split_processing_name] [varchar](30) NULL,
	[data_generation_classification] [varchar](5) NULL,
	[compatibility_presence] [varchar](20) NULL,
	[filler_2] [varchar](5) NULL,
	[receipt_date_for_inquiries] [varchar](20) NULL,
	[filler_3] [varchar](5) NULL,
	[eo] [varchar](6) NULL,
	[issue_number] [varchar](10) NULL,
	[line_no] [varchar](20) NULL,
	[arrange_classification] [varchar](3) NULL,
	[internal_and_external_classification] [varchar](5) NULL,
	[first_item_classification] [varchar](3) NULL,
	[payment_category] [varchar](5) NULL,
	[generation] [varchar](3) NULL,
	[suppliers] [varchar](5) NULL,
	[part_number_new] [varchar](50) NULL,
	[cl] [varchar](3) NULL,
	[number] [varchar](5) NULL,
	[part_name_new] [varchar](30) NULL,
	[part_number_old] [varchar](20) NULL,
	[cl_2] [varchar](3) NULL,
	[number_2] [varchar](5) NULL,
	[part_name_old] [varchar](30) NULL,
	[upg] [varchar](6) NULL,
	[issue_number_2] [varchar](10) NULL,
	[answer_date] [varchar](20) NULL,
	[delivery_time] [varchar](20) NULL,
	[delivered_delivery_date] [varchar](20) NULL,
	[scheduled_changeover_date] [varchar](20) NULL,
	[scheduled_delivery_date] [varchar](20) NULL,
	[reply_deadline_2] [varchar](20) NULL,
	[remark] [varchar](50) NULL,
	[presence_of_output] [varchar](50) NULL,
	[contact_table_output_date] [varchar](20) NULL,
	[contract_co] [varchar](5) NULL,
	[progress] [varchar](5) NULL,
	[contact_sheet] [varchar](50) NULL,
	[recovery_decision_mark] [varchar](10) NULL,
	[purchasing_department_recovery_date] [varchar](20) NULL,
	[attribute1] [varchar](50) NULL,
	[attribute2] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpEpics]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpEpics](
	[pl_no] [varchar](11) NULL,
	[vc] [varchar](4) NULL,
	[part_no] [varchar](16) NULL,
	[generation] [varchar](2) NULL,
	[child_part_no] [varchar](16) NULL,
	[part_identification_code] [varchar](1) NULL,
	[configuration_id] [varchar](1) NULL,
	[part_id] [varchar](1) NULL,
	[color_classification] [varchar](1) NULL,
	[part_name] [varchar](20) NULL,
	[drawing_segment] [varchar](1) NULL,
	[suppliment_classification] [varchar](1) NULL,
	[internal_external_classification] [varchar](1) NULL,
	[arrange_classification] [varchar](1) NULL,
	[component_payment_classification] [varchar](1) NULL,
	[material_classification] [varchar](1) NULL,
	[processing_division] [varchar](1) NULL,
	[cost_category] [varchar](1) NULL,
	[next_step1] [varchar](4) NULL,
	[next_step2] [varchar](4) NULL,
	[next_step3] [varchar](4) NULL,
	[next_step4] [varchar](4) NULL,
	[next_step5] [varchar](4) NULL,
	[kd_type] [varchar](6) NULL,
	[number] [varchar](50) NULL,
	[start_eo_no] [varchar](7) NULL,
	[start_eo_date] [varchar](8) NULL,
	[end_eo_no] [varchar](7) NULL,
	[end_eo_date] [varchar](8) NULL,
	[business_partner_code] [varchar](4) NULL,
	[contract_manager] [varchar](3) NULL,
	[purchase_application_period] [varchar](8) NULL,
	[unit_price] [varchar](12) NULL,
	[unit_price_indicator] [varchar](1) NULL,
	[pps] [varchar](1) NULL,
	[eo_no] [varchar](6) NULL,
	[cl] [varchar](2) NULL,
	[from_source] [varchar](4) NULL,
	[cut_off] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpEreqToWebereq]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpEreqToWebereq](
	[eo_no] [varchar](100) NULL,
	[date_of_issue] [varchar](100) NULL,
	[part_number] [varchar](200) NULL,
	[purchase_deadline] [datetime] NULL,
	[contract_person_code] [varchar](100) NULL,
	[planning_department_personnel_code] [varchar](100) NULL,
	[customer_code] [varchar](100) NULL,
	[emergency_classification] [varchar](50) NULL,
	[reserve2] [varchar](50) NULL,
	[reference_part_no] [varchar](200) NULL,
	[specifications] [varchar](100) NULL,
	[reserve3] [varchar](100) NULL,
	[url_diass] [nvarchar](100) NULL,
	[emergency_classification2] [varchar](50) NULL,
	[switching_day] [datetime] NULL,
	[delivered_factory] [varchar](100) NULL,
	[unit_price_indicator] [int] NULL,
	[reserve4] [varchar](50) NULL,
	[starting_year1] [varchar](50) NULL,
	[reserve5] [int] NULL,
	[epu1] [int] NULL,
	[start_year2] [varchar](50) NULL,
	[reserve6] [int] NULL,
	[epu2] [int] NULL,
	[reserve7] [int] NULL,
	[wait_date] [datetime] NULL,
	[release_date] [datetime] NULL,
	[epics_registered_flag] [varchar](50) NULL,
	[s_flg] [varchar](50) NULL,
	[reserve8] [int] NULL,
	[drawing_no] [varchar](201) NULL,
	[upg] [varchar](100) NULL,
	[fm_code] [varchar](100) NULL,
	[upc] [int] NULL,
	[pps] [varchar](1) NULL,
	[reception_desk] [varchar](100) NULL,
	[model] [varchar](100) NULL,
	[reference_part_no_unit_price] [varchar](100) NULL,
	[current_part_number_end_date] [datetime] NULL,
	[switching_date] [datetime] NULL,
	[scheduled_delivery_date_of_parts] [datetime] NULL,
	[parts_name] [nvarchar](100) NULL,
	[contractor_reference_part_number] [varchar](200) NULL,
	[recovery_reference_number] [varchar](100) NULL,
	[notices] [nvarchar](100) NULL,
	[url_parts_composition_csv] [nvarchar](100) NULL,
	[reserve9] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpLmParts]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpLmParts](
	[no] [int] NULL,
	[entry_classification] [varchar](5) NULL,
	[part_check_classification] [varchar](5) NULL,
	[shikeisho_no] [nvarchar](8) NULL,
	[part_no] [nvarchar](100) NULL,
	[part_name] [nvarchar](100) NULL,
	[ordered_quantity] [int] NULL,
	[order_relase_date] [datetime] NULL,
	[order_delivery_date] [datetime] NULL,
	[delivery_date] [datetime] NULL,
	[delivery_count] [int] NULL,
	[supplier_chord] [nvarchar](20) NULL,
	[order_no] [nvarchar](10) NULL,
	[cumulative_goods_receipts] [int] NULL,
	[cumulative_goods_delivery] [int] NULL,
	[cumulative_inventory] [int] NULL,
	[location] [nvarchar](100) NULL,
	[goods_delivery_date] [datetime] NULL,
	[goods_receipt_date] [datetime] NULL,
	[next_process] [nvarchar](100) NULL,
	[upg] [nvarchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpLmShikeisho]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpLmShikeisho](
	[id] [int] NULL,
	[status] [nvarchar](10) NULL,
	[shikeisho_no] [varchar](10) NULL,
	[revision] [nvarchar](20) NULL,
	[management_no] [varchar](10) NULL,
	[sixth_digit] [varchar](1) NULL,
	[eo_no] [varchar](10) NULL,
	[registration_date] [datetime] NULL,
	[lm_in_charge] [nvarchar](50) NULL,
	[desired_delivery_date] [datetime] NULL,
	[check134] [nvarchar](20) NULL,
	[text126] [nvarchar](20) NULL,
	[order_delivery] [datetime] NULL,
	[arrangement_completion_date] [datetime] NULL,
	[remarks] [nvarchar](50) NULL,
	[in_progress] [nvarchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpPUC]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpPUC](
	[message_type] [varchar](15) NULL,
	[data_partition] [varchar](1) NULL,
	[sending_receiving_number] [int] NULL,
	[data_sequence_number] [varchar](50) NULL,
	[reception_date] [datetime] NULL,
	[sequence_number_by_reception_day] [varchar](7) NULL,
	[document_number] [varchar](15) NULL,
	[tentative_classification] [varchar](1) NULL,
	[approval_date] [datetime] NULL,
	[with_or_without_expiration_date] [datetime] NULL,
	[globus_employee_code] [varchar](7) NULL,
	[globus_delivered_factory] [varchar](4) NULL,
	[recovery] [varchar](8) NULL,
	[language] [varchar](1) NULL,
	[part_no] [varchar](30) NULL,
	[component_part_number] [varchar](30) NULL,
	[part_no_type] [varchar](1) NULL,
	[part_no_name] [varchar](60) NULL,
	[upg] [varchar](6) NULL,
	[upc] [varchar](5) NULL,
	[system_id] [varchar](1) NULL,
	[part_id] [varchar](1) NULL,
	[internal_and_external_classification] [varchar](1) NULL,
	[possession_without_ownership] [varchar](1) NULL,
	[no_support_without_division] [varchar](1) NULL,
	[component_payment_classification] [varchar](1) NULL,
	[unit] [varchar](4) NULL,
	[payment_terms] [varchar](5) NULL,
	[packaging_conditions] [varchar](5) NULL,
	[return_condition] [varchar](5) NULL,
	[delivery_lot_size] [varchar](14) NULL,
	[globus_plant_code] [varchar](4) NULL,
	[usage_in_the_current_fiscal_year] [varchar](14) NULL,
	[order_placement_rate] [varchar](3) NULL,
	[delivery_conditions] [varchar](5) NULL,
	[delivery_place] [varchar](5) NULL,
	[application_period_start_date] [datetime] NULL,
	[application_period_end_date] [datetime] NULL,
	[currency_code] [varchar](3) NULL,
	[reason_for_price_change] [varchar](4) NULL,
	[number_of_prototypes_applied] [varchar](1) NULL,
	[assumed_quantity] [varchar](14) NULL,
	[purchase_price] [varchar](15) NULL,
	[contract_unit_price] [varchar](15) NULL,
	[single_district] [varchar](1) NULL,
	[summary_unit_of_measure] [varchar](5) NULL,
	[charge_code] [varchar](4) NULL,
	[charge_name] [varchar](70) NULL,
	[unit_price_validity_indicator] [varchar](1) NULL,
	[addon_price] [varchar](15) NULL,
	[addon_ratio] [varchar](6) NULL,
	[delivery_made] [varchar](1) NULL,
	[single_district2] [varchar](1) NULL,
	[revision_code] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpPUO]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpPUO](
	[message_type] [varchar](15) NULL,
	[data_partition] [varchar](2) NULL,
	[sending_receiving_number_counter] [varchar](12) NULL,
	[data_sequence_number] [varchar](9) NULL,
	[reception_date] [datetime] NULL,
	[sequence_number_by_reception_day] [varchar](10) NULL,
	[document_number_contract_number] [varchar](15) NULL,
	[tentative_classification] [varchar](2) NULL,
	[approval_date] [datetime] NULL,
	[personal_code] [varchar](7) NULL,
	[buyer_belonging_plant_code] [varchar](4) NULL,
	[recovery] [varchar](8) NULL,
	[language] [varchar](1) NULL,
	[part_no] [varchar](30) NULL,
	[component_part_number] [varchar](30) NULL,
	[part_no_type] [varchar](1) NULL,
	[part_no_name] [varchar](60) NULL,
	[upg] [varchar](6) NULL,
	[upc] [varchar](5) NULL,
	[system_id] [varchar](1) NULL,
	[part_id] [varchar](1) NULL,
	[internal_and_external_classification] [varchar](1) NULL,
	[possession_without_ownership] [varchar](1) NULL,
	[no_support_without_division] [varchar](1) NULL,
	[component_payment_classification] [varchar](1) NULL,
	[unit] [varchar](4) NULL,
	[payment_terms] [varchar](5) NULL,
	[delivery_conditions] [varchar](5) NULL,
	[packaging_conditions] [varchar](5) NULL,
	[return_condition] [varchar](5) NULL,
	[delivery_factory] [varchar](4) NULL,
	[usage_in_thecurrent_fiscal_year] [varchar](16) NULL,
	[validity_period_indicator] [varchar](4) NULL,
	[applicable_number_of_prototypes] [varchar](14) NULL,
	[due_date] [datetime] NULL,
	[delivery_unit] [varchar](14) NULL,
	[delivery_place] [varchar](5) NULL,
	[application_period_start_date] [datetime] NULL,
	[application_period_end_date] [datetime] NULL,
	[currency_code] [varchar](3) NULL,
	[reason_for_price_change] [varchar](4) NULL,
	[number_of_prototypes_applied] [varchar](14) NULL,
	[purchase_price] [varchar](15) NULL,
	[contract_unit_price] [varchar](15) NULL,
	[single_district] [varchar](1) NULL,
	[summary_unit_of_measure] [varchar](5) NULL,
	[charge_code] [varchar](4) NULL,
	[charge_name] [varchar](70) NULL,
	[unit_price_validity_indicator] [varchar](1) NULL,
	[addon_price] [varchar](15) NULL,
	[addon_ratio] [varchar](6) NULL,
	[delivery_made] [varchar](1) NULL,
	[single_district2] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpShikeisho]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpShikeisho](
	[shikeisho_no] [varchar](8) NOT NULL,
	[designer] [nvarchar](50) NULL,
	[order_no] [varchar](10) NULL,
	[subject_en] [nvarchar](200) NULL,
	[subject_ja] [nvarchar](200) NULL,
	[machine_type] [nvarchar](10) NULL,
	[management_no] [varchar](6) NULL,
	[network_no] [varchar](10) NULL,
	[desired_date] [datetime] NULL,
	[production_volume_units] [int] NULL,
	[material_cost] [int] NULL,
	[requestor_code] [varchar](20) NULL,
	[approval_dept_code] [varchar](6) NULL,
	[request_destination_code] [varchar](6) NULL,
	[payout_destination1] [varchar](10) NULL,
	[payout_destination2] [varchar](10) NULL,
	[payout_destination3] [varchar](10) NULL,
	[creation_date] [datetime] NULL,
	[delivery_location] [nvarchar](50) NULL,
	[created_on] [nvarchar](20) NULL,
	[date_of_issue] [datetime] NULL,
	[request_no] [varchar](10) NULL,
	[department] [varchar](10) NULL,
	[group_code] [varchar](10) NULL,
	[responsible_person_l4] [nvarchar](100) NULL,
	[person_in_charge] [nvarchar](50) NULL,
	[extension_l4] [varchar](15) NULL,
	[extension_in_charge] [nvarchar](50) NULL,
	[remarks] [nvarchar](200) NULL,
	[new_or_updated] [varchar](10) NULL,
	[user_name_login] [varchar](50) NULL,
	[updated_on] [datetime] NULL,
	[eo_no] [varchar](6) NOT NULL,
	[fund_approved_path] [nvarchar](200) NULL,
 CONSTRAINT [PK_TmpShikeisho] PRIMARY KEY CLUSTERED 
(
	[shikeisho_no] ASC,
	[eo_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpShikeishoParts]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpShikeishoParts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shikeisho_no] [varchar](8) NOT NULL,
	[prototype_code] [varchar](10) NULL,
	[district] [nvarchar](10) NULL,
	[generation] [nvarchar](20) NULL,
	[part_no] [varchar](30) NOT NULL,
	[part_name] [nvarchar](50) NULL,
	[requested_quantity] [int] NULL,
	[internal_delivery_time] [datetime] NULL,
	[implementation_instructions] [nvarchar](100) NULL,
	[upg] [nvarchar](20) NULL,
	[interior_make] [nvarchar](20) NULL,
	[part_remarks] [nvarchar](200) NULL,
	[eo_no] [varchar](6) NULL,
 CONSTRAINT [PK_TmpShikeishoParts] PRIMARY KEY CLUSTERED 
(
	[shikeisho_no] ASC,
	[part_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpSupplier]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpSupplier](
	[supplier_code] [varchar](10) NULL,
	[buyer_code] [varchar](10) NULL,
	[buyer_name] [nvarchar](50) NULL,
	[mail_maker] [nvarchar](120) NULL,
	[supplier_company] [nvarchar](100) NULL,
	[supplier_assistant] [nvarchar](50) NULL,
	[purchase_order] [nvarchar](5) NULL,
	[department_code] [nvarchar](20) NULL,
	[department_signature] [nvarchar](100) NULL,
	[remarks_column] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TmpWebEreq]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TmpWebEreq](
	[eo_no] [varchar](7) NULL,
	[issue_number] [varchar](7) NULL,
	[part_number] [varchar](16) NULL,
	[purchase_deadline] [date] NULL,
	[contract_person_code] [varchar](3) NULL,
	[planning_department_personnel_code] [varchar](8) NULL,
	[customer_code] [varchar](4) NULL,
	[emergency_classification] [varchar](2) NULL,
	[reserve] [varchar](5) NULL,
	[reference_part_number] [varchar](16) NULL,
	[specifications] [varchar](16) NULL,
	[reserve1] [varchar](1) NULL,
	[url_diass] [varchar](40) NULL,
	[emergency_classification1] [varchar](1) NULL,
	[switching_day] [date] NULL,
	[delivered_factory] [varchar](1) NULL,
	[unit_price_indicator] [varchar](1) NULL,
	[reserve2] [varchar](4) NULL,
	[starting_year_1] [varchar](4) NULL,
	[reserve3] [varchar](4) NULL,
	[epu 1] [varchar](6) NULL,
	[start_year_2] [varchar](4) NULL,
	[reserve4] [varchar](4) NULL,
	[epu_2] [varchar](6) NULL,
	[reserve5] [varchar](1) NULL,
	[wait_date] [date] NULL,
	[release_date] [date] NULL,
	[epics_registered_flg] [varchar](1) NULL,
	[s_flg] [varchar](1) NULL,
	[reserve6] [varchar](5) NULL,
	[drawing_number] [varchar](16) NULL,
	[upg] [varchar](6) NULL,
	[fm_code] [varchar](6) NULL,
	[upc] [varchar](5) NULL,
	[pps] [varchar](1) NULL,
	[reception_desk] [varchar](20) NULL,
	[model] [varchar](30) NULL,
	[reference_part_number_unit_price] [varchar](10) NULL,
	[current_part_number_end_date] [date] NULL,
	[switching_date] [date] NULL,
	[scheduled_delivery_date_of_parts] [date] NULL,
	[parts_name] [varchar](15) NULL,
	[6_month_forecast_quantity] [varchar](7) NULL,
	[notices] [nvarchar](72) NULL,
	[url_parts_composition_csv] [nvarchar](50) NULL,
	[reserve7] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_roles]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_roles](
	[id] [int] NULL,
	[user_id] [varchar](100) NOT NULL,
	[role_id] [varchar](10) NOT NULL,
 CONSTRAINT [PK_user_roles] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NULL,
	[user_id] [varchar](100) NOT NULL,
	[first_name] [nvarchar](100) NULL,
	[last_name] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[user_status] [varchar](20) NULL,
	[designation] [nvarchar](50) NULL,
	[contact_no] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[group_id] [varchar](10) NULL,
	[department_id] [varchar](10) NULL,
	[registered_date] [date] NULL,
	[approved_by] [varchar](100) NULL,
	[approved_date] [date] NULL,
	[notify_shikeishyo_flag] [tinyint] NULL,
	[profile_pic] [varchar](max) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[buyers]  WITH CHECK ADD  CONSTRAINT [FK_buyers_buyers_group] FOREIGN KEY([buyer_group_code])
REFERENCES [dbo].[buyers_group] ([group_code])
GO
ALTER TABLE [dbo].[buyers] CHECK CONSTRAINT [FK_buyers_buyers_group]
GO
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD  CONSTRAINT [FK_user_roles_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([role_id])
GO
ALTER TABLE [dbo].[user_roles] CHECK CONSTRAINT [FK_user_roles_roles]
GO
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD  CONSTRAINT [FK_user_roles_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[user_roles] CHECK CONSTRAINT [FK_user_roles_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_users] FOREIGN KEY([department_id])
REFERENCES [dbo].[department] ([dept_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_users]
GO
ALTER TABLE [dbo].[users]  WITH NOCHECK ADD  CONSTRAINT [FK_users_users1] FOREIGN KEY([approved_by])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[users] NOCHECK CONSTRAINT [FK_users_users1]
GO
/****** Object:  StoredProcedure [dbo].[addBuyerstoGroup]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
CREATE PROCEDURE [dbo].[addBuyerstoGroup]

@buyerGroupName varchar(50),
@userIds varchar(200)

AS	
BEGIN
		
	DECLARE @GROUP_CODE varchar(100)
	DECLARE @USER_ID varchar(100)

	DECLARE @pos INT
	DECLARE @len INT
	DECLARE @value varchar(8000)

	DECLARE @BUYER_FNAME varchar(100)
	DECLARE @BUYER_LNAME varchar(100)
	DECLARE @BUYER_EMAIL varchar(100)



	IF EXISTS(SELECT 1 FROM dbo.buyers_group WHERE group_code = @buyerGroupName)
	
		SELECT @GROUP_CODE = @buyerGroupName -- FROM buyers_group WHERE group_name = @buyerGroupName
		
	ELSE 
		BEGIN
			INSERT INTO dbo.buyers_group (group_code,group_name) VALUES ( @buyerGroupName, @buyerGroupName )
			SELECT @GROUP_CODE = @buyerGroupName
		END

	SELECT @userIds


	IF @userIds NOT LIKE '%,'
BEGIN
    set @userIds = @userIds + ','
END


set @pos = 0
set @len = 0

	WHILE CHARINDEX(',', @userIds, @pos+1)>1
		BEGIN
			set @len = CHARINDEX(',', @userIds, @pos+1) - @pos
			set @USER_ID = SUBSTRING(@userIds, @pos, @len)
			--SELECT @pos, @len,        
			--PRINT @value   

			IF EXISTS(SELECT 1 FROM dbo.buyers WHERE buyer_code = @USER_ID)

				UPDATE dbo.buyers SET buyer_group_code = @GROUP_CODE

			ELSE 

			INSERT INTO  dbo.buyers 

				( buyer_code, buyer_name, buyer_email, buyer_group_code ) 

				SELECT 
				user_id,  CONCAT(first_name, ' ', last_name), email , @GROUP_CODE as buyer_group_code 
				FROM users WHERE user_id =  @USER_ID								

			set @pos = CHARINDEX(',', @userIds, @pos+@len) +1

		END
END

	

GO
/****** Object:  StoredProcedure [dbo].[GetAllPendingUser]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[GetAllPendingUser]
@userId varchar(50),
@roleName varchar(20)

AS	
	BEGIN

		IF @roleName = 'Super User'
		BEGIN
			select distinct usrs.*, rls.role_name from users usrs, user_roles usrrls, roles rls 
			where  usrs.user_id <> @userid and usrs.user_status = 'N' and 
			usrs.user_id = usrrls.user_id and usrrls.role_id = rls.role_id
			and rls.role_name LIKE '%Admin'
		END

		IF @roleName = 'RD Admin'
		BEGIN
			select distinct usrs.*, rls.role_name from users usrs, user_roles usrrls, roles rls 
			where  usrs.user_id <> @userid and usrs.user_status = 'N' and 
			usrs.user_id = usrrls.user_id and usrrls.role_id = rls.role_id
			and rls.role_name LIKE 'RD%'
		END

		IF @roleName = 'LM Admin'
		BEGIN
			select distinct usrs.*, rls.role_name from users usrs, user_roles usrrls, roles rls 
			where  usrs.user_id <> @userid and usrs.user_status = 'N' and 
			usrs.user_id = usrrls.user_id and usrrls.role_id = rls.role_id
			and rls.role_name LIKE 'LM%'
		END

		IF @roleName = 'BOM Admin'
		BEGIN
			select distinct usrs.*, rls.role_name from users usrs, user_roles usrrls, roles rls 
			where  usrs.user_id <> @userid and usrs.user_status = 'N' and 
			usrs.user_id = usrrls.user_id and usrrls.role_id = rls.role_id
			and rls.role_name LIKE 'BOM%'
		END

		IF @roleName = 'PROC Admin'
		BEGIN
			select distinct usrs.*, rls.role_name from users usrs, user_roles usrrls, roles rls 
			where  usrs.user_id <> @userid and usrs.user_status = 'N' and 
			usrs.user_id = usrrls.user_id and usrrls.role_id = rls.role_id
			and rls.role_name LIKE 'PROC%'
		END

		IF @roleName = 'SM Admin'
		BEGIN
			select distinct usrs.*, rls.role_name from users usrs, user_roles usrrls, roles rls 
			where  usrs.user_id <> @userid and usrs.user_status = 'N' and 
			usrs.user_id = usrrls.user_id and usrrls.role_id = rls.role_id
			and rls.role_name LIKE 'SM%'
		END	

		IF @roleName = 'PJA Admin'
		BEGIN
			select distinct usrs.*, rls.role_name from users usrs, user_roles usrrls, roles rls 
			where  usrs.user_id <> @userid and usrs.user_status = 'N' and 
			usrs.user_id = usrrls.user_id and usrrls.role_id = rls.role_id
			and rls.role_name LIKE 'PJA%'
		END	

	END

GO
/****** Object:  StoredProcedure [dbo].[GetAllSavedSuplierListAndPartDetails]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[GetAllSavedSuplierListAndPartDetails]

--@shikeishoNo varchar(20),
--@eoNo varchar(20)

AS	
BEGIN

Select	S.*,P.*
	FROM	rfq_parts R

	JOIN suppliers S ON R.supplier_code = S.id 

	JOIN parts_details P ON 

			R.shikeisho_no = P.shikeisho_no 
		 AND
			R.eo_no =	P.eo_no 
		 AND
			R.part_no =  P.part_no

--	WHERE 				
--			R.shikeisho_no = @shikeishoNo  
--		AND
--			R.eo_no = @eoNo
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllUserShikeishyoData]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllUserShikeishyoData]
	@user_id varchar(50),
	@role varchar(50)
AS	
	BEGIN

	IF @role = 'RD Admin'
		BEGIN
			Select * from shikeisho_details where designer = @user_id;

			Select parts_details.* from parts_details, shikeisho_details where shikeisho_details.designer = @user_id 
			AND shikeisho_details.shikeisho_no = parts_details.shikeisho_no;
		END

	ELSE 
		BEGIN
		Select * from shikeisho_details;
		Select * from parts_details;
		END

		
	END

GO
/****** Object:  StoredProcedure [dbo].[GetShikeishyoData]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[GetShikeishyoData]
@ShNo varchar(10)
AS	
	BEGIN

		Select * from shikeisho_details where shikeisho_no = @ShNo;
		Select * from parts_details where shikeisho_no = @ShNo;
	END

GO
/****** Object:  StoredProcedure [dbo].[LM_Shikeisho_Update]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LM_Shikeisho_Update] 

AS
BEGIN 



SELECT [id]
      ,[status]
      ,[shikeisho_no]
      ,[revision]
      ,[management_no]
      ,[sixth_digit]
      ,[eo_no]
      ,[registration_date]
      ,[lm_in_charge]
      ,[desired_delivery_date]
      ,[check134]
      ,[text126]
      ,[order_delivery]
      ,[arrangement_completion_date]
      ,[remarks]
      ,[in_progress]
into #LMstageTable  FROM [IPT].[dbo].[TmpLmShikeisho] tmp
  
UPDATE ipt.dbo.shikeisho_details SET  
shikeisho_no=T.shikeisho_no
,eo_no=T.eo_no
,sixth_digit=T.sixth_digit
,desired_date=T.desired_delivery_date
,lm_approved_by=T.lm_in_charge       
FROM   ipt.dbo.shikeisho_details s  JOIN #LMstageTable T ON s.shikeisho_no = T.shikeisho_no
            
drop table #LMstageTable

END 


GO
/****** Object:  StoredProcedure [dbo].[ShikeishoMaster]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShikeishoMaster] 

AS
BEGIN 

BEGIN TRANSACTION

SELECT tmp.shikeisho_no
      ,tmp.designer
      ,tmp.order_no
      ,tmp.subject_en
      ,tmp.subject_ja
      ,tmp.management_no
      ,tmp.desired_date
      ,tmp.production_volume_units
      ,tmp.material_cost
      ,tmp.requestor_code
      ,tmp.approval_dept_code
      ,tmp.request_destination_code
      ,tmp.payout_destination1
      ,tmp.payout_destination2
      ,tmp.payout_destination3
      ,tmp.creation_date
      ,tmp.delivery_location
      ,tmp.created_on
      ,tmp.date_of_issue
      ,tmp.request_no
      ,tmp.department
      ,tmp.group_code
      ,tmp.responsible_person_l4
      ,tmp.person_in_charge
      ,tmp.extension_l4
      ,tmp.extension_in_charge
      ,tmp.user_name_login
      ,tmp.updated_on
  
into #stageTable FROM dbo.TmpShikeisho tmp
inner join ipt.dbo.shikeisho Mt on Mt.shikeisho_no = tmp.shikeisho_no and tmp.new_or_updated='U'

insert into ipt.dbo.shikeisho (shikeisho_no
      ,designer
      ,order_no
      ,subject_en
      ,subject_ja
      ,management_no)
select tmp.shikeisho_no
      ,tmp.designer
      ,tmp.order_no
      ,tmp.subject_en
      ,tmp.subject_ja
      ,tmp.management_no
        from  [IPT].[dbo].[TmpShikeisho] tmp where  tmp.new_or_updated='N' and tmp.shikeisho_no not in (select shikeisho_no from #stageTable)


UPDATE ipt.dbo.shikeisho SET   shikeisho_no=T.shikeisho_no
	 ,designer=T.designer
      ,order_no=T.order_no
      ,subject_en=T.subject_en
      ,subject_ja=T.subject_ja
      ,management_no=T.management_no
	  
FROM   ipt.dbo.shikeisho M JOIN #stageTable T ON M.shikeisho_no = T.shikeisho_no
            
drop table #stageTable
COMMIT TRANSACTION
END 


GO
/****** Object:  StoredProcedure [dbo].[start_ssis_job]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[start_ssis_job]
as
begin  
	 exec msdb.dbo.sp_start_job 'ShikeishoMaster-Test'
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateandInsert]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateandInsert] 

AS
BEGIN

SELECT tmp.shikeisho_no
      ,tmp.eo_no
      ,tmp.designer
      ,tmp.order_no
      ,tmp.subject_en
      ,tmp.subject_ja
      ,tmp.management_no
      ,tmp.no_of_eo_cover
      ,tmp.model
      ,tmp.desired_date
      ,tmp.production_volume_units
      ,tmp.material_cost
      ,tmp.requestor_code
      ,tmp.approval_dept_code
      ,tmp.request_destination_code
      ,tmp.payout_destination1
      ,tmp.payout_destination2
      ,tmp.payout_destination3
      ,tmp.creation_date
      ,tmp.delivery_location
      ,tmp.created_on
      ,tmp.date_of_issue
      ,tmp.request_no
      ,tmp.department
      ,tmp.group_code
      ,tmp.responsible_person_l4
      ,tmp.person_in_charge
      ,tmp.extension_l4
      ,tmp.extension_in_charge
      ,tmp.user_name_login
      ,tmp.updated_on
  
into #updatetable FROM dbo.TmpShikeisho tmp


inner join ipt.dbo.shikeisho Mt on Mt.shikeisho_no = tmp.shikeisho_no

insert into ipt.dbo.shikeisho (shikeisho_no
      ,eo_no
      ,designer
      ,order_no
      ,subject_en
      ,subject_ja
      ,management_no)
select tmp.shikeisho_no
      ,tmp.eo_no
      ,tmp.designer
      ,tmp.order_no
      ,tmp.subject_en
      ,tmp.subject_ja
      ,tmp.management_no
        from  [IPT].[dbo].[TmpShikeisho] tmp where shikeisho_no  not in (select shikeisho_no From #updatetable )


UPDATE ipt.dbo.shikeisho SET   shikeisho_no=T.shikeisho_no
	  ,eo_no=T.eo_no
      ,designer=T.designer
      ,order_no=T.order_no
      ,subject_en=T.subject_en
      ,subject_ja=T.subject_ja
      ,management_no=T.management_no
	  
FROM   ipt.dbo.shikeisho M JOIN #updatetable T ON M.shikeisho_no = T.shikeisho_no
            
drop table #updatetable

END


GO
/****** Object:  StoredProcedure [dbo].[UserSignIn]    Script Date: 7/24/2018 6:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[UserSignIn]
@userid varchar(10)
AS	
	BEGIN

		select usrs.*, rls.role_name from users usrs, user_roles usrrls, roles rls 
		where usrs.user_id = @userid and usrs.user_status = 'A' and 
		usrs.user_id = usrrls.user_id and usrrls.role_id = rls.role_id

	END
GO
