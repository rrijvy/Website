USE [master]
GO
/****** Object:  Database [AlphaWebsite]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE DATABASE [AlphaWebsite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AlphaWebsite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AlphaWebsite.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AlphaWebsite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AlphaWebsite_log.ldf' , SIZE = 4736KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AlphaWebsite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AlphaWebsite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AlphaWebsite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AlphaWebsite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AlphaWebsite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AlphaWebsite] SET ARITHABORT OFF 
GO
ALTER DATABASE [AlphaWebsite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AlphaWebsite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AlphaWebsite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AlphaWebsite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AlphaWebsite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AlphaWebsite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AlphaWebsite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AlphaWebsite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AlphaWebsite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AlphaWebsite] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AlphaWebsite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AlphaWebsite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AlphaWebsite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AlphaWebsite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AlphaWebsite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AlphaWebsite] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AlphaWebsite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AlphaWebsite] SET RECOVERY FULL 
GO
ALTER DATABASE [AlphaWebsite] SET  MULTI_USER 
GO
ALTER DATABASE [AlphaWebsite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AlphaWebsite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AlphaWebsite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AlphaWebsite] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AlphaWebsite', N'ON'
GO
USE [AlphaWebsite]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AboutMainSologan] [nvarchar](max) NULL,
	[OurMissionDescription] [nvarchar](max) NULL,
	[OurVisionDescription] [nvarchar](max) NULL,
	[WhoWeAreDescription] [nvarchar](max) NULL,
	[WhoWeAreImageTwo] [nvarchar](max) NULL,
	[WhyUsDescription] [nvarchar](max) NULL,
	[WhoWeAreImageOne] [nvarchar](max) NULL,
 CONSTRAINT [PK_AboutUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banners]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[SolganOne] [nvarchar](max) NULL,
	[SolganTwo] [nvarchar](max) NULL,
	[SolganThree] [nvarchar](max) NULL,
 CONSTRAINT [PK_Banners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Thumbnail] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Creator] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Careers]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Careers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OportunityDescription] [nvarchar](max) NULL,
	[OurBenifiteDescription] [nvarchar](max) NULL,
	[OurCultureDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Careers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChooseUs]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChooseUs](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Order] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ChooseUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientProducts]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ClientProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[ClientSaysAboutUs] [nvarchar](max) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Companies]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
	[Slogan] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Facebook] [nvarchar](max) NULL,
	[LinkedIn] [nvarchar](max) NULL,
	[Twitter] [nvarchar](max) NULL,
	[Youtube] [nvarchar](max) NULL,
	[Favicon] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[GoogleMapLocation] [nvarchar](max) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerRivew]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerRivew](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Rating] [float] NOT NULL,
	[Review] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomerRivew] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Designations]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designations](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Designations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faqs]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faqs](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_Faqs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostingPlan]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostingPlan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Space] [nvarchar](max) NULL,
	[Bandwidth] [nvarchar](max) NULL,
	[Domain] [int] NOT NULL,
	[SubDomain] [nvarchar](max) NULL,
	[Alias] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[CPanel] [bit] NOT NULL,
	[YearlyPrice] [decimal](18, 2) NOT NULL,
	[PriceUnit] [nvarchar](max) NULL,
	[MonthlyPrice] [decimal](18, 2) NOT NULL DEFAULT ((0.0)),
 CONSTRAINT [PK_HostingPlan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Qualification] [nvarchar](max) NULL,
	[JobCreateDate] [datetime2](7) NOT NULL,
	[DeadLine] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menus]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ControllerName] [nvarchar](max) NULL,
	[ActionName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[ParentId] [int] NOT NULL,
	[DropdownType] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OurTeams]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OurTeams](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DepartmentId] [int] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Facebook] [nvarchar](max) NULL,
	[Twitter] [nvarchar](max) NULL,
	[LinkedIn] [nvarchar](max) NULL,
 CONSTRAINT [PK_OurTeams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[PurchasePrice] [float] NULL,
	[RetailPrice] [float] NULL,
	[WholeSellPrice] [float] NULL,
	[Discount] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[ReleaseDate] [datetime2](7) NOT NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[ProductCategoryId] [int] NOT NULL,
	[IsPopular] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServiceCategories]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceCategories](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_ServiceCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Services]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[ServiceCategoryId] [int] NOT NULL,
	[IconClassName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SoftwareCategories]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoftwareCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Thumbnail] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_SoftwareCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Softwares]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softwares](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[SoftwareCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Softwares] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubMenus]    Script Date: 11/20/2019 7:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMenus](
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdateCount] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[MenuId] [int] NOT NULL,
	[ControllerName] [nvarchar](max) NULL,
	[ActionName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SubMenus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191103043954_Initial_Migration', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191103074531_HostingPlan', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191103082801_HostingPlanTwo', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191117164614_HostingPlans', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191118051845_MenuUpdate', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191118111506_ProductUpdate', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191119074522_BlogUpdate', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191119111232_aboutUs', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191119145317_Career', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191119152718_ServiceUpdate', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191119182201_Job', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191120052438_Software', N'2.1.11-servicing-32099')
SET IDENTITY_INSERT [dbo].[AboutUs] ON 

INSERT [dbo].[AboutUs] ([Id], [AboutMainSologan], [OurMissionDescription], [OurVisionDescription], [WhoWeAreDescription], [WhoWeAreImageTwo], [WhyUsDescription], [WhoWeAreImageOne]) VALUES (12, N'<p><span style="color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;">Alpha soft technology Ltd. was established in 2013 and is the leading software outsourcing company in Bangladesh. We provide exceptional software outsourcing services and solutions to companies worldwide. We offer world-class services through traditional methodologies and IT solution by relying on the most talented pool of engineers in the region. We also provide the best security systems anywhere.</span><br></p>', N'<div class="row" style="display: flex; flex-wrap: wrap; color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;"><div class="col-md-4" style="width: 400px; flex: 0 0 33.3333%; max-width: 33.3333%;"><div class="single-about-us animated fadeInUp" data-animate="fadeInUp" data-delay=".1" style="animation-duration: 0.6s; animation-fill-mode: backwards; animation-name: fadeInUp; margin-bottom: 30px; visibility: visible; animation-delay: 0.1s;"><p style="margin-bottom: 1.6rem; line-height: 1.8;">To provide time tested, secure, reliable and cost effective enterprise level business solution to achieve business objectives and become a trusted growth partner for our customers, business associates and our people.</p><div style="font-weight: 400;"><br></div></div></div></div>', N'<p><span style="color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;">Our vision is to seek competitive advantages for our clients through innovative use of modern technologies; and help the clients achieving long-term success and prosperity through integrated business application.</span><br></p>', NULL, NULL, N'<p><span style="color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;">Alphasoft technology limited has grown in footprint, service breadth and diversity, and in experience with the design and implementation of sophisticated solutions to help your business. We seek to strengthen client relationships by earning your trust .</span><br></p>', NULL)
SET IDENTITY_INSERT [dbo].[AboutUs] OFF
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] ON 

INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (2, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (3, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (4, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (5, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (6, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (7, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (8, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (9, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (10, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (11, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (12, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (13, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (14, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (15, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (16, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (17, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (18, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (19, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (20, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (21, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (22, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (23, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (24, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (25, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (26, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (27, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (28, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (29, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (30, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (31, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (32, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (33, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (34, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (35, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (36, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (37, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (38, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (39, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (40, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (41, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (42, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (43, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (44, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (45, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (46, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (47, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (48, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (49, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (50, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (51, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (52, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (53, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (54, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (55, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (56, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (57, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (58, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (59, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (60, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (61, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (62, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (63, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (64, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (65, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (66, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (67, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (68, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (69, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (70, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (71, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (72, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (73, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (74, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (75, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (76, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (77, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (78, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (79, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (80, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (81, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (82, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (83, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (84, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (85, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (86, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (87, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (88, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (89, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (90, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (91, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (92, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (93, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (94, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (95, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (96, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (97, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (98, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (99, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (100, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (101, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (102, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (103, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (104, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (105, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (106, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (107, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (108, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (109, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (110, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (111, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (112, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (113, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (114, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (115, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (116, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (117, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (118, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (119, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (120, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (121, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (122, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (123, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (124, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (125, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (126, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (127, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (128, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (129, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (130, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (131, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (132, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (133, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (134, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (135, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (136, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (137, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (138, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (139, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (140, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (141, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (142, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (143, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (144, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (145, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (146, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (147, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (148, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (149, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (150, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (151, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (152, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (153, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (154, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (155, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (156, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (157, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (158, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (159, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (160, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (161, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (162, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (163, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (164, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (165, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (166, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (167, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (168, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (169, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (170, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (171, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (172, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (173, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (174, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (175, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (176, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (177, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (178, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (179, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (180, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (181, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (182, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (183, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (184, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (185, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (186, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (187, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (188, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (189, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (190, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (191, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (192, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (193, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (194, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (195, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (196, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (197, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (198, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (199, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (200, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (201, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (202, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (203, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (204, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (205, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (206, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (207, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (208, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (209, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (210, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (211, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (212, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (213, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (214, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (215, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (216, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (217, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (218, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (219, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (220, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (221, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (222, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (223, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (224, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (225, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (226, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (227, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (228, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (229, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (230, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (231, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (232, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (233, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (234, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (235, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (236, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (237, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (238, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (239, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (240, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (241, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (242, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (243, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (244, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (245, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (246, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (247, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (248, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (249, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (250, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (251, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (252, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (253, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (254, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (255, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (256, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (257, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (258, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (259, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (260, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (261, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (262, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (263, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (264, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (265, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (266, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (267, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (268, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (269, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (270, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (271, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (272, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (273, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (274, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (275, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (276, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (277, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (278, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (279, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (280, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (281, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (282, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (283, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (284, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (285, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (286, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (287, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (288, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (289, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (290, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (291, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (292, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (293, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (294, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (295, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (296, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (297, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (298, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (299, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (300, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (301, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (302, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (303, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (304, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (305, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (306, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (307, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (308, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (309, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (310, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (311, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (312, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (313, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (314, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (315, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (316, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (317, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (318, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (319, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (320, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (321, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (322, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (323, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (324, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (325, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (326, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (327, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (328, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (329, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (330, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (331, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (332, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (333, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (334, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (335, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (336, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (337, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (338, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (339, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (340, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (341, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (342, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (343, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (344, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (345, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (346, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (347, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (348, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (349, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (350, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (351, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (352, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (353, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (354, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (355, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (356, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (357, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (358, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (359, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (360, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (361, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (362, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (363, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (364, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (365, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (366, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (367, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (368, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (369, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (370, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (371, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (372, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (373, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (374, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (375, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (376, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (377, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (378, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (379, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (380, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (381, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (382, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (383, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (384, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (385, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (386, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (387, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (388, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (389, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (390, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (391, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (392, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (393, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (394, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (395, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (396, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (397, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (398, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (399, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (400, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (401, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (402, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (403, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (404, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (405, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (406, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (407, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (408, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (409, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (410, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (411, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (412, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (413, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (414, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (415, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (416, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (417, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (418, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (419, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (420, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (421, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (422, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (423, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (424, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (425, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (426, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (427, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (428, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (429, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (430, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (431, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (432, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (433, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (434, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (435, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (436, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (437, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (438, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (439, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (440, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (441, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (442, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (443, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (444, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (445, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (446, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (447, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (448, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (449, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (450, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (451, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (452, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (453, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (454, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (455, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (456, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (457, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (458, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (459, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (460, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (461, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (462, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (463, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (464, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (465, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (466, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (467, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (468, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (469, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (470, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (471, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (472, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (473, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (474, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (475, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (476, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (477, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (478, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (479, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (480, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (481, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (482, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (483, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (484, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (485, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (486, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (487, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (488, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (489, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (490, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (491, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (492, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (493, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (494, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (495, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (496, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (497, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (498, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (499, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (500, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (501, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (502, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (503, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (504, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (505, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (506, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (507, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (508, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (509, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (510, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (511, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (512, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (513, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (514, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (515, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (516, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (517, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (518, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (519, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (520, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (521, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (522, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (523, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (524, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (525, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (526, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (527, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (528, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (529, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (530, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (531, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (532, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (533, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (534, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (535, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (536, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (537, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (538, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (539, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (540, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (541, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (542, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (543, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (544, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (545, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (546, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (547, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (548, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (549, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (550, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (551, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (552, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (553, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (554, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (555, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (556, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (557, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (558, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (559, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (560, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (561, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (562, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (563, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (564, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (565, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (566, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (567, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (568, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (569, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (570, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (571, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (572, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (573, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (574, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (575, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (576, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (577, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (578, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (579, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (580, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (581, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (582, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (583, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (584, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (585, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (586, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (587, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (588, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (589, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (590, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (591, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (592, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (593, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (594, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (595, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (596, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (597, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (598, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (599, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (600, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (601, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (602, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (603, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (604, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (605, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (606, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (607, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (608, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (609, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (610, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (611, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (612, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (613, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (614, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (615, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (616, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (617, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (618, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (619, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (620, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (621, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (622, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (623, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (624, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (625, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (626, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (627, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (628, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (629, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (630, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (631, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (632, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (633, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (634, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (635, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (636, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (637, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (638, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (639, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (640, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (641, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (642, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (643, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (644, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (645, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (646, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (647, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (648, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (649, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (650, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (651, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (652, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (653, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (654, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (655, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (656, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (657, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (658, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (659, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (660, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (661, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (662, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (663, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (664, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (665, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (666, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (667, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (668, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (669, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (670, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (671, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (672, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (673, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (674, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (675, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (676, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (677, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (678, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (679, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (680, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (681, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (682, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (683, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (684, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (685, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (686, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (687, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (688, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (689, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (690, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (691, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (692, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (693, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (694, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (695, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (696, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (697, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (698, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (699, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (700, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (701, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (702, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (703, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (704, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (705, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (706, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (707, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (708, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (709, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (710, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (711, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (712, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (713, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (714, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (715, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (716, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (717, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (718, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (719, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (720, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (721, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (722, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (723, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (724, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (725, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (726, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (727, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (728, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (729, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (730, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (731, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (732, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (733, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (734, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (735, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (736, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (737, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (738, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (739, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (740, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (741, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (742, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (743, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (744, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (745, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (746, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (747, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (748, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (749, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (750, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (751, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (752, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (753, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (754, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (755, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (756, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (757, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (758, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (759, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (760, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (761, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (762, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (763, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (764, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (765, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (766, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (767, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (768, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (769, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (770, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (771, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (772, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (773, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (774, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (775, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (776, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (777, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (778, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (779, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (780, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (781, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (782, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (783, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (784, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (785, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (786, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (787, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (788, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (789, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (790, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (791, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (792, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (793, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (794, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (795, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (796, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (797, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (798, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (799, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (800, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (801, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (802, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (803, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (804, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (805, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (806, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (807, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (808, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (809, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (810, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (811, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (812, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (813, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (814, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (815, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (816, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (817, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (818, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (819, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (820, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (821, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (822, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (823, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (824, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (825, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (826, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (827, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (828, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (829, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (830, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (831, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (832, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (833, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (834, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (835, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (836, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (837, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (838, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (839, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (840, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (841, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (842, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (843, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (844, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (845, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (846, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (847, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (848, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (849, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (850, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (851, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (852, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (853, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (854, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (855, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (856, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (857, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (858, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (859, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (860, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (861, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (862, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (863, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (864, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (865, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (866, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (867, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (868, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (869, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (870, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (871, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (872, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (873, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (874, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (875, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (876, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (877, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (878, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (879, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (880, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (881, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (882, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (883, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (884, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (885, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (886, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (887, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (888, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (889, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (890, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (891, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (892, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (893, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (894, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (895, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (896, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (897, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (898, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (899, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (900, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (901, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (902, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (903, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (904, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (905, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (906, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (907, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (908, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (909, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (910, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (911, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (912, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (913, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (914, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (915, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (916, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (917, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (918, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (919, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (920, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (921, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (922, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (923, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (924, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (925, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (926, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (927, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (928, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (929, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (930, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (931, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (932, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (933, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (934, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (935, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (936, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (937, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (938, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (939, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (940, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (941, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (942, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (943, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (944, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (945, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (946, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (947, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (948, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (949, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (950, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (951, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (952, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (953, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (954, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (955, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (956, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (957, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (958, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (959, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (960, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (961, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (962, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (963, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (964, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (965, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (966, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (967, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (968, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (969, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (970, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (971, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (972, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (973, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (974, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (975, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (976, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (977, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (978, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (979, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (980, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (981, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (982, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (983, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (984, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (985, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (986, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (987, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (988, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (989, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (990, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (991, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (992, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (993, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (994, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (995, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (996, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (997, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (998, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (999, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1000, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1001, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1002, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1003, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1004, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1005, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1006, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1007, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1008, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1009, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1010, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1011, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1012, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1013, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1014, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1015, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1016, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1017, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1018, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1019, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1020, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1021, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1022, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1023, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1024, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1025, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1026, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1027, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1028, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1029, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1030, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1031, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1032, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1033, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1034, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1035, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1036, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1037, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1038, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1039, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1040, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1041, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1042, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1043, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1044, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1045, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1046, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1047, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1048, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1049, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1050, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1051, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1052, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1053, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1054, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1055, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1056, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1057, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1058, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1059, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1060, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1061, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1062, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1063, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1064, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1065, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1066, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1067, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1068, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1069, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1070, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1071, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1072, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1073, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1074, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1075, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1076, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1077, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1078, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1079, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1080, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1081, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1082, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1083, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1084, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1085, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1086, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1087, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1088, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1089, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1090, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1091, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1092, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1093, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1094, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1095, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1096, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1097, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1098, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1099, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1100, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1101, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1102, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1103, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1104, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1105, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1106, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1107, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1108, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1109, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1110, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1111, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1112, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1113, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1114, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1115, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1116, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1117, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1118, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1119, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1120, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1121, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1122, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1123, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1124, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1125, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1126, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1127, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1128, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1129, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1130, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1131, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1132, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1133, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1134, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1135, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1136, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1137, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1138, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1139, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1140, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1141, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1142, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1143, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1144, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1145, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1146, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1147, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1148, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1149, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1150, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1151, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1152, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1153, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1154, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1155, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1156, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1157, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1158, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1159, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1160, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1161, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1162, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1163, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1164, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1165, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1166, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1167, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1168, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1169, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1170, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1171, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1172, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1173, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1174, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1175, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1176, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1177, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1178, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1179, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1180, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1181, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1182, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1183, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1184, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1185, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1186, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1187, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1188, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1189, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1190, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1191, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1192, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1193, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1194, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1195, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1196, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1197, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1198, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1199, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1200, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1201, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1202, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1203, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1204, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1205, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1206, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1207, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1208, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1209, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1210, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1211, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1212, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1213, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1214, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1215, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1216, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1217, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1218, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1219, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1220, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1221, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1222, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1223, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1224, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1225, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1226, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1227, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1228, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1229, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1230, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1231, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1232, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1233, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1234, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1235, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1236, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1237, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1238, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1239, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1240, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1241, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1242, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1243, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1244, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1245, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1246, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1247, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1248, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1249, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1250, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1251, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1252, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1253, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1254, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1255, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1256, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1257, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1258, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1259, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1260, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1261, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1262, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1263, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1264, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1265, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1266, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1267, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1268, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1269, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1270, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1271, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1272, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1273, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1274, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1275, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1276, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1277, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1278, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1279, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1280, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1281, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1282, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1283, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1284, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1285, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1286, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1287, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1288, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1289, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1290, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1291, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1292, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1293, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1294, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1295, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1296, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1297, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1298, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1299, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1300, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1301, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1302, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1303, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1304, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1305, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1306, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1307, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1308, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1309, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1310, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1311, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1312, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1313, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1314, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1315, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1316, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1317, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1318, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1319, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1320, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1321, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1322, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1323, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1324, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1325, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1326, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1327, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1328, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1329, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1330, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1331, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1332, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1333, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1334, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1335, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1336, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1337, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1338, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1339, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1340, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1341, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1342, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1343, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1344, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1345, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1346, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1347, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1348, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1349, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1350, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1351, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1352, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1353, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1354, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1355, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1356, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1357, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1358, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1359, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1360, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1361, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1362, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1363, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1364, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1365, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1366, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1367, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1368, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1369, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1370, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1371, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1372, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1373, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1374, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1375, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1376, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1377, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1378, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1379, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1380, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1381, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1382, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1383, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1384, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1385, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1386, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1387, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1388, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1389, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1390, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1391, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1392, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1393, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1394, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1395, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1396, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1397, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1398, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1399, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1400, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1401, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1402, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1403, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1404, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1405, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1406, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1407, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1408, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1409, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1410, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1411, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1412, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1413, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1414, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1415, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1416, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1417, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1418, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1419, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1420, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1421, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1422, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1423, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1424, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1425, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1426, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1427, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1428, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1429, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1430, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1431, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1432, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1433, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1434, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1435, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1436, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1437, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1438, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1439, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1440, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1441, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1442, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1443, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1444, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1445, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1446, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1447, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1448, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1449, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1450, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1451, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1452, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1453, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1454, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1455, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1456, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1457, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1458, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1459, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1460, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1461, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1462, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1463, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1464, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1465, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1466, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1467, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1468, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1469, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1470, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1471, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1472, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1473, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1474, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1475, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1476, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1477, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1478, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1479, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1480, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1481, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1482, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1483, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1484, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1485, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1486, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1487, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1488, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1489, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1490, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1491, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1492, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1493, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1494, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1495, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1496, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1497, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1498, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1499, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1500, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1501, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1502, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1503, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1504, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1505, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1506, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1507, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1508, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1509, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1510, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1511, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1512, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1513, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1514, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1515, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1516, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1517, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1518, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1519, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1520, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1521, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1522, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1523, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1524, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1525, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1526, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1527, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1528, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1529, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1530, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1531, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1532, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1533, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1534, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1535, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1536, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1537, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1538, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1539, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1540, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1541, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1542, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1543, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1544, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1545, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1546, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1547, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1548, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1549, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1550, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1551, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1552, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1553, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1554, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1555, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1556, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1557, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1558, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1559, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1560, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1561, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1562, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1563, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1564, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1565, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1566, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1567, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1568, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1569, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1570, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1571, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1572, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1573, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1574, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1575, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1576, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1577, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1578, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1579, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1580, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1581, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1582, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1583, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1584, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1585, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1586, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1587, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1588, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1589, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1590, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1591, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1592, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1593, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1594, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1595, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1596, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1597, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1598, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1599, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1600, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1601, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1602, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1603, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1604, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1605, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1606, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1607, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1608, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1609, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1610, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1611, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1612, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1613, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1614, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1615, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1616, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1617, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1618, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1619, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1620, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1621, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1622, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1623, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1624, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1625, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1626, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1627, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1628, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1629, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1630, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1631, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1632, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1633, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1634, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1635, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1636, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1637, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1638, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1639, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1640, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1641, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1642, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1643, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1644, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1645, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1646, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1647, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1648, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1649, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1650, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1651, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1652, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1653, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1654, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1655, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1656, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1657, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1658, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1659, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1660, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1661, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1662, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1663, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1664, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1665, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1666, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1667, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1668, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1669, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1670, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1671, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1672, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1673, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1674, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1675, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1676, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1677, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1678, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1679, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1680, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1681, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1682, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1683, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1684, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1685, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1686, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1687, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1688, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1689, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1690, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1691, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1692, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1693, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1694, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1695, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1696, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1697, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1698, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1699, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1700, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1701, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1702, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1703, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1704, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1705, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1706, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1707, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1708, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1709, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1710, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1711, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1712, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1713, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1714, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1715, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1716, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1717, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1718, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1719, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1720, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1721, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1722, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1723, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1724, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1725, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1726, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1727, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1728, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1729, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1730, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1731, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1732, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1733, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1734, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1735, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1736, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1737, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1738, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1739, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1740, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1741, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1742, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1743, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1744, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1745, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1746, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1747, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1748, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1749, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1750, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1751, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1752, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1753, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1754, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1755, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1756, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1757, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1758, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1759, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1760, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1761, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1762, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1763, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1764, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1765, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1766, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1767, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1768, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1769, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1770, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1771, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1772, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1773, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1774, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1775, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1776, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1777, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1778, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1779, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1780, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1781, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1782, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1783, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1784, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1785, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1786, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1787, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1788, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1789, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1790, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1791, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1792, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1793, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1794, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1795, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1796, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1797, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1798, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1799, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1800, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1801, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1802, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1803, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1804, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1805, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1806, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1807, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1808, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1809, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1810, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1811, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1812, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1813, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1814, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1815, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1816, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1817, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1818, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1819, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1820, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1821, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1822, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1823, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1824, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1825, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1826, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1827, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1828, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1829, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1830, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1831, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1832, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1833, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1834, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1835, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1836, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1837, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1838, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1839, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1840, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1841, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1842, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1843, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1844, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1845, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1846, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1847, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1848, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1849, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1850, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1851, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1852, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1853, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1854, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1855, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1856, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1857, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1858, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1859, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1860, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1861, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1862, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1863, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1864, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1865, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1866, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1867, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1868, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1869, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1870, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1871, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1872, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1873, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1874, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1875, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1876, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1877, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1878, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1879, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1880, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1881, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1882, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1883, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1884, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1885, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1886, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1887, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1888, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1889, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1890, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1891, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1892, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1893, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1894, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1895, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1896, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1897, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1898, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1899, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1900, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Create', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1901, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Read', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1902, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Update', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1903, N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'Home:Delete', N'e9116fef-780b-4adb-be00-610ebba8dc4b')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1904, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Create', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1905, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Read', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1906, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Update', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1907, N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Home:Delete', N'c40e0730-62cd-4f99-8c6a-0a62a31867b7')
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c1f0a7a3-ed53-42b8-9a57-bdf15ba1379a', N'General', N'GENERAL', N'bd699407-09d0-46ab-ae61-09990d47c319')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c40e0730-62cd-4f99-8c6a-0a62a31867b7', N'Admin', N'ADMIN', N'300f1338-6794-4fd0-85f0-1ccc47fafc60')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e9116fef-780b-4adb-be00-610ebba8dc4b', N'SuperAdmin', N'SUPERADMIN', N'9f8b3ace-ec81-4a6e-bb1d-6ed052929ca8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f3bc6e1e-9459-4903-aefb-bfbf1fd7eb4a', N'HR', N'HR', N'a9e46928-c0d9-4688-9cc5-63532c2237c0')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'12d22b3e-046a-4ad8-942e-8286fb22311a', N'sa', N'SA', N'sa@alphasoft.com.bd', N'SA@ALPHASOFT.COM.BD', 0, N'AQAAAAEAACcQAAAAEBeEM3kzfpPwTI6jkzhb1z9UgQHqlsLH0aqlKd8Utc0DQ0VfD+qtIs4wMi9CIXq/FQ==', N'7YGSLXZFPTGPJOYOAARM7CDH7VGVOHQ2', N'64e2ed35-6b53-4176-b95c-d9733520c6b9', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Image], [SolganOne], [SolganTwo], [SolganThree]) VALUES (NULL, NULL, NULL, NULL, NULL, 3, N'/images/Banners/Banner.4.jpg', N'<p><span style="color: rgb(255, 255, 255);">HUMAN RESOURCE MANAGEMENT SYSTEM</span></p>', N'<p><span style="color: rgb(0, 255, 255);">BEST CLOUD HRMS IN BANGLADESH</span></p>', NULL)
INSERT [dbo].[Banners] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Image], [SolganOne], [SolganTwo], [SolganThree]) VALUES (NULL, NULL, NULL, NULL, NULL, 6, N'/images/Banners/Banner.jpg', N'<p><span style="color: rgb(0, 0, 255);"><span style="font-family: &quot;Comic Sans MS&quot;;">﻿</span><span style="font-family: &quot;Comic Sans MS&quot;;">We make software &amp; website as your requirement</span></span></p>', N'<p>Specially Design For-</p><p><br></p>', N'<p style="text-align: center;"><span style="color: rgb(0, 0, 255);">Super shop</span> ,<span style="color: rgb(0, 0, 255);">Electronics Shop,Pharmacy ,Fashion House,Electric shop, Mobile shop, Computer shop or any Trading Business&nbsp;</span></p>')
INSERT [dbo].[Banners] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Image], [SolganOne], [SolganTwo], [SolganThree]) VALUES (NULL, NULL, NULL, NULL, NULL, 7, N'/images/Banners/Banner.3.jpg', N'<p><span style="color: rgb(0, 0, 255);">Accelerate Your Business With Pronali ERP</span></p>', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Banners] OFF
SET IDENTITY_INSERT [dbo].[Careers] ON 

INSERT [dbo].[Careers] ([Id], [OportunityDescription], [OurBenifiteDescription], [OurCultureDescription]) VALUES (3, N'<p>Hello&nbsp;</p>', N'<p>Hi bangladesh</p>', N'<p>Hello</p>')
SET IDENTITY_INSERT [dbo].[Careers] OFF
SET IDENTITY_INSERT [dbo].[ChooseUs] ON 

INSERT [dbo].[ChooseUs] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Title], [ShortDescription], [Description], [Order], [IsActive]) VALUES (NULL, NULL, NULL, NULL, NULL, 1, N'Well Documented', N'All of our works have good and well established documents.', N'<p><span style="color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 14px; font-weight: 400; text-align: center;">All of our works have good and well established documents.</span><br></p>', N'1', 1)
INSERT [dbo].[ChooseUs] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Title], [ShortDescription], [Description], [Order], [IsActive]) VALUES (NULL, NULL, NULL, NULL, NULL, 2, N'24/7 Customer Support', N'Giving a solid support to the clients.', N'<p><span style="color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 14px; font-weight: 400; text-align: center;">Giving a solid support to the clients.</span><br></p>', N'2', 1)
INSERT [dbo].[ChooseUs] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Title], [ShortDescription], [Description], [Order], [IsActive]) VALUES (NULL, NULL, NULL, NULL, NULL, 3, N'Analyzing', N'We analyze the client''s whole requirements in an organized way.', N'<p><span style="color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 14px; font-weight: 400; text-align: center;">We analyze the client''s whole requirements in an organized way.</span><br></p>', N'3', 1)
INSERT [dbo].[ChooseUs] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Title], [ShortDescription], [Description], [Order], [IsActive]) VALUES (NULL, NULL, NULL, NULL, NULL, 4, N'Installations & Setup', N'Our product''s installation is very simple and usability is quite good.', N'<p><span style="color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 14px; font-weight: 400; text-align: center;">Our product''s installation is very simple and usability is quite good.</span><br></p>', N'4', 1)
INSERT [dbo].[ChooseUs] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Title], [ShortDescription], [Description], [Order], [IsActive]) VALUES (NULL, NULL, NULL, NULL, NULL, 5, N'Agreement', N'We create proper agreements with client according to the law , terms & conditions.', N'<p><span style="color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 14px; font-weight: 400; text-align: center;">We create proper agreements with client according to the law , terms &amp; conditions.</span><br></p>', N'5', 1)
SET IDENTITY_INSERT [dbo].[ChooseUs] OFF
SET IDENTITY_INSERT [dbo].[ClientProducts] ON 

INSERT [dbo].[ClientProducts] ([Id], [ClientId], [ProductId]) VALUES (4, 6, 13)
SET IDENTITY_INSERT [dbo].[ClientProducts] OFF
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 1, N'Apex', N'/images/Clients/Apexapex.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 2, N'Bata', N'/images/Clients/Batabata.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 3, N'Gmail', N'/images/Clients/Gmailgmail.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 4, N'Keya', N'/images/Clients/KeyaKeya_Website_Logo.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 5, N'Adidas', N'/images/Clients/Adidasadidas.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 6, N'Alphasoft Technology Limited', N'/images/Clients/Alphasoft Technology Limitedalphalogo.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 7, N'Madina Group', N'/images/Clients/Madina GroupMadina-Group.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 8, N'Yamaha', N'/images/Clients/Yamahayamaha.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 9, N'Mayfair', N'/images/Clients/Mayfairmayfair_ico.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 10, N'Palmal', N'/images/Clients/PalmalPallmall.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Phone], [Email], [Address], [ClientSaysAboutUs]) VALUES (NULL, NULL, NULL, NULL, NULL, 11, N'Coca Cola', N'/images/Clients/Coca Colacoke.png', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Logo], [Slogan], [Address], [Phone], [Email], [Facebook], [LinkedIn], [Twitter], [Youtube], [Favicon], [ShortDescription], [Description], [GoogleMapLocation]) VALUES (NULL, NULL, NULL, NULL, NULL, 1, N'Alphasoft Technology Limited', N'/images/Company/Alphasoft Technology Limitedalphalogo.png', N'defining the ultimate', N'Muktabangla Shopping Complex, Mirpur 1, Dhaka 1216', N'01521544896', N'admin@alphasoft.com.bd', NULL, NULL, NULL, NULL, N'undefined', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Companies] OFF
SET IDENTITY_INSERT [dbo].[ContactUs] ON 

INSERT [dbo].[ContactUs] ([Id], [Name], [Phone], [Email], [Message]) VALUES (4, N'ALPHASOFT TECHNOLOGY LTD.', NULL, N'info@alphasoft.com.bd', N'Get In Touch With Us ')
INSERT [dbo].[ContactUs] ([Id], [Name], [Phone], [Email], [Message]) VALUES (5, N'ALPHASOFT TECHNOLOGY LTD.', NULL, N'info@alphasoft.com.bd', N'Get In Touch With Us ')
SET IDENTITY_INSERT [dbo].[ContactUs] OFF
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name]) VALUES (NULL, NULL, NULL, NULL, NULL, 4, N'Marketing')
INSERT [dbo].[Departments] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name]) VALUES (NULL, NULL, NULL, NULL, NULL, 5, N'Software Engineer')
INSERT [dbo].[Departments] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name]) VALUES (NULL, NULL, NULL, NULL, NULL, 6, N'Service & Support ')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Designations] ON 

INSERT [dbo].[Designations] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name]) VALUES (NULL, NULL, NULL, NULL, NULL, 4, N'Marketing')
INSERT [dbo].[Designations] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name]) VALUES (NULL, NULL, NULL, NULL, NULL, 5, N'Software Engineer')
INSERT [dbo].[Designations] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name]) VALUES (NULL, NULL, NULL, NULL, NULL, 6, N'Support Engineer')
SET IDENTITY_INSERT [dbo].[Designations] OFF
SET IDENTITY_INSERT [dbo].[Faqs] ON 

INSERT [dbo].[Faqs] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Question], [Answer]) VALUES (NULL, NULL, NULL, NULL, NULL, 4, N'How do you handle communications and meetings in case your development resources are located abroad?', N'<p><span style="color: rgb(69, 69, 70); font-family: &quot;Myriad W01 Regular&quot;; font-size: 15px; font-weight: 400; letter-spacing: 0.45px;">alternate-day, or weekly format. We use Skype, GoToMeeting, or telephone calls for scheduling the meetings. We provide our customers with the access to our project management tool, which allows them to monitor the progress of their project at any hour of the day.</span><br></p>')
INSERT [dbo].[Faqs] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Question], [Answer]) VALUES (NULL, NULL, NULL, NULL, NULL, 8, N' How many development resources do you usually assign to a project?', N'<span style="color: rgb(69, 69, 70); font-family: &quot;Myriad W01 Regular&quot;; font-size: 15px; font-weight: 400; letter-spacing: 0.45px;">The number of resources employed for a project depends entirely upon the scale and complexity of the project. For example - we allocate two developers, one tester and a part-time UI designer for a small project. In addition, each project will have a Technical Architect, Business Analyst and Project Manager. We can increase the number of resources depending upon the customer/project requirements.</span>')
INSERT [dbo].[Faqs] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Question], [Answer]) VALUES (NULL, NULL, NULL, NULL, NULL, 9, N'Do you practice code reviews? If yes, how frequent is that?', N'<p><span style="color: rgb(69, 69, 70); font-family: &quot;Myriad W01 Regular&quot;; font-size: 15px; font-weight: 400; letter-spacing: 0.45px;">A Peer Review practice is a part of our standard development process. Any code developed by an application resource is always verified by another application resource. Only after verification is the software released for testing. This practice is applicable only when the customer hires more than one developer.</span><br></p>')
INSERT [dbo].[Faqs] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Question], [Answer]) VALUES (NULL, NULL, NULL, NULL, NULL, 10, N'How do you handle change requests from your customers?', N'<p><span style="color: rgb(69, 69, 70); font-family: &quot;Myriad W01 Regular&quot;; font-size: 15px; font-weight: 400; letter-spacing: 0.45px;">We have a standard procedure of handling change requests from our customers. Firstly, we seek their approval for any change request. After the customer approves the request, we do an impact analysis. This allows us to deliver the timelines and cost estimates to the customer. Once the customer approves the estimates, we implement the changes.</span><br></p>')
SET IDENTITY_INSERT [dbo].[Faqs] OFF
SET IDENTITY_INSERT [dbo].[HostingPlan] ON 

INSERT [dbo].[HostingPlan] ([Id], [Name], [Space], [Bandwidth], [Domain], [SubDomain], [Alias], [Email], [CPanel], [YearlyPrice], [PriceUnit], [MonthlyPrice]) VALUES (1, N'Basic', N'1 GB', N'Unlimited', 1, N'Unlimited', N'Unlimited', N'Unlimited', 1, CAST(1450.00 AS Decimal(18, 2)), N'Year', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[HostingPlan] ([Id], [Name], [Space], [Bandwidth], [Domain], [SubDomain], [Alias], [Email], [CPanel], [YearlyPrice], [PriceUnit], [MonthlyPrice]) VALUES (2, N'Business', N'20 GB', N'Unlimited', 20, N'Unlimited', N'Unlimited', N'Unlimited', 1, CAST(5000.00 AS Decimal(18, 2)), N'Year', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[HostingPlan] ([Id], [Name], [Space], [Bandwidth], [Domain], [SubDomain], [Alias], [Email], [CPanel], [YearlyPrice], [PriceUnit], [MonthlyPrice]) VALUES (3, N'Corporate', N'Unlimited', N'Unlimited', 20, N'Unlimited', N'Unlimited', N'Unlimited', 1, CAST(7000.00 AS Decimal(18, 2)), N'Year', CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[HostingPlan] OFF
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([Id], [Title], [Description], [Location], [Qualification], [JobCreateDate], [DeadLine]) VALUES (1, N'ASP.Net', N'<p>This is good Job.</p><p><br></p>', N'Mirpur-12', N'CSE', CAST(N'2019-11-20 00:00:00.0000000' AS DateTime2), CAST(N'2019-11-20 00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Jobs] OFF
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 1, N'Company', N'ClientView', N'Companies', 1, 0, N'0')
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 2, N'Software', N'ClientView', N'Software', 1, 0, N'1')
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 9, N'Services', N'ClientView', N'Services', 1, 0, NULL)
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 10, N'Products', N'ClientView', N'Products', 1, 0, NULL)
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 13, N'Clients', N'ClientView', N'Clients', 1, 0, NULL)
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 14, N'Blogs', N'ClientView', N'Blogs', 1, 0, N'0')
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 15, N'FAQ', N'ClientView', N'Faq', 1, 0, N'0')
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 16, N'Our Team', N'ClientView', N'OurTeam', 1, 1, N'0')
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 17, N'About Us', N'ClientView', N'AboutUs', 1, 1, N'0')
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 20, N'Trade Wise', N'ClientView', N'ServicewiseSoftware', 1, 2, N'0')
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 26, N'Service Wise', N'ClientView', N'ServiceWise', 1, 2, N'0')
INSERT [dbo].[Menus] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [ControllerName], [ActionName], [IsActive], [ParentId], [DropdownType]) VALUES (NULL, NULL, NULL, NULL, NULL, 27, N'Pronali ERP', N'ClientView', N'Software', 1, 20, N'0')
SET IDENTITY_INSERT [dbo].[Menus] OFF
SET IDENTITY_INSERT [dbo].[OurTeams] ON 

INSERT [dbo].[OurTeams] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [DepartmentId], [DesignationId], [Image], [Description], [Facebook], [Twitter], [LinkedIn]) VALUES (NULL, NULL, NULL, NULL, NULL, 2, N'Rijvy', 5, 5, N'/images/OurTeam/Rijvynike.png', NULL, N'https://www.facebook.com/s.rijvy', NULL, NULL)
INSERT [dbo].[OurTeams] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [DepartmentId], [DesignationId], [Image], [Description], [Facebook], [Twitter], [LinkedIn]) VALUES (NULL, NULL, NULL, NULL, NULL, 3, N'Samia Reaz Logon', 5, 5, N'/images/OurTeam/Samia Reaz Logon7.png', N'<p>Hello&nbsp; &nbsp; &nbsp;I Am Samia</p>', NULL, NULL, NULL)
INSERT [dbo].[OurTeams] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [DepartmentId], [DesignationId], [Image], [Description], [Facebook], [Twitter], [LinkedIn]) VALUES (NULL, NULL, NULL, NULL, NULL, 4, N'Nourin Rahman Chowdhury', 6, 6, N'undefined', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OurTeams] OFF
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Image]) VALUES (NULL, NULL, NULL, NULL, NULL, 1, N'Camera', NULL)
INSERT [dbo].[ProductCategories] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Image]) VALUES (NULL, NULL, NULL, NULL, NULL, 3, N' SECURITY ALARM', NULL)
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Image], [PurchasePrice], [RetailPrice], [WholeSellPrice], [Discount], [Description], [ReleaseDate], [ShortDescription], [ProductCategoryId], [IsPopular]) VALUES (NULL, NULL, NULL, NULL, NULL, 6, N'CCTV', N'/images/Products/CCTVhome_product_04.png', 150, 200, 170, 0, N'<p><span style="font-family: arial, sans-serif; font-size: 14px; font-weight: 400;">A closed-circuit television camera can produce images or recordings for surveillance or other private purposes. Cameras can be either video cameras, or digital stills cameras. Walter Bruch was the inventor of the&nbsp;</span><span style="font-family: arial, sans-serif; font-size: 14px;">CCTV</span><span style="font-family: arial, sans-serif; font-size: 14px; font-weight: 400;">&nbsp;camera.</span><br></p>', CAST(N'2019-11-20 00:00:00.0000000' AS DateTime2), N'A closed-circuit television camera can produce images or recordings for surveillance.', 1, 1)
INSERT [dbo].[Products] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Image], [PurchasePrice], [RetailPrice], [WholeSellPrice], [Discount], [Description], [ReleaseDate], [ShortDescription], [ProductCategoryId], [IsPopular]) VALUES (NULL, NULL, NULL, NULL, NULL, 13, N'MAGPIE 360 IP Camera', N'/images/Products/MAGPIE 360 IP Cameradownload(2).jpg', NULL, NULL, NULL, NULL, N'<ol style="font-size: 12.8px;"><li>Video record can be watch</li><li>Over remote viewing system</li><li>Angle of View 360</li><li>Two way audio</li><li>Work with Mobilke,TAB,IPAD &amp; PC</li></ol>', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Image Sensor:1/3" CMOS SENSOR Lens:1.44mm Visual angle:360 Audio Source:Passive microphone', 1, 1)
INSERT [dbo].[Products] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Image], [PurchasePrice], [RetailPrice], [WholeSellPrice], [Discount], [Description], [ReleaseDate], [ShortDescription], [ProductCategoryId], [IsPopular]) VALUES (NULL, NULL, NULL, NULL, NULL, 14, N'PSTN HOME SECURITY ALARM', N'/images/Products/PSTN HOME SECURITY ALARMimages(1).jpg', NULL, NULL, NULL, NULL, N'<p><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-weight: 400;">A&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;">security alarm</b><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-weight: 400;">&nbsp;is a system designed to detect intrusion – unauthorized entry – into a building or other area. Security alarms are used in residential, commercial, industrial, and military properties for protection against&nbsp;</span><a href="https://en.wikipedia.org/wiki/Burglary" title="Burglary" style="color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-weight: 400;">burglary</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-weight: 400;">&nbsp;(</span><a href="https://en.wikipedia.org/wiki/Theft" title="Theft" style="color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-weight: 400;">theft</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-weight: 400;">) or&nbsp;</span><a href="https://en.wikipedia.org/wiki/Property_damage" title="Property damage" style="color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-weight: 400;">property damage</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-weight: 400;">, as well as personal protection against intruders. Security alarms in residential areas show a correlation with decreased theft.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-weight: 400; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif;"><a href="https://en.wikipedia.org/wiki/Security_alarm#cite_note-1" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">[1]</a></sup><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-weight: 400;">&nbsp;</span><a href="https://en.wikipedia.org/wiki/Car_alarm" title="Car alarm" style="color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-weight: 400;">Car alarms</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-weight: 400;">&nbsp;likewise help protect vehicles and their contents.&nbsp;</span><a href="https://en.wikipedia.org/wiki/Prison" title="Prison" style="color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-weight: 400;">Prisons</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-weight: 400;">&nbsp;also use security systems for control of&nbsp;</span><a href="https://en.wikipedia.org/wiki/Inmate" class="mw-redirect" title="Inmate" style="color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px; font-weight: 400;">inmates</a><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-weight: 400;">.</span><br></p>', CAST(N'2019-11-20 00:00:00.0000000' AS DateTime2), N'Anti-Decoding function
Password protection
Telephone line anti-cut alarm function
 & many more', 3, 1)
INSERT [dbo].[Products] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Image], [PurchasePrice], [RetailPrice], [WholeSellPrice], [Discount], [Description], [ReleaseDate], [ShortDescription], [ProductCategoryId], [IsPopular]) VALUES (NULL, NULL, NULL, NULL, NULL, 15, N'GSM HOME SECURITY ALARM', N'/images/Products/GSM HOME SECURITY ALARMalfawise-pg-105-gsm-wifi-433mhz-wireless-smart-home-security-alarm-system-1.jpg', NULL, NULL, NULL, NULL, N'<p><span style="color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; font-weight: 400; text-align: justify;">Security is a big challenge everywhere because thefts are increasing day by day owing to the unsafe and insecure security systems in homes, commercial complexes and industries. Several conventional technologies are available to keep home properties safe from intruders, but most common smart&nbsp;</span><a href="https://www.elprocus.com/home-automation-systems-applications/" target="_blank" rel="noopener" style="border: 0px; font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; font-weight: 400; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(224, 56, 0); text-align: justify; background-color: rgb(255, 255, 255);">home security systems</a><span style="color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; font-weight: 400; text-align: justify;">&nbsp;work on&nbsp;</span><a href="https://www.elprocus.com/wireless-communication-project-ideas/" target="_blank" rel="noopener" style="border: 0px; font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; font-weight: 400; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(224, 56, 0); text-align: justify; background-color: rgb(255, 255, 255);">wireless GSM communication</a><span style="color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; font-weight: 400; text-align: justify;">. Such systems provide security from natural, incidental, intended, unintended, accidental and human made problems by continuously monitoring homes with different sensory systems like motion, smoke, gas, temperature, glass break or door break detectors and fire alarm systems.</span><br></p>', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Each zone has independent arm/disarm  function
With voice reminder when users operate the system
etc', 3, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ServiceCategories] ON 

INSERT [dbo].[ServiceCategories] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name]) VALUES (NULL, NULL, NULL, NULL, NULL, 4, N'Website')
INSERT [dbo].[ServiceCategories] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name]) VALUES (NULL, NULL, NULL, NULL, NULL, 5, N'Software')
INSERT [dbo].[ServiceCategories] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name]) VALUES (NULL, NULL, NULL, NULL, NULL, 6, N'Security System')
SET IDENTITY_INSERT [dbo].[ServiceCategories] OFF
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Image], [Price], [Description], [ShortDescription], [ServiceCategoryId], [IconClassName]) VALUES (NULL, NULL, NULL, NULL, NULL, 4, N'Customized Website', NULL, 5000, NULL, N'We build powerful, good looking websites.', 4, N'fas fa-code')
INSERT [dbo].[Services] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Image], [Price], [Description], [ShortDescription], [ServiceCategoryId], [IconClassName]) VALUES (NULL, NULL, NULL, NULL, NULL, 8, N'Pronali ERP', NULL, NULL, N'<p>Pronali ERP&nbsp;</p>', N'Pronali ERP is a fascinating kind of business solution for those smart people who have to keep peac', 5, N'fas fa-cogs')
INSERT [dbo].[Services] ([CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [UpdateCount], [Id], [Name], [Image], [Price], [Description], [ShortDescription], [ServiceCategoryId], [IconClassName]) VALUES (NULL, NULL, NULL, NULL, NULL, 9, N'MAGPIE 360 IP Camera', NULL, NULL, N'<ol><li>Video record can be watch</li><li>Over remote viewing system</li><li>Angle of View 360</li><li>Two way audio</li></ol>', N'Image Sensor:1/3" CMOS SENSOR
Lens:1.44mm Visual angle:360
Audio Source:Passive microphone 
and may
', 6, N'fas fa-camera')
SET IDENTITY_INSERT [dbo].[Services] OFF
SET IDENTITY_INSERT [dbo].[SoftwareCategories] ON 

INSERT [dbo].[SoftwareCategories] ([Id], [Name], [Thumbnail], [Image]) VALUES (5, N'Ratail Software', NULL, N'/images/Softwarecategory/Accounting-Software.jpg')
INSERT [dbo].[SoftwareCategories] ([Id], [Name], [Thumbnail], [Image]) VALUES (8, N'HRMS Software', NULL, N'undefined')
INSERT [dbo].[SoftwareCategories] ([Id], [Name], [Thumbnail], [Image]) VALUES (11, N'Management Software', NULL, N'undefined')
SET IDENTITY_INSERT [dbo].[SoftwareCategories] OFF
SET IDENTITY_INSERT [dbo].[Softwares] ON 

INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (8, N'Retail Software', N'undefined', N'undefined', NULL, NULL, 5)
INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (20, N'HRMS', N'undefined', N'undefined', NULL, NULL, 8)
INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (21, N'Payroll Software', N'undefined', N'undefined', NULL, NULL, 11)
INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (22, N'Supply Chain Management', N'undefined', N'undefined', NULL, NULL, 11)
INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (23, N'Inventory MAnagement', N'undefined', N'undefined', NULL, NULL, 11)
INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (24, N'Production Management', N'undefined', N'undefined', NULL, NULL, 11)
INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (25, N'Import And Export Business Management Software', N'undefined', N'undefined', NULL, NULL, 11)
INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (26, N'Restaurant Management Software', N'undefined', N'undefined', NULL, NULL, 11)
INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (27, N'Distributor Management Software', N'undefined', N'undefined', NULL, NULL, 11)
INSERT [dbo].[Softwares] ([Id], [Title], [Icon], [Image], [ShortDescription], [Description], [SoftwareCategoryId]) VALUES (28, N' ERP for General Good manufacturer', N'undefined', N'undefined', NULL, NULL, 11)
SET IDENTITY_INSERT [dbo].[Softwares] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientProducts_ClientId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientProducts_ClientId] ON [dbo].[ClientProducts]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientProducts_ProductId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientProducts_ProductId] ON [dbo].[ClientProducts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OurTeams_DepartmentId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_OurTeams_DepartmentId] ON [dbo].[OurTeams]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OurTeams_DesignationId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_OurTeams_DesignationId] ON [dbo].[OurTeams]
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ProductCategoryId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_ProductCategoryId] ON [dbo].[Products]
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Services_ServiceCategoryId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_Services_ServiceCategoryId] ON [dbo].[Services]
(
	[ServiceCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Softwares_SoftwareCategoryId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_Softwares_SoftwareCategoryId] ON [dbo].[Softwares]
(
	[SoftwareCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubMenus_MenuId]    Script Date: 11/20/2019 7:25:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubMenus_MenuId] ON [dbo].[SubMenus]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Date]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ClientProducts]  WITH CHECK ADD  CONSTRAINT [FK_ClientProducts_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientProducts] CHECK CONSTRAINT [FK_ClientProducts_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientProducts]  WITH CHECK ADD  CONSTRAINT [FK_ClientProducts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientProducts] CHECK CONSTRAINT [FK_ClientProducts_Products_ProductId]
GO
ALTER TABLE [dbo].[OurTeams]  WITH CHECK ADD  CONSTRAINT [FK_OurTeams_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OurTeams] CHECK CONSTRAINT [FK_OurTeams_Departments_DepartmentId]
GO
ALTER TABLE [dbo].[OurTeams]  WITH CHECK ADD  CONSTRAINT [FK_OurTeams_Designations_DesignationId] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OurTeams] CHECK CONSTRAINT [FK_OurTeams_Designations_DesignationId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductCategories_ProductCategoryId] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductCategories_ProductCategoryId]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_ServiceCategories_ServiceCategoryId] FOREIGN KEY([ServiceCategoryId])
REFERENCES [dbo].[ServiceCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_ServiceCategories_ServiceCategoryId]
GO
ALTER TABLE [dbo].[Softwares]  WITH CHECK ADD  CONSTRAINT [FK_Softwares_SoftwareCategories_SoftwareCategoryId] FOREIGN KEY([SoftwareCategoryId])
REFERENCES [dbo].[SoftwareCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Softwares] CHECK CONSTRAINT [FK_Softwares_SoftwareCategories_SoftwareCategoryId]
GO
ALTER TABLE [dbo].[SubMenus]  WITH CHECK ADD  CONSTRAINT [FK_SubMenus_Menus_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubMenus] CHECK CONSTRAINT [FK_SubMenus_Menus_MenuId]
GO
USE [master]
GO
ALTER DATABASE [AlphaWebsite] SET  READ_WRITE 
GO
