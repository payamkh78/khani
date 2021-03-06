USE [master]
GO
/****** Object:  Database [shamsipour]    Script Date: 12/25/2018 2:50:21 AM ******/
CREATE DATABASE [shamsipour]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shamsipour', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SSQLSERVER\MSSQL\DATA\shamsipour.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shamsipour_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SSQLSERVER\MSSQL\DATA\shamsipour_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shamsipour] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shamsipour].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shamsipour] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shamsipour] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shamsipour] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shamsipour] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shamsipour] SET ARITHABORT OFF 
GO
ALTER DATABASE [shamsipour] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shamsipour] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shamsipour] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shamsipour] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shamsipour] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shamsipour] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shamsipour] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shamsipour] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shamsipour] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shamsipour] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shamsipour] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shamsipour] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shamsipour] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shamsipour] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shamsipour] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shamsipour] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shamsipour] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shamsipour] SET RECOVERY FULL 
GO
ALTER DATABASE [shamsipour] SET  MULTI_USER 
GO
ALTER DATABASE [shamsipour] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shamsipour] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shamsipour] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shamsipour] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [shamsipour] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'shamsipour', N'ON'
GO
USE [shamsipour]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/25/2018 2:50:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [int] NOT NULL,
	[CourseName] [nvarchar](50) NULL,
	[CourseUnit] [int] NULL,
	[TecherCode] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Major]    Script Date: 12/25/2018 2:50:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MajorCode] [int] NOT NULL,
	[MajorName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[MajorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Register]    Script Date: 12/25/2018 2:50:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RegisterCode] [int] NOT NULL,
	[StudentCode] [int] NULL,
	[RegisterDate] [datetime] NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[RegisterCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegisterCourse]    Script Date: 12/25/2018 2:50:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterCourse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RegisterCode] [int] NOT NULL,
	[CourseCode] [int] NULL,
	[Grade] [nvarchar](50) NULL,
 CONSTRAINT [PK_RegisterCourse] PRIMARY KEY CLUSTERED 
(
	[RegisterCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/25/2018 2:50:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[StudentCode] [int] NOT NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[MajorCode] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 12/25/2018 2:50:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherCode] [int] NOT NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teacher_1] PRIMARY KEY CLUSTERED 
(
	[TeacherCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Teacher] FOREIGN KEY([TecherCode])
REFERENCES [dbo].[Teacher] ([TeacherCode])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Teacher]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_RegisterCourse] FOREIGN KEY([RegisterCode])
REFERENCES [dbo].[RegisterCourse] ([RegisterCode])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_RegisterCourse]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Student]
GO
ALTER TABLE [dbo].[RegisterCourse]  WITH CHECK ADD  CONSTRAINT [FK_RegisterCourse_Course] FOREIGN KEY([CourseCode])
REFERENCES [dbo].[Course] ([CourseCode])
GO
ALTER TABLE [dbo].[RegisterCourse] CHECK CONSTRAINT [FK_RegisterCourse_Course]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Major] FOREIGN KEY([MajorCode])
REFERENCES [dbo].[Major] ([MajorCode])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Major]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Teacher] FOREIGN KEY([TeacherCode])
REFERENCES [dbo].[Teacher] ([TeacherCode])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Teacher]
GO
USE [master]
GO
ALTER DATABASE [shamsipour] SET  READ_WRITE 
GO
