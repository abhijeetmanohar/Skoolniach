USE [master]
GO
/****** Object:  Database [Skoolniach]    Script Date: 3/21/2018 2:55:23 PM ******/
CREATE DATABASE [Skoolniach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Skoolniach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ABHINAV\MSSQL\DATA\Skoolniach.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Skoolniach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ABHINAV\MSSQL\DATA\Skoolniach_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Skoolniach] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Skoolniach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Skoolniach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Skoolniach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Skoolniach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Skoolniach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Skoolniach] SET ARITHABORT OFF 
GO
ALTER DATABASE [Skoolniach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Skoolniach] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Skoolniach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Skoolniach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Skoolniach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Skoolniach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Skoolniach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Skoolniach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Skoolniach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Skoolniach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Skoolniach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Skoolniach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Skoolniach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Skoolniach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Skoolniach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Skoolniach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Skoolniach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Skoolniach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Skoolniach] SET RECOVERY FULL 
GO
ALTER DATABASE [Skoolniach] SET  MULTI_USER 
GO
ALTER DATABASE [Skoolniach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Skoolniach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Skoolniach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Skoolniach] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Skoolniach', N'ON'
GO
USE [Skoolniach]
GO
/****** Object:  Table [dbo].[Arrangement]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Arrangement](
	[ATId_Day] [varchar](50) NOT NULL,
	[AbsentTeacherId] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Daay] [varchar](50) NULL,
	[ZeroPeriod] [varchar](50) NULL,
	[ZeroP_Arr] [varchar](50) NULL,
	[ZPDTArrName] [varchar](50) NULL,
	[FirstPeriod] [varchar](50) NULL,
	[FirstP_Arr] [varchar](50) NULL,
	[FPDTArrName] [varchar](50) NULL,
	[SecondPeriod] [varchar](50) NULL,
	[SecondP_Arr] [varchar](50) NULL,
	[SPDTArrName] [varchar](50) NULL,
	[ThirdPeriod] [varchar](50) NULL,
	[ThirdP_Arr] [varchar](50) NULL,
	[TPDTArrName] [varchar](50) NULL,
	[FourthPeriod] [varchar](50) NULL,
	[FourthP_Arr] [varchar](50) NULL,
	[FOPDTArrName] [varchar](50) NULL,
	[FifthPeriod] [varchar](50) NULL,
	[FifthP_Arr] [varchar](50) NULL,
	[FIPDTArrName] [varchar](50) NULL,
	[SixthPeriod] [varchar](50) NULL,
	[SixthP_Arr] [varchar](50) NULL,
	[SIPDTArrName] [varchar](50) NULL,
	[SeventhPeriod] [varchar](50) NULL,
	[SeventhP_Arr] [varchar](50) NULL,
	[SEPDTArrName] [varchar](50) NULL,
	[EighthPeriod] [varchar](50) NULL,
	[EighthP_Arr] [varchar](50) NULL,
	[EPDTArrName] [varchar](50) NULL,
	[NinethPeriod] [varchar](50) NULL,
	[NinethP_Arr] [varchar](50) NULL,
	[NPDTArrName] [varchar](50) NULL,
	[On_Off] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ATId_Day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Authority]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Authority](
	[ID] [varchar](50) NOT NULL,
	[QuizId] [varchar](50) NULL,
	[TeacherId] [varchar](50) NULL,
 CONSTRAINT [PK_Authority] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [uniqueidentifier] NULL,
	[Class] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dates]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dates](
	[Date] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friday]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Friday](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Initial] [nchar](10) NULL,
	[Subject] [varchar](50) NULL,
	[ZeroPeriod] [nchar](10) NULL,
	[FirstPeriod] [varchar](50) NULL,
	[SecondPeriod] [varchar](50) NULL,
	[ThirdPeriod] [varchar](50) NULL,
	[FourthPeriod] [varchar](50) NULL,
	[FifthPeriod] [varchar](50) NULL,
	[SixthPeriod] [varchar](50) NULL,
	[SeventhPeriod] [varchar](50) NULL,
	[EighthPeriod] [varchar](50) NULL,
	[NinethPeriod] [varchar](50) NULL,
	[Attendance] [varchar](50) NULL,
	[No_Of_Period] [int] NULL,
 CONSTRAINT [PK_Friday] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[House]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[House](
	[TeacherId] [varchar](50) NOT NULL,
	[House] [varchar](50) NULL,
	[PositionInHouse] [varchar](50) NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Instruction]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Instruction](
	[QuizId] [varchar](50) NULL,
	[Instructions] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[UserId] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Monday]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Monday](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Initial] [nchar](10) NULL,
	[Subject] [varchar](50) NULL,
	[ZeroPeriod] [varchar](50) NULL,
	[FirstPeriod] [varchar](50) NULL,
	[SecondPeriod] [varchar](50) NULL,
	[ThirdPeriod] [varchar](50) NULL,
	[FourthPeriod] [varchar](50) NULL,
	[FifthPeriod] [varchar](50) NULL,
	[SixthPeriod] [varchar](50) NULL,
	[SeventhPeriod] [varchar](50) NULL,
	[EighthPeriod] [varchar](50) NULL,
	[NinethPeriod] [varchar](50) NULL,
	[Attendance] [varchar](50) NULL,
	[No_Of_Period] [int] NULL,
 CONSTRAINT [PK_Monday] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[No_Of_Arrangement]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[No_Of_Arrangement](
	[TeacherId] [varchar](50) NOT NULL,
	[January] [int] NULL,
	[February] [int] NULL,
	[March] [int] NULL,
	[April] [int] NULL,
	[May] [int] NULL,
	[June] [int] NULL,
	[July] [int] NULL,
	[August] [int] NULL,
	[September] [int] NULL,
	[October] [int] NULL,
	[November] [int] NULL,
	[December] [int] NULL,
	[Day] [int] NULL,
	[Week] [int] NULL,
	[Year] [int] NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_No_Of_Arrangement] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OnQuestion]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OnQuestion](
	[AdmissionNumber] [varchar](50) NULL,
	[QuestionId] [varchar](50) NULL,
	[Id] [varchar](50) NOT NULL,
	[QuizId] [varchar](50) NULL,
 CONSTRAINT [PK_OnQuestion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Options]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Options](
	[QuestionId] [varchar](50) NULL,
	[Options] [varchar](50) NULL,
	[OptionName] [varchar](50) NULL,
	[QuizId] [varchar](50) NULL,
	[Type] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Participants]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Participants](
	[ID] [varchar](50) NOT NULL,
	[QuizId] [varchar](50) NULL,
	[AdmissionNumber] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[House] [varchar](50) NULL,
	[Score] [varchar](50) NULL,
	[TotalScore] [varchar](50) NULL,
	[P_Type] [varchar](50) NULL,
	[EndTime] [varchar](50) NULL,
 CONSTRAINT [PK_StudentsForQuiz] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProfilePic]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProfilePic](
	[id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[ContentType] [varchar](50) NULL,
	[Data] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [varchar](50) NOT NULL,
	[QuizId] [varchar](50) NULL,
	[Question] [varchar](500) NULL,
	[Answer] [nchar](10) NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quiz](
	[ID] [varchar](50) NULL,
	[QuizID] [varchar](50) NOT NULL,
	[QuizName] [varchar](50) NULL,
	[QuizType] [varchar](50) NULL,
	[Teacher] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[Activate] [varchar](50) NULL,
	[Description] [varchar](200) NULL,
	[StartTime] [varchar](50) NULL,
	[EndTime] [varchar](50) NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[QuizID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SbmtQuestions]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SbmtQuestions](
	[Id] [varchar](50) NOT NULL,
	[QuestionId] [varchar](50) NULL,
	[AdmissionNumber] [varchar](50) NULL,
	[OptionSelected] [varchar](50) NULL,
	[CorrectOption] [varchar](50) NULL,
	[Marks] [varchar](50) NULL,
	[QuizId] [varchar](50) NULL,
 CONSTRAINT [PK_SubQuestions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Class] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Father] [varchar](50) NULL,
	[Admission_Num] [varchar](50) NOT NULL,
	[House] [varchar](50) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Admission_Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [uniqueidentifier] NULL,
	[Subject] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Thursday]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thursday](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Initial] [nchar](10) NULL,
	[Subject] [varchar](50) NULL,
	[ZeroPeriod] [varchar](50) NULL,
	[FirstPeriod] [varchar](50) NULL,
	[SecondPeriod] [varchar](50) NULL,
	[ThirdPeriod] [varchar](50) NULL,
	[FourthPeriod] [varchar](50) NULL,
	[FifthPeriod] [varchar](50) NULL,
	[SixthPeriod] [varchar](50) NULL,
	[SeventhPeriod] [varchar](50) NULL,
	[EighthPeriod] [varchar](50) NULL,
	[NinethPeriod] [nchar](10) NULL,
	[Attendance] [varchar](50) NULL,
	[No_Of_Period] [int] NULL,
 CONSTRAINT [PK_Thursday] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tuesday]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tuesday](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Initial] [nchar](10) NULL,
	[Subject] [varchar](50) NULL,
	[ZeroPeriod] [varchar](50) NULL,
	[FirstPeriod] [varchar](50) NULL,
	[SecondPeriod] [varchar](50) NULL,
	[ThirdPeriod] [varchar](50) NULL,
	[FourthPeriod] [varchar](50) NULL,
	[FifthPeriod] [varchar](50) NULL,
	[SixthPeriod] [varchar](50) NULL,
	[SeventhPeriod] [varchar](50) NULL,
	[EighthPeriod] [varchar](50) NULL,
	[NinethPeriod] [varchar](50) NULL,
	[Attendance] [varchar](50) NULL,
	[No_Of_Period] [int] NULL,
 CONSTRAINT [PK_Tuesday] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wednesday]    Script Date: 3/21/2018 2:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wednesday](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Initial] [nchar](10) NULL,
	[Subject] [varchar](50) NULL,
	[ZeroPeriod] [varchar](50) NULL,
	[FirstPeriod] [varchar](50) NULL,
	[SecondPeriod] [varchar](50) NULL,
	[ThirdPeriod] [varchar](50) NULL,
	[FourthPeriod] [varchar](50) NULL,
	[FifthPeriod] [varchar](50) NULL,
	[SixthPeriod] [varchar](50) NULL,
	[SeventhPeriod] [varchar](50) NULL,
	[EighthPeriod] [varchar](50) NULL,
	[NinethPeriod] [varchar](50) NULL,
	[Attendance] [varchar](50) NULL,
	[No_Of_Period] [int] NULL,
 CONSTRAINT [PK_Wednesday] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Skoolniach] SET  READ_WRITE 
GO
