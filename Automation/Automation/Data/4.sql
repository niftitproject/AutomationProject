USE [master]
GO
/****** Object:  Database [NIFTIT]    Script Date: 03/18/2017 22:23:01 ******/
CREATE DATABASE [NIFTIT] ON  PRIMARY 
( NAME = N'NIFTIT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\NIFTIT.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NIFTIT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\NIFTIT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NIFTIT] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NIFTIT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NIFTIT] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [NIFTIT] SET ANSI_NULLS OFF
GO
ALTER DATABASE [NIFTIT] SET ANSI_PADDING OFF
GO
ALTER DATABASE [NIFTIT] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [NIFTIT] SET ARITHABORT OFF
GO
ALTER DATABASE [NIFTIT] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [NIFTIT] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [NIFTIT] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [NIFTIT] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [NIFTIT] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [NIFTIT] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [NIFTIT] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [NIFTIT] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [NIFTIT] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [NIFTIT] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [NIFTIT] SET  DISABLE_BROKER
GO
ALTER DATABASE [NIFTIT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [NIFTIT] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [NIFTIT] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [NIFTIT] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [NIFTIT] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [NIFTIT] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [NIFTIT] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [NIFTIT] SET  READ_WRITE
GO
ALTER DATABASE [NIFTIT] SET RECOVERY SIMPLE
GO
ALTER DATABASE [NIFTIT] SET  MULTI_USER
GO
ALTER DATABASE [NIFTIT] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [NIFTIT] SET DB_CHAINING OFF
GO
USE [NIFTIT]
GO
/****** Object:  Table [dbo].[Type_Of_RFP]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Type_Of_RFP](
	[ID_Type] [int] NOT NULL,
	[Type_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Type_Of_RFP] PRIMARY KEY CLUSTERED 
(
	[ID_Type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFP_Question]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RFP_Question](
	[ID_RFP_Question] [int] NOT NULL,
	[RFP_Question] [varchar](50) NULL,
 CONSTRAINT [PK_RFP_Question] PRIMARY KEY CLUSTERED 
(
	[ID_RFP_Question] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Image]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Image](
	[ID_Image] [int] NOT NULL,
	[Image_URL] [varchar](50) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ID_Image] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proposal_Section]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proposal_Section](
	[ID_Section] [int] NOT NULL,
	[Section] [varchar](50) NULL,
 CONSTRAINT [PK_Proposal_Section] PRIMARY KEY CLUSTERED 
(
	[ID_Section] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proposal_Question]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proposal_Question](
	[ID_Proposal_Question] [int] NOT NULL,
	[Proposal_Question] [varchar](50) NULL,
	[ID_Section] [int] NULL,
 CONSTRAINT [PK_Proposal_Question] PRIMARY KEY CLUSTERED 
(
	[ID_Proposal_Question] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFP]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RFP](
	[ID_RFP] [int] NOT NULL,
	[Name_Of_Customer] [varchar](50) NULL,
	[Name_Of_Company] [varchar](50) NULL,
	[RFP_Title] [varchar](50) NULL,
	[Deadline] [timestamp] NULL,
	[File_URL] [varchar](50) NULL,
	[ID_Type] [int] NULL,
 CONSTRAINT [PK_RFP] PRIMARY KEY CLUSTERED 
(
	[ID_RFP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proposal]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proposal](
	[ID_Proposal] [int] NOT NULL,
	[Name_Of_Proposal] [varchar](50) NULL,
	[Name_Of_Agency] [varchar](50) NULL,
	[ID_Type] [int] NULL,
	[ID_RFP] [int] NULL,
 CONSTRAINT [PK_Proposal] PRIMARY KEY CLUSTERED 
(
	[ID_Proposal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFP_Answer]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RFP_Answer](
	[ID_RFP_Answer] [int] NOT NULL,
	[RFP_Answer] [varchar](50) NULL,
	[Date_Created] [timestamp] NULL,
	[ID_RFP] [int] NULL,
	[ID_RFP_Question] [int] NULL,
 CONSTRAINT [PK_RFP_Answer] PRIMARY KEY CLUSTERED 
(
	[ID_RFP_Answer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Client]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client](
	[ID_Client] [int] NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ID_Image] [int] NULL,
	[Security_Question] [varchar](50) NULL,
	[Security_Answer] [varchar](50) NULL,
	[ID_RFP] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proposal_Answer]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proposal_Answer](
	[ID_Proposal_Answer] [int] NOT NULL,
	[Proposal_Answer] [varchar](50) NULL,
	[Date_Created] [timestamp] NULL,
	[ID_Proposal] [int] NULL,
	[ID_Proposal_Question] [int] NULL,
 CONSTRAINT [PK_Proposal_Answer] PRIMARY KEY CLUSTERED 
(
	[ID_Proposal_Answer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agency]    Script Date: 03/18/2017 22:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agency](
	[ID_Agency] [int] NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ID_Image] [int] NULL,
	[Security_Question] [varchar](50) NULL,
	[Security_Answer] [varchar](50) NULL,
	[ID_Proposal] [int] NULL,
 CONSTRAINT [PK_Agency] PRIMARY KEY CLUSTERED 
(
	[ID_Agency] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Proposal_Question_Proposal_Section]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[Proposal_Question]  WITH CHECK ADD  CONSTRAINT [FK_Proposal_Question_Proposal_Section] FOREIGN KEY([ID_Section])
REFERENCES [dbo].[Proposal_Section] ([ID_Section])
GO
ALTER TABLE [dbo].[Proposal_Question] CHECK CONSTRAINT [FK_Proposal_Question_Proposal_Section]
GO
/****** Object:  ForeignKey [FK_RFP_Type_Of_RFP]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[RFP]  WITH CHECK ADD  CONSTRAINT [FK_RFP_Type_Of_RFP] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[Type_Of_RFP] ([ID_Type])
GO
ALTER TABLE [dbo].[RFP] CHECK CONSTRAINT [FK_RFP_Type_Of_RFP]
GO
/****** Object:  ForeignKey [FK_Proposal_RFP]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[Proposal]  WITH CHECK ADD  CONSTRAINT [FK_Proposal_RFP] FOREIGN KEY([ID_RFP])
REFERENCES [dbo].[RFP] ([ID_RFP])
GO
ALTER TABLE [dbo].[Proposal] CHECK CONSTRAINT [FK_Proposal_RFP]
GO
/****** Object:  ForeignKey [FK_Proposal_Type_Of_RFP]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[Proposal]  WITH CHECK ADD  CONSTRAINT [FK_Proposal_Type_Of_RFP] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[Type_Of_RFP] ([ID_Type])
GO
ALTER TABLE [dbo].[Proposal] CHECK CONSTRAINT [FK_Proposal_Type_Of_RFP]
GO
/****** Object:  ForeignKey [FK_RFP_Answer_RFP]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[RFP_Answer]  WITH CHECK ADD  CONSTRAINT [FK_RFP_Answer_RFP] FOREIGN KEY([ID_RFP])
REFERENCES [dbo].[RFP] ([ID_RFP])
GO
ALTER TABLE [dbo].[RFP_Answer] CHECK CONSTRAINT [FK_RFP_Answer_RFP]
GO
/****** Object:  ForeignKey [FK_RFP_Answer_RFP_Question]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[RFP_Answer]  WITH CHECK ADD  CONSTRAINT [FK_RFP_Answer_RFP_Question] FOREIGN KEY([ID_RFP_Question])
REFERENCES [dbo].[RFP_Question] ([ID_RFP_Question])
GO
ALTER TABLE [dbo].[RFP_Answer] CHECK CONSTRAINT [FK_RFP_Answer_RFP_Question]
GO
/****** Object:  ForeignKey [FK_Client_Image]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Image] FOREIGN KEY([ID_Image])
REFERENCES [dbo].[Image] ([ID_Image])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Image]
GO
/****** Object:  ForeignKey [FK_Client_RFP]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_RFP] FOREIGN KEY([ID_RFP])
REFERENCES [dbo].[RFP] ([ID_RFP])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_RFP]
GO
/****** Object:  ForeignKey [FK_Proposal_Answer_Proposal]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[Proposal_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Proposal_Answer_Proposal] FOREIGN KEY([ID_Proposal])
REFERENCES [dbo].[Proposal] ([ID_Proposal])
GO
ALTER TABLE [dbo].[Proposal_Answer] CHECK CONSTRAINT [FK_Proposal_Answer_Proposal]
GO
/****** Object:  ForeignKey [FK_Proposal_Answer_Proposal_Question]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[Proposal_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Proposal_Answer_Proposal_Question] FOREIGN KEY([ID_Proposal_Question])
REFERENCES [dbo].[Proposal_Question] ([ID_Proposal_Question])
GO
ALTER TABLE [dbo].[Proposal_Answer] CHECK CONSTRAINT [FK_Proposal_Answer_Proposal_Question]
GO
/****** Object:  ForeignKey [FK_Agency_Image]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[Agency]  WITH CHECK ADD  CONSTRAINT [FK_Agency_Image] FOREIGN KEY([ID_Image])
REFERENCES [dbo].[Image] ([ID_Image])
GO
ALTER TABLE [dbo].[Agency] CHECK CONSTRAINT [FK_Agency_Image]
GO
/****** Object:  ForeignKey [FK_Agency_Proposal]    Script Date: 03/18/2017 22:23:02 ******/
ALTER TABLE [dbo].[Agency]  WITH CHECK ADD  CONSTRAINT [FK_Agency_Proposal] FOREIGN KEY([ID_Proposal])
REFERENCES [dbo].[Proposal] ([ID_Proposal])
GO
ALTER TABLE [dbo].[Agency] CHECK CONSTRAINT [FK_Agency_Proposal]
GO
