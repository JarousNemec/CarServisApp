USE [master]
GO
/****** Object:  Database [Autoservis]    Script Date: 23.11.2023 11:06:20 ******/
CREATE DATABASE [Autoservis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Autoservis', FILENAME = N'/var/opt/mssql/data/Autoservis.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Autoservis_log', FILENAME = N'/var/opt/mssql/data/Autoservis_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Autoservis] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Autoservis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Autoservis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Autoservis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Autoservis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Autoservis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Autoservis] SET ARITHABORT OFF 
GO
ALTER DATABASE [Autoservis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Autoservis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Autoservis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Autoservis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Autoservis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Autoservis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Autoservis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Autoservis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Autoservis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Autoservis] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Autoservis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Autoservis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Autoservis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Autoservis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Autoservis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Autoservis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Autoservis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Autoservis] SET RECOVERY FULL 
GO
ALTER DATABASE [Autoservis] SET  MULTI_USER 
GO
ALTER DATABASE [Autoservis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Autoservis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Autoservis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Autoservis] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Autoservis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Autoservis] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Autoservis', N'ON'
GO
ALTER DATABASE [Autoservis] SET QUERY_STORE = ON
GO
ALTER DATABASE [Autoservis] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Autoservis]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 23.11.2023 11:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
    [AddressId] [int] IDENTITY(1,1) NOT NULL,
    [Country] [nvarchar](50) NULL,
    [City] [nvarchar](50) NULL,
    [Postcode] [nvarchar](25) NULL,
    [Street] [nvarchar](50) NULL,
    [Housenumber] [nvarchar](10) NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED
(
[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[BillingInformation]    Script Date: 23.11.2023 11:06:21 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[BillingInformation](
    [BillId] [int] IDENTITY(1,1) NOT NULL,
    [CustomerId] [int] NULL,
    [Price] [float] NULL,
    [Date] [datetime] NULL,
    [Description] [text] NULL,
    [BillingAddressId] [int] NULL,
    CONSTRAINT [PK_BillingInformation] PRIMARY KEY CLUSTERED
(
[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Car]    Script Date: 23.11.2023 11:06:21 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Car](
    [CarId] [int] IDENTITY(1,1) NOT NULL,
    [Brand] [nvarchar](50) NULL,
    [Model] [nvarchar](50) NULL,
    [Spz] [nvarchar](50) NULL,
    [Vin] [nvarchar](50) NULL,
    [FirstRegistration] [datetime] NULL,
    CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED
(
[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23.11.2023 11:06:21 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Customer](
    [CustomerId] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](50) NULL,
    [Surname] [nvarchar](50) NULL,
    [AddressId] [int] NULL,
    [Email] [nvarchar](25) NULL,
    [Phone] [nvarchar](25) NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED
(
[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[CustomerCars]    Script Date: 23.11.2023 11:06:21 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[CustomerCars](
    [CustomerId] [int] NULL,
    [CarId] [int] NOT NULL,
     CONSTRAINT [PK_CustomerCars] PRIMARY KEY CLUSTERED
    (
[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Employees]    Script Date: 23.11.2023 11:06:21 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Employees](
    [EmployeeId] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](25) NULL,
    [Surname] [nvarchar](25) NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED
(
[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ServiceIntervention]    Script Date: 23.11.2023 11:06:21 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ServiceIntervention](
    [InterventionId] [int] IDENTITY(1,1) NOT NULL,
    [CarId] [int] NULL,
    [EmployeeId] [int] NULL,
    [Description] [text] NULL,
    [SpareParts] [text] NULL,
    [Date] [datetime] NULL,
    CONSTRAINT [PK_ServiceIntervention] PRIMARY KEY CLUSTERED
(
[InterventionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
    SET IDENTITY_INSERT [dbo].[Address] ON
    GO
    INSERT [dbo].[Address] ([AddressId], [Country], [City], [Postcode], [Street], [Housenumber]) VALUES (1, N'Czechia', N'Hradec', N'54875', N'Hradecka', N'69873')
    GO
    INSERT [dbo].[Address] ([AddressId], [Country], [City], [Postcode], [Street], [Housenumber]) VALUES (2, N'Austria', N'Vien', N'54712', N'GrosseSthrasse', N'45')
    GO
    SET IDENTITY_INSERT [dbo].[Address] OFF
    GO
    SET IDENTITY_INSERT [dbo].[BillingInformation] ON
    GO
    INSERT [dbo].[BillingInformation] ([BillId], [CustomerId], [Price], [Date], [Description], [BillingAddressId]) VALUES (1, 1, 1, CAST(N'2012-11-23T09:30:03.000' AS DateTime), N'desc', 1)
    GO
    SET IDENTITY_INSERT [dbo].[BillingInformation] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Car] ON
    GO
    INSERT [dbo].[Car] ([CarId], [Brand], [Model], [Spz], [Vin], [FirstRegistration]) VALUES (1, N'Toyota', N'Yaris', N'2E4 8566', N'MR0DR22G200013704', CAST(N'2012-11-23T09:30:03.000' AS DateTime))
    GO
    INSERT [dbo].[Car] ([CarId], [Brand], [Model], [Spz], [Vin], [FirstRegistration]) VALUES (2, N'Opel', N'Vectra', N' 6B4 9874', N'WAUZZZ8EX7A190506', CAST(N'1997-11-23T09:30:49.000' AS DateTime))
    GO
    SET IDENTITY_INSERT [dbo].[Car] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Customer] ON
    GO
    INSERT [dbo].[Customer] ([CustomerId], [Name], [Surname], [AddressId], [Email], [Phone]) VALUES (1, N'Michal', N'Zeman', 2, N'zeman.michal@ssakhk.cz', N'+420 747 512 513')
    GO
    INSERT [dbo].[Customer] ([CustomerId], [Name], [Surname], [AddressId], [Email], [Phone]) VALUES (2, N'Patrik ', N'Suchanek', 1, N'suchanek.patrik@ssakhk.cz', N'+420 787 512 988')
    GO
    SET IDENTITY_INSERT [dbo].[Customer] OFF
    GO
    INSERT [dbo].[CustomerCars] ([CustomerId], [CarId]) VALUES (1, 1)
    GO
    INSERT [dbo].[CustomerCars] ([CustomerId], [CarId]) VALUES (1, 2)
    GO
    SET IDENTITY_INSERT [dbo].[Employees] ON
    GO
    INSERT [dbo].[Employees] ([EmployeeId], [Name], [Surname]) VALUES (1, N'Franta', N'Novak')
    GO
    INSERT [dbo].[Employees] ([EmployeeId], [Name], [Surname]) VALUES (2, N'Jarda', N'Nemec')
    GO
    INSERT [dbo].[Employees] ([EmployeeId], [Name], [Surname]) VALUES (3, N'Honza', N'Kavan')
    GO
    SET IDENTITY_INSERT [dbo].[Employees] OFF
    GO
    SET IDENTITY_INSERT [dbo].[ServiceIntervention] ON
    GO
    INSERT [dbo].[ServiceIntervention] ([InterventionId], [CarId], [EmployeeId], [Description], [SpareParts], [Date]) VALUES (1, 2, 3, N'Bezna oprava', N'olej 15W 30; olejový filter Filtron', CAST(N'2023-06-23T10:05:26.000' AS DateTime))
    GO
    INSERT [dbo].[ServiceIntervention] ([InterventionId], [CarId], [EmployeeId], [Description], [SpareParts], [Date]) VALUES (2, 1, 2, N'Servis motoru', N'nové svícky', CAST(N'2023-05-23T10:05:46.000' AS DateTime))
    GO
    SET IDENTITY_INSERT [dbo].[ServiceIntervention] OFF
    GO
ALTER TABLE [dbo].[BillingInformation]  WITH CHECK ADD  CONSTRAINT [FK_BillingInformation_Address] FOREIGN KEY([BillingAddressId])
    REFERENCES [dbo].[Address] ([AddressId])
    GO
ALTER TABLE [dbo].[BillingInformation] CHECK CONSTRAINT [FK_BillingInformation_Address]
    GO
ALTER TABLE [dbo].[BillingInformation]  WITH CHECK ADD  CONSTRAINT [FK_BillingInformation_Customer] FOREIGN KEY([CustomerId])
    REFERENCES [dbo].[Customer] ([CustomerId])
    GO
ALTER TABLE [dbo].[BillingInformation] CHECK CONSTRAINT [FK_BillingInformation_Customer]
    GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address] FOREIGN KEY([AddressId])
    REFERENCES [dbo].[Address] ([AddressId])
    GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Address]
    GO
ALTER TABLE [dbo].[CustomerCars]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCars_Car] FOREIGN KEY([CarId])
    REFERENCES [dbo].[Car] ([CarId])
    GO
ALTER TABLE [dbo].[CustomerCars] CHECK CONSTRAINT [FK_CustomerCars_Car]
    GO
ALTER TABLE [dbo].[CustomerCars]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCars_Customer] FOREIGN KEY([CustomerId])
    REFERENCES [dbo].[Customer] ([CustomerId])
    GO
ALTER TABLE [dbo].[CustomerCars] CHECK CONSTRAINT [FK_CustomerCars_Customer]
    GO
ALTER TABLE [dbo].[ServiceIntervention]  WITH CHECK ADD  CONSTRAINT [FK_ServiceIntervention_Car] FOREIGN KEY([CarId])
    REFERENCES [dbo].[Car] ([CarId])
    GO
ALTER TABLE [dbo].[ServiceIntervention] CHECK CONSTRAINT [FK_ServiceIntervention_Car]
    GO
ALTER TABLE [dbo].[ServiceIntervention]  WITH CHECK ADD  CONSTRAINT [FK_ServiceIntervention_Employees] FOREIGN KEY([EmployeeId])
    REFERENCES [dbo].[Employees] ([EmployeeId])
    GO
ALTER TABLE [dbo].[ServiceIntervention] CHECK CONSTRAINT [FK_ServiceIntervention_Employees]
    GO
    USE [master]
    GO
ALTER DATABASE [Autoservis] SET  READ_WRITE 
GO
