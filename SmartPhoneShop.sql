USE [master]
GO
/****** Object:  Database [ShopSmartPhone]    Script Date: 6/22/2023 9:53:49 AM ******/
CREATE DATABASE [ShopSmartPhone]
 
GO
ALTER DATABASE [ShopSmartPhone] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopSmartPhone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopSmartPhone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ShopSmartPhone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopSmartPhone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopSmartPhone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopSmartPhone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopSmartPhone] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ShopSmartPhone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopSmartPhone] SET  MULTI_USER 
GO
ALTER DATABASE [ShopSmartPhone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopSmartPhone] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopSmartPhone] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopSmartPhone] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopSmartPhone] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopSmartPhone] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopSmartPhone] SET QUERY_STORE = OFF
GO
USE [ShopSmartPhone]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/22/2023 9:53:49 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppConfigs]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppConfigs](
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AppConfigs] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
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
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Count] [int] NOT NULL,
	[Promotion] [int] NOT NULL,
	[Describe] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [varchar](5) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[ShipAddress] [nvarchar](max) NULL,
	[ShipName] [nvarchar](max) NULL,
	[ShipPhoneNumber] [nvarchar](max) NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[CouponId] [int] NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[Details] [nvarchar](max) NULL,
	[Thumbnail] [nvarchar](300) NULL,
	[ProductImage] [nvarchar](300) NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 6/22/2023 9:53:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[ProductId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comments] [nvarchar](500) NOT NULL,
	[PublishedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210526190352_Initial', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210528082904_DateCreated_Product', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210529182730_AddColumnAddress_AppUserTable', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210603174646_AddRoleColumnInToAppUser', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210608222846_Order_Ship_Information_Column', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210608225122_Remove_Ship_Address_Column', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210612123309_Add_PaymentMethod_Column_To_Order_Table', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210612154309_StarRating', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210613070436_Coupon', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210615145114_Total_Column_Order', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210615152225_Change_PaymentMethod_Type_To_String_Order_Table', N'5.0.4')
GO
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0ff6973c-4c3e-4ba3-b32f-c5a169207e9d', N'NormalUser role', N'guest', N'guest', NULL)
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8d04dce2-969a-435d-bba4-df3f325983dc', N'Administrator role', N'admin', N'admin', N'45c68a23-cc5e-48ca-99d0-a42c4d863a21')
GO
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'8d04dce2-969a-435d-bba4-df3f325983dc')
GO
INSERT [dbo].[AppUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'32c08a02-3668-4238-3455-08db625f989b', N'Hà Hải Long', N'guest', N'GUEST', N'trienchieu904@gmail.com', N'TRIENCHIEU904@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENk+jfdc4YU/NUVLsjMfyQW5MLwbjSVAEW3CtRkVY0gxqlmi18ps5K+MRZx9ibL1Xw==', N'K4LYMTHXCBFOW2GOS2TSRLWUJ7HBXW3E', N'9d8f65a1-150c-4080-9bce-56a9738620b8', N'0328262315', 0, 0, NULL, 1, 0, N'TPHCM')
INSERT [dbo].[AppUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'HaHaiLong', N'admin', N'ADMIN', N'hailongsn99@gmail.com', N'HAILONGSN99@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKVBBlMrmMlMt0Yg0uyii07dHL4bgLL66e6yft/OspKL2nUOiOMCJSf9nGCh3Op5PQ==', N'', N'c3bcf8b1-e264-4485-adf0-363f21f1b31c', N'0765006381', 0, 0, NULL, 0, 0, N'TpHCM')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'iPhone')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Samsung')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Oppo')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Vivo')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Xiaomi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Nokia')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 

INSERT [dbo].[Coupons] ([Id], [Code], [Count], [Promotion], [Describe]) VALUES (1, N'GIAM20', 10, 20, N'<p>Giảm 20% ngày 24/12</p>')
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
INSERT [dbo].[Languages] ([Id], [Name], [IsDefault]) VALUES (N'en', N'English', 0)
INSERT [dbo].[Languages] ([Id], [Name], [IsDefault]) VALUES (N'vi', N'Tiếng Việt', 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (2, 10, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (3, 8, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (3, 22, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (4, 8, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (4, 22, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (5, 8, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (5, 24, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (6, 8, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (6, 22, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (7, 9, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (8, 34, 2)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (9, 8, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (10, 23, 1)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (10, 25, 1)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (1, N'69bd714f-9576-45ba-b5b7-f00649be00de', CAST(N'2023-05-31T20:56:41.5129737' AS DateTime2), 5, N'TpHCM', N'HaHaiLong', N'0328262315', N'COD', NULL, CAST(20990000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (2, N'32c08a02-3668-4238-3455-08db625f989b', CAST(N'2023-06-01T12:36:06.1962526' AS DateTime2), 5, N'TPHCM', N'Hà Hải Long', N'0328262315', N'COD', NULL, CAST(71930000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (3, N'32c08a02-3668-4238-3455-08db625f989b', CAST(N'2023-06-01T12:52:57.5553954' AS DateTime2), 5, N'TPHCM', N'Hà Hải Long', N'0328262315', N'COD', NULL, CAST(33520000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (4, N'32c08a02-3668-4238-3455-08db625f989b', CAST(N'2023-06-01T12:55:48.6590625' AS DateTime2), 5, N'TPHCM', N'Hà Hải Long', N'0328262315', N'COD', NULL, CAST(33520000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (5, N'32c08a02-3668-4238-3455-08db625f989b', CAST(N'2023-06-01T13:10:37.6321316' AS DateTime2), 4, N'TPHCM', N'Hà Hải Long', N'0328262315', N'COD', NULL, CAST(30620000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (6, N'32c08a02-3668-4238-3455-08db625f989b', CAST(N'2023-06-01T19:11:02.9891087' AS DateTime2), 5, N'TPHCM', N'Hà Hải Long', N'0328262315', N'COD', NULL, CAST(33520000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (7, N'32c08a02-3668-4238-3455-08db625f989b', CAST(N'2023-06-06T11:34:04.0089813' AS DateTime2), 3, N'TPHCM', N'Hà Hải Long', N'0328262315', N'Credit Card', NULL, CAST(20490000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (8, N'32c08a02-3668-4238-3455-08db625f989b', CAST(N'2023-06-14T20:46:51.8057078' AS DateTime2), 4, N'TPHCM', N'Hà Hải Long', N'0328262315', N'Credit Card', NULL, CAST(37980000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (9, N'32c08a02-3668-4238-3455-08db625f989b', CAST(N'2023-06-16T19:10:44.9892329' AS DateTime2), 4, N'TPHCM', N'Hà Hải Long', N'0328262315', N'Credit Card', NULL, CAST(26030000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Status], [ShipAddress], [ShipName], [ShipPhoneNumber], [PaymentMethod], [CouponId], [Total]) VALUES (10, N'32c08a02-3668-4238-3455-08db625f989b', CAST(N'2023-06-21T20:39:50.3014496' AS DateTime2), 4, N'TPHCM', N'Hà Hải Long', N'0328262315', N'Credit Card', NULL, CAST(14410000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (8, N'Samsung Galaxy S23 Ultra 256GB', 2, CAST(26030000.00 AS Decimal(18, 2)), 95, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.8 inch, Dynamic AMOLED 2X, QHD+, 1440 x 3088 Pixels</td></tr><tr><td>Camera sau</td><td>200.0 MP + 12.0 MP + 10.0 MP + 10.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Snapdragon 8 Gen 2</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>1 - 2 Nano SIM hoặc 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Việt Nam / Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>02/2023</td></tr></tbody></table></figure>', N'<h3><strong>Tương lai công nghệ hiển thị</strong></h3><p>Mặt trước của Samsung S23 Ultra là màn hình cong cao cấp, kích thước 6.8 inch trên tấm nền <a href="https://fptshop.com.vn/tin-tuc/danh-gia/man-hinh-dynamic-amoled-2x-tren-smartphone-la-gi-125620">Dynamic AMOLED 2X</a> sắc nét và sống động, đưa người dùng vào không gian giải trí chuẩn tương lai của công nghệ hiển thị. Phần màn hình còn được giảm độ cong, để tăng diện tích bề mặt và độ phẳng, cho trải nghiệm tốt nhất trên từng chi tiết. Cộng hưởng với tần số quét 120Hz cho mọi thao tác chuyển cảnh diễn ra mượt mà. Đồng thời, tần số quét này cũng tối ưu cho từng ứng dụng, tiết kiệm pin hiệu quả. &nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Man-hinh-Samsung-Galaxy-S23-Ultra-2.jpg" alt="Màn hình Galaxy S23 Ultra"></figure><h3><strong>Siêu bút S-Pen – ghi chú, phác thảo và hơn thế nữa</strong></h3><p>Di sản dòng Galaxy Note – bút S-Pen kết hợp với sự cải tiến mới cho thế hệ S23 Ultra viết tiếp những kỳ tích, ghi lại những dấu ấn mạnh mẽ trong lòng người dùng. Bạn&nbsp;có thể đa nhiệm, tối ưu hiệu suất công việc cùng bút S-Pen với khả năng ghi chú, phác thảo nhanh chóng, tiện lợi mà không cần phải phụ thuộc vào sổ tay. Chỉ cần Samsung S23 Ultra trong tay, mọi thứ đã sẵn sàng để lưu lại những ý tưởng tuyệt vời, khởi tạo nền tảng sáng tạo vững chắc. Đồng thời, sử dụng bút S-Pen còn thú vị hơn với tính năng điều khiển từ xa như chụp hình, mà không cần chạm màn hình.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/but-Samsung-Galaxy-S23-Ultra.jpg" alt="Điện thoại Samsung S23 Ultra"></figure><h3><strong>Trọn bộ 4 camera đột phá, dẫn đầu xu hướng nhiếp ảnh</strong></h3><p>Hệ thống 4 camera đột phá trên Samsung Galaxy S23 Ultra chính là trọn bộ nhiếp ảnh di động tuyệt đỉnh trên thị trường. Sự góp mặt của những cảm biến vượt trội nhất đã mang đến siêu phẩm chưa từng có trên smartphone Galaxy, cho chất lượng ảnh sắc nét trong mọi điều kiện.</p><p>Bộ 4 camera này bao gồm: camera góc rộng 200MP, camera góc siêu rộng 12MP, camera tele 10MP (zoom quang 3x) và camera tele 10MP (zoom quang 10x). Hội tụ tất cả ấn tượng trên một siêu phẩm đẳng cấp, Galaxy S23 Ultra sẽ giúp bạn trở thành “nhiếp ảnh gia” ở mọi khung hình, sẵn sàng&nbsp;kiến tạo những tấm ảnh/video chuyên nghiệp ở bất kỳ đâu.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Camera-Samsung-Galaxy-S23-Ultra-2.jpg" alt="Camera Samsung S23 Ultra 5G"></figure><h3><strong>Smartphone Galaxy đầu tiên có cảm biến siêu phân giải 200MP</strong></h3><p>Samsung S23 Ultra đột phá với cảm biến 200MP – thông số camera cao nhất trên smartphone Samsung. Không chỉ vượt trội với <a href="https://fptshop.com.vn/dien-thoai/samsung">điện thoại Samsung</a>, mà đây còn là một trong điện thoại có camera tốt nhất trên thị trường. Camera giúp bạn ghi lại mọi khung hình một cách sắc nét, rực rỡ, độ chính xác vượt trội, bạn có thể thoải mái cắt bất kỳ chi tiết nào, mà chất lượng vẫn đảm bảo. Theo đó, để có được điều này, thiết bị sử dụng công nghệ gộp điểm ảnh, hỗ trợ nhiều cấp độ xử lý chuyên nghiệp cho từng điểm ảnh, đạt được chất lượng hoàn hảo, sẵn sàng thách thức mọi smartphone hiện nay.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/camera-Samsung-Galaxy-S23-Ultra-3.jpg" alt="Camera Samsung Galaxy S23 Ultra"></figure>', N'/user-content/8020efd5-0f5c-4672-b3b3-67900d2c3486.webp', N'/user-content/14322942-53aa-40b4-ad5c-aa051d5e1292.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (9, N'Samsung Galaxy S22 Ultra (8GB - 128GB)', 2, CAST(20490000.00 AS Decimal(18, 2)), 99, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.8 inch, Dynamic AMOLED 2X, QHD+, 1440 x 3088 Pixels</td></tr><tr><td>Camera sau</td><td>108.0 MP + 12.0 MP + 10.0 MP + 10.0 MP</td></tr><tr><td>Camera Selfie</td><td>40.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 8 Gen 1</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM hoặc 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Thời gian ra mắt</td><td>03/2022</td></tr></tbody></table></figure>', N'<h3><strong>Ống kính 108MP mang lại khả năng chụp ảnh không giới hạn</strong></h3><p>Ống kính chính trên Samsung S22 Ultra với độ phân giải lên đến 108MP, với những khả năng chụp ảnh đêm, chụp chân dung, chụp góc siêu rộng, và zoom quang học 100x đều hiện diện. Chi tiết ảnh và màu sắc tốt nằm trong khoảng zoom 10x, có thể sử dụng zoom 30x trong điều kiện ánh sáng tốt, còn zoom 100x mang tính chất lưu lại thông tin. Camera chính và camera tele hỗ trợ công nghệ chống rung quang học OIS.</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Samsung/samsung_s/S22/samsung-galaxy-s22-ultra-9.jpg" alt="Đánh giá Samsung Galaxy S22 Ultra 5G"></figure><p>Cụm camera sau cho phép người dùng sáng tạo ảnh chụp của mình không giới hạn. Hai ống kính còn lại là ống kính 12MP hỗ trợ chụp góc siêu rộng và ống kính tele 10MP. Người dùng có thể sử dụng S22 chụp ảnh macro với ống kính siêu rộng. Màu sắc và chi tiết ảnh cao hơn các model tầm trung, cho độ phân giải và cảm biến tốt hơn.</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Samsung/samsung_s/S22/samsung-galaxy-s22-ultra-3.jpg" alt="Camera 108MP trên S22 Ultra mang lại khả năng chụp ảnh không giới hạn"></figure><p>Thiết bị được trang bị khả năng chụp ảnh chân dung ban đêm, trong điều kiện thiếu sáng ấn tượng với bộ xử lý hình ảnh AI kết hợp với camera góc rộng 108MP mang lại bức ảnh ban đêm sáng rõ. Với không gian không quá tối, chỉ với thao tác sử dụng chế độ tự động, AI sẽ tự xử lý cho ra hình ảnh sáng, đầy đủ chi tiết và không bị nhiễu. Trường hợp thiếu sáng, chế độ chụp đêm là sự lựa chọn hoàn hảo.</p><p>Tốc độ khung hình phát hiện ánh sáng và tự động chuyển sang tốc độ khung hình tối ưu. Samsung Galaxy S22 Ultra sử dụng bộ xử lý 4nm với công nghệ Super Night Solution giảm nhiễu hiệu quả.</p><p>Đồng thời, người dùng có thể điều chỉnh được mức độ xóa phông sau khi chụp. Khi thực hiện quay video cần hiệu chỉnh phần hậu cảnh, người dùng có thể làm nổi bật chủ thể bằng cách sử dụng bộ lọc đổi phông thành đen trắng. Phần chuyển nét mượt mà và không có cảm giác bị lẹm.</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Samsung/samsung_s/S22/samsung-galaxy-s22-ultra-7.jpg" alt="Đánh giá camera Samsung Galaxy S22 Ultra 5G"></figure><p>Không chỉ chụp ảnh, thiết bị còn mang lại khả năng quay phim chất lượng với khả năng chống rung và công nghệ AI mang lại những thước phim chuyển động nhanh mà vẫn đảm bảo rõ nét, zoom tốt hơn. Điện thoại còng được trang bị công nghệ Super HDR tốt với tất cả các ống kính mang lại những thước phim giàu chi tiết. Ấn tượng nhất trên camera của Samsung S22&nbsp;Ultra&nbsp;đó chính là khả năng thu phóng 100 lần đầy ấn tượng.</p><p>Phía trước máy là camera selfie đơn với độ phân giải lên đến 40 MP, khẩu độ f/2.2 với khả năng chụp góc rộng cho ra ảnh chụp selfie bắt mắt. Tính năng làm đẹp AI, gọi video call kép và HDR tự động sẽ giúp tăng cường trải nghiệm chụp ảnh trên chiếc flagship này.</p><p>Điểm nổi bật nữa của cụm camera nằm ở thời gian phơi sáng đến 6 giây nhưng bị rung nhòe kể cả không sử dụng chân đế!</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/800x,webp,q100/media/wysiwyg/Phone/Samsung/samsung_s/S22/samsung-galaxy-s22-ultra-13.jpg" alt="Đánh giá camera Samsung Galaxy S22 Ultra 5G - Ảnh 2"></figure><h3><strong>Màn hình 6.8 inch 120 Hz tương thích bút S-Pen hiện đại</strong></h3><p>Với Galaxy S22 Ultra thì Samsung đã cho ra đời loại màn hình phủ trọn mặt trước đầy ấn tượng. Chiếc màn hình điện thoại có kích thước 6.8 inch, độ phân giải Quad HD+ (3200 x 1440 pixels) và sử dụng tấm nền Dynamic AMOLED 2X với Vision Booster cho ra độ bão hòa màu sắc đầy chân thực.</p><p>Màn hình của Samsung S22 Ultra còn được tích hợp những tính năng cao cấp đặc trưng của Samsung như Always on display, tốc độ làm tươi đến 120 Hz cho trải nghiệm gaming vượt trội và chứng nhận màu HDR10+. Bề mặt màn hình được bảo vệ bởi kính Gorilla Glass Victus chống xước hiệu quả.</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/800x,webp,q100/media/wysiwyg/Phone/Samsung/samsung_s/S22/samsung-galaxy-s22-ultra-5.jpg" alt="Samsung S22 Ultra có màn hình 6.8 inch 120 Hz tương thích bút S-Pen hiện đại"></figure>', N'/user-content/5c319d62-d7d9-457f-8e70-1f32013d69d2.webp', N'/user-content/ae5de29b-4465-4345-b501-da5669791223.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (10, N'Samsung Galaxy Z Flip4 128GB', 2, CAST(18270000.00 AS Decimal(18, 2)), 99, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>Chính: 6.7 inch, Phụ: 1.9 inch, Dynamic AMOLED, FHD+, 1080 x 2636 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>10.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Snapdragon 8+ Gen 1</td></tr><tr><td>Dung lượng pin</td><td>3700 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Thời gian ra mắt</td><td>04/2023</td></tr></tbody></table></figure>', N'<h3><strong>Linh hoạt khi gập mở, cơ động để mang theo</strong></h3><p>Sở hữu màn hình lớn 6.7 inch nhưng <a href="https://fptshop.com.vn/dien-thoai/samsung-galaxy-z-flip4">Samsung&nbsp;Z Flip 4</a> vẫn đảm bảo yếu tố cơ động khi di chuyển cũng như độ gọn gàng lúc cầm nắm. Nhờ cơ chế gập độc đáo, chủ nhân chiếc điện thoại dễ dàng thu gọn một nửa chiều dài thân máy để bỏ túi và mang theo. Cấu trúc đặc biệt này giúp sản phẩm đem lại trải nghiệm đặc biệt không thể tìm thấy ở dòng điện thoại nào khác.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-samsung-galaxy-z-flip4-3.jpg" alt="Điện thoại Samsung Galaxy Z Flip 4"></figure><h3><strong>Thoải mái gập mở tới 200.000 lần</strong></h3><p>Màn hình gập mở 6.7 inch của Galaxy Z Flip4 phải trải qua quy trình thẩm định khắc nghiệt nhất nhằm chắc chắn sẽ duy trì độ bền không đổi trong 200.000 lần gấp máy. Ngoài ra, nhờ những nguyên liệu được lựa chọn cầu kỳ như kính cường lực Gorilla Glass Victus+, nhôm Armor Aluminium, chiếc <a href="https://fptshop.com.vn/dien-thoai">điện thoại</a> sẽ khiến bạn bất ngờ về khả năng chống xước và chịu lực. Đem đến cấu trúc vững vàng ẩn trong một diện mạo thời trang.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-samsung-galaxy-z-flip4-6.jpg" alt="Galaxy Z Flip 4 - Màn hình"></figure><h3><strong>Mạnh mẽ, bền bỉ, chuẩn chống nước IPX8</strong></h3><p>Nhẹ nhàng và tinh tế, nhưng Galaxy Z Flip4 vẫn bền bỉ đáng ngạc nhiên. Một trong những thành tựu lớn nhất từ <a href="https://fptshop.com.vn/dien-thoai/samsung">Samsung</a> là việc hãng thành công đưa chức năng IPX8 (cao nhất của chuẩn chống nước) lên chiếc điện thoại này. Tiêu chuẩn này cho phép Samsung Galaxy Z Flip4 sống tốt ở mực nước sâu 1,5 mét trong 30 phút mà không gặp vấn đề gì.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-samsung-galaxy-z-flip4-5.jpg" alt="Samsung Galaxy Z Flip 4 chống nước"></figure><h3><strong>Khi mọi khung hình đều trở nên tươi sáng</strong></h3><p>Galaxy Z Flip4 được trang bị hệ thống camera sau xuất sắc với khẩu độ lớn, Samsung gọi công nghệ này là Camera Mắt thần bóng đêm, có khả năng tối ưu các chi tiết trong bóng tối nhờ điểm ảnh lớn trên camera góc rộng. Đặc biệt ở chỗ, hệ thống không chỉ hoạt động với ảnh chụp tĩnh mà còn có tác dụng khi bạn quay video. Khi kết hợp cùng loạt công nghệ đình đám như OIS và VDIS, bạn sẽ thỏa sức sáng tạo những thước phim tuyệt tác không rung nhòe trong điều kiện kiện thiếu sáng.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-samsung-galaxy-z-flip4-2.jpg" alt="Camera Samsung Z Flip4"></figure>', N'/user-content/bfa54398-dfd2-4ccd-9aae-2ccf6ec671d4.webp', N'/user-content/146b6099-4774-4bb3-af65-9640f756a1bd.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (11, N'Samsung Galaxy Z Fold4', 2, CAST(34760000.00 AS Decimal(18, 2)), 100, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>Phụ: 6.2 inch, Chính: 7.6 inch, Dynamic AMOLED 2X, WXGA+, Màn hình chính: 2176 x 1812 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 12.0 MP + 10.0 MP</td></tr><tr><td>Camera Selfie</td><td>10.0 MP + 4.0 MP</td></tr><tr><td>RAM</td><td>12 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Snapdragon 8+ Gen 1</td></tr><tr><td>GPU</td><td>Adreno 670</td></tr><tr><td>Dung lượng pin</td><td>4400 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Việt Nam</td></tr><tr><td>Thời gian ra mắt</td><td>04/2023</td></tr></tbody></table></figure>', N'<h3><strong>Mỏng hơn, sang trọng hơn và trau chuốt hơn</strong></h3><p>So với thế hệ cũ, Samsung Galaxy Z Fold 4 đánh dấu bước tiến mới về độ hoàn thiện. Dù có kích cỡ tổng thể lớn hơn nhiều khi mở ra, nhưng nhờ những tinh chỉnh hợp lý về kết cấu và sử dụng vật liệu siêu nhẹ, sản phẩm rút gọn trọng lượng về mức xấp xỉ smartphone thông thường.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-san-pham-samsung-galaxy-z-fold4-2.jpg" alt="Samsung Z Fold 4 hai màn hình"></figure><p>Mở Galaxy Z Fold 4 ra, bạn sẽ cảm nhận được sự sang trọng trong từng chi tiết trên thân máy. Sản phẩm có các lựa chọn màu sắc cực kỳ sang trọng gồm Xanh titan, Đen Phantom và Kem Metallic.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/SM-F936_ZFold4_BackL30_Burgundy.jpg" alt="Thiết kế Galaxy Z Fold 4"></figure><h3><strong>Đa nhiệm dễ dàng, làm việc chuyên nghiệp</strong></h3><p>Trên thanh tác vụ bên dưới, Galaxy Z Fold4 hỗ trợ bật/tắt nhanh các ứng dụng để giúp người dùng tận dụng trọn vẹn không gian hiển thị lớn của chiếc điện thoại. Tính năng App Pair cho phép khởi động nhiều nhất ba ứng dụng chỉ trong một cú chạm.</p><p>Toàn bộ giao diện OneUI đều được được xây dựng để phát huy tất cả thế mạnh của kiểu dáng độc đáo và hiệu năng ấn tượng từ bộ vi xử lý hàng đầu thế giới. Với Galaxy Z Fold 4, bạn như đang bỏ túi một chiếc PC gọn gàng để kiểm tra tin nhắn, check mail, chơi game và làm mọi điều mình muốn.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/galaxy-z-fold4_highlights_multi.jpg" alt="Samsung Fold 4 đa nhiệm dễ dàng"></figure><h3><strong>S-Pen linh hoạt trên từng nét vẽ</strong></h3><p>Toàn bộ cấu trúc màn hình 7.6 inch đều được thiết kế để tương thích với bút S-Pen. Bạn sẽ thỏa thích ghi chú mọi ý tưởng, viết vẽ sáng tạo và lưu giữ lại những ý tưởng thú vị vụt qua bằng chiếc bút cảm ứng quen thuộc này. Khả năng nhận diện lực nhấn linh hoạt giúp Galaxy Z Fold4 diễn đạt tốt nét bút đậm/nhạt rất chân thực, đem lại cảm giác quen thuộc như đang thực sự phác họa trên giấy.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-san-pham-samsung-galaxy-z-fold4-5.jpg" alt="S pen Samsung Galaxy Z Fold 4"></figure><h3><strong>Màn hình Infinity Flex trọn vẹn và ấn tượng</strong></h3><p>Việc Samsung rút gọn viền bao quanh và đưa camera selfie xuống dưới tấm nền giúp không gian trải nghiệm của Galaxy Z Fold4 trở nên trọn vẹn, cực đại và không khiếm khuyết. Hãy thoải mái tận hưởng những thước phim, tựa game bạn yêu thích trên màn hình 7.6 inch Infinity Flex có một không hai này.</p><p>Ngoài ra, mọi thao tác cuộn, vuốt và những khuôn hình chuyển động trên Galaxy Z Fold4 đều được diễn đạt mượt mà khi sản phẩm đạt mức tần số quét là 120Hz, tối ưu hóa trải nghiệm nhìn ngắm cho bạn.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-san-pham-samsung-galaxy-z-fold4-6.jpg" alt="Màn hình Samsung Z Fold 4"></figure>', N'/user-content/eced6d3b-97e1-4f8b-9605-976efa6bc693.webp', N'/user-content/8cbbcbfa-7f76-4d66-8102-4414cdd0d23d.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (22, N'OPPO Reno8', 3, CAST(7490000.00 AS Decimal(18, 2)), 97, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.7 inch, AMOLED, FHD+, 1080 x 2412 Pixels</td></tr><tr><td>Camera sau</td><td>108.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 695 5G</td></tr><tr><td>GPU</td><td>Adreno 619</td></tr><tr><td>Dung lượng pin</td><td>4800 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0 (ColorOS 13)</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>02/2023</td></tr></tbody></table></figure><p><br>&nbsp;</p>', N'<h3><strong>Chiếc điện thoại với hệ thống camera hoàn hảo</strong></h3><p>OPPO Reno8 sử dụng camera selfie 32MP với cảm biến IMX709 siêu nhạy. Trong đó, module camera sau chứa camera chính 64MP hỗ trợ chụp chân dung AI, kết hợp với camera cận cảnh và ống kính macro. Tất cả tạo nên một công thức hoàn hảo đáp ứng mọi nhu cầu quay chụp, từ selfie trên camera trước cho tới chụp chân dung bằng camera sau.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-san-pham-oppo-reno8-2.jpg" alt="Chiếc điện thoại với hệ thống camera hoàn hảo"></figure><h3><strong>Selfie sống động, tự nhiên trong nhiều bối cảnh</strong></h3><p>OPPO đã nghiên cứu để tìm cách phát huy tối đa năng lực của cảm biến Sony IMX709 nhằm gia tăng độ nhạy sáng và tối ưu chất lượng ảnh chụp trong nhiều bối cảnh môi trường. Mỗi bức ảnh selfie của bạn đều được gia tăng 60% ánh sáng, rất trung thực và cực kỳ rõ ràng.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-san-pham-oppo-reno8-3.jpg" alt="Selfie sống động, tự nhiên trong nhiều bối cảnh"></figure><h3><strong>Để mỗi bức ảnh chân dung đều sống động</strong></h3><p>Trên mặt lưng, camera chính 64MP được tối ưu thông qua trí tuệ nhân tạo AI, đặc biệt chú trọng vào tác vụ chụp chân dung nhằm tạo nên những khuôn hình chất lượng tối đa chỉ sau thao tác nhấn chụp tối giản.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-san-pham-oppo-reno8-5.jpg" alt="Để mỗi bức ảnh chân dung đều sống động"></figure><h3><strong>Ngỡ ngàng trước sự sắc nét của hình ảnh</strong></h3><p>Với OPPO Reno8, mỗi thước phim, mỗi khuôn hình đều được lưu giữ theo cách trọn vẹn nhất qua sự hỗ trợ của camera cao cấp. <a href="https://fptshop.com.vn/dien-thoai/oppo">OPPO</a> đã thành công sáng tạo chế độ Ảnh Siêu Nét, hoạt động theo cơ chế ghép nhiều hình ảnh khác nhau nhằm tạo nên bức ảnh thành phẩm cực kỳ sắc sảo, tất cả đều diễn ra chỉ trong một khoảnh khắc.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-san-pham-oppo-reno8-6.jpg" alt="Ngỡ ngàng trước sự sắc nét của hình ảnh"></figure><h3><strong>Chụp sắc nét cả trong bối cảnh thiếu sáng</strong></h3><p>Khả năng bắt nét tốc độ cao của OPPO Reno8 khiến mọi khuôn hình chuyển động đều được tái hiện sắc nét ngay cả trong bối cảnh thiếu sáng vào ban đêm. Bạn sẽ dễ dàng lưu lại khoảnh khắc rực rỡ của một dancer trên sàn nhảy hay những pha xử lý tốc độ của cầu thủ trên sân bóng đá.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-san-pham-oppo-reno8-8.jpg" alt="Chụp sắc nét cả trong bối cảnh thiếu sáng"></figure>', N'/user-content/490cd793-8723-4991-b827-df458139c096.webp', N'/user-content/88b9e2a9-d6ac-4aaa-8f94-2379e8610d7c.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (23, N'Vivo V25 Pro', 4, CAST(10990000.00 AS Decimal(18, 2)), 99, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>Chính: 6.56 inch, Chính: AMOLED, FHD+, 1080 x 2376 Pixel</td></tr><tr><td>Camera sau</td><td>64.0 MP + 8.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>MediaTek Dimensity 1300 5G</td></tr><tr><td>Dung lượng pin</td><td>4830 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>11/2022</td></tr></tbody></table></figure>', N'<h3><strong>Cải tiến về khả năng chụp chân dung</strong></h3><p>Đi đầu xu hướng về nhiếp ảnh, vivo V25 Pro 5G sẽ cho phép bạn tự khai phá những thứ mới mẻ bên trong mình với 2 chế độ chân dung được cải tiến mạnh mẽ. Chế độ chân dung siêu chụp đêm với thuật toán AI sẽ làm nổi bật làn da, không để lộ khuyết điểm dù chụp ở điều kiện ánh sáng yếu. Trong khi chế độ chân dung Bokeh Flare mang đến nhiều hiệu ứng hơn để bạn lựa chọn, cho phép bạn dễ dàng sáng tạo ra kiệt tác riêng của mình.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/vivo-v25-pro-5g-1.jpg" alt="vivo V25 Pro 5G 1"></figure><h3><strong>Hệ thống camera đa cảm biến, chụp đêm chuyên sâu</strong></h3><p>Mọi khoảnh khắc sẽ được ghi lại một cách rõ ràng nhờ việc trang bị 4 camera với cụm ba camera sau và camera selfie đa cảm biến kết hợp với tính năng tự động lấy nét trên vivo V25 Pro 5G. Dù là camera trước hay sau, bức ảnh của bạn đều rõ nét đến từng chi tiết nhỏ. Bên cạnh đó, các màu sắc nóng và lạnh sẽ được cân bằng một cách hài hòa nhất nhờ thuật toán siêu chụp đêm, giúp cho các bức ảnh đêm thêm phần sống động và chi tiết.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/vivo-v25-pro-5g-2.jpg" alt="vivo V25 Pro 5G 2"></figure><h3><strong>Sáng tạo không giới hạn&nbsp;</strong></h3><p>Với những Vlog Movie, Video tua nhanh thời gian và Chân dung đa phong cách làm mờ chuyển động, vivo V25 Pro sẽ là nơi để bạn sáng tạo ra những thước phim độc đáo và thú vị cho riêng mình. Dù ở môi trường ánh sáng yếu, khả năng sáng tạo của máy vẫn được phát huy tối đa và đang chờ bạn khám phá.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/vivo-v25-pro-5g-3.jpg" alt="vivo V25 Pro 5G 3"></figure><h3><strong>Video đêm rõ nét như ban ngày</strong></h3><p>Dù là cảnh đêm thành phố hay những bữa tiệc trại trong rừng, vivo V25 Pro sẽ ghi lại mọi thứ và cho ra những video sống động, hoành tráng nhờ tính năng video siêu đêm. Hơn nữa, dù cho bạn có di chuyển liên tục trong khi quay nhưng với khả năng chống rung HIS được tích hợp, thước phim đó của bạn sẽ luôn mượt mà và hoàn hảo.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/vivo-v25-pro-5g-4.jpg" alt="vivo V25 Pro 5G 4"></figure>', N'/user-content/23330849-9479-4542-bafd-071ea95a0958.webp', N'/user-content/eebc7543-8857-40c4-b9b7-87bdd657a3c2.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (24, N'Xiaomi Redmi Note 12', 5, CAST(4590000.00 AS Decimal(18, 2)), 99, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.67 inch, AMOLED, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 8.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>13.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 685</td></tr><tr><td>GPU</td><td>Adreno 610</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>2023</td></tr></tbody></table></figure>', N'<h3><strong>Xem phim mãn nhãn, sống động</strong></h3><p>Nhờ việc trang bị <a href="https://fptshop.com.vn/tin-tuc/danh-gia/man-hinh-amoled-la-gi-34866">màn hình AMOLED</a> với kích thước lên đến 6.67 inch, những nội dung yêu thích của bạn sẽ luôn sống động và màu đen sâu hơn kết hợp cùng khả năng tái tạo màu rực rỡ. Không những vậy, thiết bị sẽ có gam màu rộng chuẩn DCI-P3, có thể sử dụng ngoài trời nhờ độ sáng cao đến 1200nits và đạt chuẩn chứng chỉ Netflix HD.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/redmi-note-12-1.png" alt="Màn hình Redmi Note 12 "></figure><h3><strong>Trải nghiệm màn hình mượt mà, liền mạch</strong></h3><p>Với việc hỗ trợ 3 tốc độ làm mới 60Hz/90Hz/120Hz cho người dùng lựa chọn,&nbsp;Redmi Note 12 mang đến trải nghiệm hình ảnh mượt mà hơn và tiêu thụ năng lượng thấp. Tận hưởng trải nghiệm mượt mà không đâu sánh bằng với tốc độ làm mới cao lên đến 120Hz, cho dù bạn đang chơi game hay lướt mạng xã hội, điều mà chưa sản phẩm nào trong tầm giá có thể đạt được.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/redmi-note-12-2.png" alt="Redmi Note 12 với tầng số quét 120Hz"></figure><h3><strong>Hiệu suất được nâng lên 1 bậc</strong></h3><p>Được xây dựng trên quy trình 6nm hàng đầu, thiết bị hứa hẹn cung cấp một hiệu năng mượt mà và được tăng cường với Snapdragon 685 6nm mạnh mẽ của Qualcomm. Dù không có nâng cấp về lõi CPU và GPU so với người tiền nhiệm, nhưng xung nhịp cao hơn được trang bị sẽ đem đến tốc độ nhanh hơn. Các tác vụ đa nhiệm của bạn cũng sẽ được xử lý trơn tru nhờ sự kết hợp giữa RAM LPDDR4X và ROM UFS 2.2.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/redmi-note-12-3.png" alt="Redmi Note 12 với hiệu suất mạnh mẽ"></figure><h3><strong>Tràn đầy năng lượng, tận hưởng mọi lúc mọi nơi</strong></h3><p><a href="https://fptshop.com.vn/dien-thoai/xiaomi">Xiaomi</a> đã trang bị viên pin lớn cho thiết bị với dung lượng 5000mAh, có khả năng đạt thời lượng lên đến hơn 1 ngày sử dụng mọi tác vụ, phục vụ tốt cho mọi nhu cầu. Với một lần sạc, bạn sẽ có ngay 31 giờ đàm thoại, 9 giờ chơi game hoặc 21 giờ xem video giải trí. Hơn nữa, quá trình sạc cũng sẽ rút ngắn đáng kể nhờ việc trang bị sạc nhanh 33W được hỗ trợ bởi công nghệ Mi-FC và MMT.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/redmi-note-12-4.png" alt="Redmi Note 12 trang bị dung lượng pin lớn"></figure>', N'/user-content/2346dc93-9285-414f-bd0e-9d5e1fdb1cc6.webp', N'/user-content/52c680b2-c95e-438a-9c60-9d2b1972306c.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (25, N'Nokia G22 4GB 128GB', 6, CAST(3420000.00 AS Decimal(18, 2)), 99, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.5 inch, HD+, 720 x 1600 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>8.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>CPU</td><td>Unisoc T606</td></tr><tr><td>GPU</td><td>Mali-G57 MP1</td></tr><tr><td>Dung lượng pin</td><td>5050 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>25/02/2023</td></tr></tbody></table></figure>', N'<h3><strong>Thiết kế bền bỉ, dễ sửa chữa với khả năng QuickFix</strong></h3><p>Nokia G22 sở hữu mặt lưng được hoàn thiện từ 100% nhựa tái chế. Vật liệu này không chỉ giúp bảo vệ môi trường mà còn mang đến khả năng sử dụng bền bỉ. Điều đó cũng đồng nghĩa với việc người dùng có thể yên tâm sử dụng thiết bị lâu dài mà không cần lo bởi ảnh hưởng từ môi trường bên ngoài.</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Nokia/Nokia_G/Nokia-G22-5.jpg" alt="Điện thoại Nokia G22 - Thiết kế dễ dàng sửa chữa, âm thanh OZO cải tiến"></figure><p>Ngoài ra, khả năng sửa chữa QuickFix cũng là một trong những ưu điểm của Nokia G22.Với khả năng này, bạn hoàn toàn có thể dễ dàng tự thay thế các bộ phận bị hỏng. Như vậy, không cần phải đến trung tâm bảo hành hay cửa hàng, người dùng vẫn có thể sửa chữa được màn hình và pin. Có thể thấy thay vì phải mất nhiều thời gian và chi phí, bạn chỉ cần tham khảo iFixit để biết các bộ phận điện thoại, công cụ cần thiết và hướng dẫn thực hiện.</p><h3><strong>Nâng cao trải nghiệm với camera AI 50MP và công nghệ âm thanh OZO</strong></h3><p>Nokia G22 trang bị camera sau độ phân giải lên đến 50MP, camera cảm biến chiều sâu 2MP, camera macro 2MP và camera selfie 8MP. Với bộ camera này, người dùng sẽ có thể chụp ảnh sắc nét và chân thực hơn bao giờ hết.</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Nokia/Nokia_G/Nokia-G22-8.jpg" alt="Điện thoại Nokia G22 - Thiết kế dễ dàng sửa chữa, âm thanh OZO cải tiến"></figure><p>Ngoài ra, thiết bị còn tích hợp công nghệ tập trung âm thanh OZO Audio tiên tiến. Với OZO, chất lượng âm thanh được nâng cao, tiếng ồn xung quanh cũng được giảm thiểu đáng kể. Như vậy, người dùng sẽ có những trải nghiệm thú vị khi giải trí cùng những bộ phim hấp dẫn hay hoà mình vào giai điệu âm nhạc.</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Nokia/Nokia_G/Nokia-G22-6.jpg" alt="Điện thoại Nokia G22 - Thiết kế dễ dàng sửa chữa, âm thanh OZO cải tiến"></figure><h3><strong>Nokia G22 sở hữu vẻ ngoài thanh lịch, cuốn hút người dùng</strong></h3><p>Điện thoại Nokia G22 được kế thừa và phát huy những giá trị cốt lõi của các phiên bản tiền nhiệm, mang tới cho người dùng sự đơn giản nhưng không kém phần hiện đại, thanh lịch. Các thiết kế bo tròn mềm mại của cạnh, viền thân máy cho phép người dùng có thể cầm nắm sản phẩm một cách thoải mái, nhẹ nhàng hơn.&nbsp;</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Nokia/Nokia_G/Nokia-G22-1_1.jpg" alt="Điện thoại Nokia G22 - Thiết kế dễ dàng sửa chữa, âm thanh OZO cải tiến"></figure><p>So với phiên bản G21 với những đường vân ngang ở mặt lưng đã được ra mắt trước đó, Nokia G22 gây được ấn tượng với người dùng nhờ sở hữu thiết kế mặt lưng dạng nhám nhẹ. Ưu điểm này giúp G22 hạn chế bám dính vân tay của người dùng, giữ máy luôn ở trong tình trạng tốt nhất. Hệ thống âm thanh, micro và phím nút tăng giảm âm lượng được bố trí đều quanh viền máy mang tới sự hài hòa tuyệt đối trong thiết kế nổi bật của Nokia G22.</p><h3><strong>Nokia G22 có màn hình hiển thị sắc nét và chân thực tới từng chi tiết</strong></h3><p>G22 được trang bị màn hình AMOLED kích thước 6.52 inch cùng độ phân giải lên tới HD+. Tần số quét màn hình của máy lên tới 90Hz cùng độ sáng tối đa có thể đạt 500 nits. Với những thông số mạnh mẽ về khả năng hiển thị, Nokia G22 sẽ đưa người dùng đến với thế giới hình ảnh đầy màu sắc với độ tương phản cực cao.&nbsp;</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Nokia/Nokia_G/Nokia-G22-3.jpg" alt="có màn hình hiển thị sắc nét và chân thực tới từng chi tiết"></figure>', N'/user-content/0214867a-892b-43cf-bab5-947e21c7a970.webp', N'/user-content/312e6298-c250-42ab-886c-3457eb5fe64f.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (27, N'iPhone 14 Pro Max 128GB ', 1, CAST(26690000.00 AS Decimal(18, 2)), 100, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.8 inch, Dynamic AMOLED 2X, QHD+, 1440 x 3088 Pixels</td></tr><tr><td>Camera sau</td><td>200.0 MP + 12.0 MP + 10.0 MP + 10.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Snapdragon 8 Gen 2</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>1 - 2 Nano SIM hoặc 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Việt Nam / Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>02/2023</td></tr></tbody></table></figure>', N'<h3><strong>Màn hình Dynamic Island lần đầu xuất hiện</strong></h3><p>Lần đầu tiên sau nhiều năm, Apple đã nói lời “tạm biệt” với phần màn hình “tai thỏ” mặt trước. Bạn sẽ có màn hình không gian hiển thị nhiều hơn khi iPhone 14 Pro Max được thu hẹp phần cảm biến Face ID và camera trước gọn nhất có thể, thành hình dạng như một viên thuốc (hay chữ i).</p><p>Apple gọi phần này là Dynamic Island vì nó thực sự thú vị. Nhờ&nbsp;màn hình OLED, Apple đã tùy biến khu vực “viên thuốc” thành các biểu tượng gọi tắt, các thông báo của ứng dụng với hiệu ứng chuyển cảnh mượt mà và liền mạch. Bạn chắc chắn sẽ cảm nhận được sự thú vị của Dynamic Island khi sử dụng iPhone 14 Pro Max trực tiếp.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/meizu/Mo-ta-san-pham-iphone-14-pro-max-9.jpg" alt="Màn hình điện thoại iPhone 14 Pro Max"></figure><p>iPhone 14 Pro Max sở hữu màn hình 6.7 inch LTPO hiện đại, có khả năng điều tiết tần số quét tự động từ 1Hz đến 120Hz linh hoạt nhằm tăng độ mượt mà và vẫn tiết kiệm pin. Điểm nhấn trên màn hình là việc chuyển từ phong cách tai thỏ sang dạng “viên thuốc” có phần cắt nhỏ nhắn hơn nhiều.</p><p>Đặc biệt, Apple còn tận dụng không gian này để tạo hiệu ứng biến hóa linh hoạt tùy theo tác vụ bạn trải nghiệm. Với tên gọi Dynamic Island, cấu trúc “viên thuốc” trên màn hình iPhone 14 Pro Max giờ đây trở thành điểm nhấn đáng trải nghiệm nhất.</p><h3><strong>Tính năng Always On đã sẵn sàng</strong></h3><p>Tận dụng đặc tính của công nghệ OLED, iPhone 14 Pro Max đem đến chế độ Always On Display, cho phép người dùng xem những thông tin cần thiết như thông báo, thời gian, ngày tháng, thời tiết hay nhiệt độ sau khi màn hình chuyển qua trạng thái nghỉ.</p><p>Giờ đây, người dùng không cần phải chạm vào thiết bị khi màn hình iPhone 14 Pro Max đang tắt mà vẫn có thể nắm được những thông tin cần thiết. Đáng nói hơn, Always On Display sẽ tự tắt khi úp màn hình xuống hoặc đặt máy trong túi quần, túi áo nhằm tiết kiệm pin.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/meizu/Mo-ta-san-pham-iphone-14-pro-max-a.jpg" alt="Tính năng Always On trên iPhone 14 Pro Max đã sẵn sàng"></figure><p>Màn hình bộ đôi iPhone 14 Pro Max cực đỉnh với tấm nền OLED Super Retina XDR, mật độ điểm ảnh 460 ppi hỗ trợ loạt tính năng hàng đầu như HDR, True Tone, Wide Color (P3). Màn hình iPhone 14 Pro có kích thước 6,1 inch độ phân giải 2556 x 1179 pixels, trong khi đó iPhone 14 Pro Max là 6,7 inch độ phân giải 2796 x 1290 pixels. Độ tương phản và độ sáng cũng rất ấn tượng với độ tương phản 2.000.000:1 và độ sáng tối đa lên tới 2000 nits ở điều kiện ngoài trời. Ngoài ra màn hình này cũng hỗ trợ tần số làm mới 120Hz và công nghệ ProMotion, có thể thay đổi tần số từ 1-120 Hz để vừa mượt mà, vừa tiết kiệm pin.</p><h3><strong>Super Retina XDR rực rỡ và mãn nhãn</strong></h3><p>Dù trong ánh nắng chói chang nhất, màn hình iPhone 14 Pro Max vẫn luôn sắc nét và chân thực. Tấm nền Super Retina XDR với độ sáng 2.000 nits sáng gấp đôi trước đây khiến khả năng hiển thị của sản phẩm vượt trội bất cứ mẫu iPhone nào trong lịch sử.</p><p>Apple tập trung rất nhiều vào trải nghiệm nội dung HDR khi đẩy độ sáng tối đa lên mức 1.600 nits – ngang ngửa với màn hình Pro Display XDR chuyên dụng của hãng. Bạn sẽ cảm nhận rõ ràng tính chân thực từ mỗi hình ảnh, thước phim.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/meizu/Mo-ta-san-pham-iphone-14-pro-max-l.jpg" alt="Điện thoại iPhone 14 Pro Max rực rỡ và mãn nhãn"></figure><h3><strong>Camera 48MP lần đầu góp mặt</strong></h3><p>iPhone 14 Pro Max được ưu ái trang bị camera chính 48MP hoàn toàn mới, với cảm biến quad-pixel tân tiến. Việc nâng cấp độ phân giải gấp bốn lần iPhone 13 Pro Max và sử dụng cảm biến ảnh lớn hơn 65% giúp hình ảnh trở nên sắc nét chưa từng thấy.</p><p>Cảm biến mới sẽ gộp mỗi nhóm bốn pixel thành một pixel lớn, từ đó gia tăng khả năng thu sáng gấp bốn lần và tạo ra những khuôn hình sắc nét vượt xa những chiếc điện thoại camera 12MP thông thường trên thị trường. Nhờ vậy bạn sẽ có ảnh chi tiết hơn tới 4 lần trong khi chỉnh sửa ảnh ProRAW để thoải mái crop ảnh mà không lo giảm chất lượng.</p><p>Kích thước cảm biến cũng lớn hơn tới 65% so với iPhone 13 Pro, tăng khả năng chụp ảnh thiếu sáng. Trong điều kiện bình thường, Apple sẽ ghép 4 điểm ảnh làm 1 để bức ảnh cuối cùng vẫn có độ phân giải 12MP nhưng độ sáng và độ chi tiết vượt trội.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/meizu/Mo-ta-san-pham-iphone-14-pro-max-c.jpg" alt="Camera iPhone 14 Pro Max 48MP"></figure>', N'/user-content/5aa49bf4-820e-41f6-aa16-a044a1503abd.webp', N'/user-content/e8f84c51-aa86-4e10-9c9c-bb46b75e661f.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (28, N'iPhone 13 Pro Max 128GB | Chính hãng VN/A', 1, CAST(27990000.00 AS Decimal(18, 2)), 100, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.7 inch, OLED, Super Retina XDR, 2778 x 1284 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>6 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Apple A15 Bionic</td></tr><tr><td>GPU</td><td>Apple GPU 5 nhân</td></tr><tr><td>Dung lượng pin</td><td>4352 mAh</td></tr><tr><td>Thẻ sim</td><td>1 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 15</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2021</td></tr></tbody></table></figure>', N'<h3><strong>Đắm chìm trong không gian màn hình lớn cực đã</strong></h3><p>Dù là giải trí khi xem phim, chơi game hay kiểm tra email, đọc tài liệu thì màn hình lớn tới 6,7 inch của iPhone 13 Pro Max cũng luôn cho trải nghiệm tuyệt vời nhất.</p><p>Không chỉ lớn, đây còn là màn hình chất lượng hàng đầu thế giới smartphone với tấm nền OLED tuyệt đẹp, công nghệ Super Retina XDR siêu nét và độ sáng tối đa đạt mức khó tin, lên tới 1200 nits cho nội dung HDR. Trước mắt bạn là một không gian giải trí mãn nhãn, một thiết bị di động lý tưởng để giải quyết nhanh công việc với màn hình thực sự xuất sắc.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-13-pro-new-1.JPG" alt="Đắm chìm trong không gian màn hình lớn iPhone 13 Pro Max"></figure><h3><strong>iPhone 13 Pro Max xanh lá sang trọng, bí ẩn</strong></h3><p>iPhone 13 Pro Max giờ đây đã khoác lên màu xanh lá Alpine Green bí ẩn mà không kém phần sang trọng. Sắc màu mới đem lại cảm nhận mới mẻ mà giúp bạn có thêm nhiều lựa chọn khi sắm sửa cho bản thân một chiếc iPhone cao cấp thế hệ mới. Cầm iPhone 13 Pro Max màu xanh lá&nbsp;trên tay, bạn sẽ có cảm giác như đang sử dụng phiên bản giới hạn của sản phẩm này.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/SmartphoneChupDep/iphone-13-pro-max-xanh-la.jpg" alt="iPhone 13 Pro Max màu xanh lá"></figure><h3><strong>Bước nhảy vọt về thời lượng pin</strong></h3><p>Dòng iPhone Pro Max luôn được người dùng yêu thích nhờ thời lượng pin siêu dài, tuy nhiên iPhone 13 Pro Max còn làm được nhiều hơn thế. Dung lượng pin lớn hơn, màn hình mới và bộ vi xử lý Apple A15 Bionic tiết kiệm điện hơn giúp nó&nbsp;trở thành chiếc <a href="https://fptshop.com.vn/dien-thoai/apple-iphone">iPhone</a> có thời lượng pin tốt nhất từ trước đến nay.</p><p>So với <a href="https://fptshop.com.vn/dien-thoai/iphone-12-pro-max">iPhone 12 Pro Max</a>, iPhone 13 Pro Max có thời gian sử dụng dài hơn 2,5 giờ. Bạn sẽ cảm nhận rõ sự khác biệt khi sử dụng thực tế, thời lượng pin iPhone 13 Pro Max thậm chí còn có thể kéo dài đến ngày thứ 3 với nhu cầu sử dụng thông thường.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-pro-max-3.jpg" alt="Bước nhảy vọt về thời lượng pin iPhone 13 Pro Max"></figure>', N'/user-content/e4f10924-3093-4242-ba9d-1456545c80da.webp', N'/user-content/838db1fb-9d2e-45aa-811b-a0a38b506b24.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (29, N'Iphone11', 1, CAST(10490000.00 AS Decimal(18, 2)), 100, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.1 inch, IPS LCD, Liquid Retina HD, 828 x 1792 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>64 GB</td></tr><tr><td>CPU</td><td>Apple A13 Bionic</td></tr><tr><td>GPU</td><td>Apple GPU 4 nhân</td></tr><tr><td>Dung lượng pin</td><td>3110 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 14</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2019</td></tr></tbody></table></figure>', N'<h3><strong>Thiết kế hiện đại, nhỏ gọn, cho cảm giác cầm nắm thoải mái</strong></h3><p>Thiết kế bên ngoài của iPhone 11 được kế thừa và phát triển từ phiên bản tiền nhiệm đã được ra mắt trước đó là iPhone XR. Cụm camera của máy vẫn giữ nguyên thiết kế theo chiều dọc nhưng phần mô-đun chứa camera được mở rộng hơn đem tới những trải nghiệm hoàn toàn mới lạ cho người dùng. Phần viền thân máy và các góc cạnh của iPhone 11 được thiết kế dạng cong bo mềm mại.</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Apple/iPhone-11/iphone-11-13_1.jpg" alt="Đánh giá thiết kế iPhone 11"></figure><p>Kết hợp với trọng lượng chỉ vỏn vẹn 194 gram cùng kích thước sản phẩm lần lượt là 150.9 x 75.7 x 8.3 mm, iPhone thế hệ thứ 11 sẽ mang tới cho bạn cảm giác cầm nắm cực kỳ thoải mái. Bạn có thể thoải mái sử dụng sản phẩm cả ngày dài mà không cảm thấy khó chịu hay đau mỏi phần cổ tay. Các phím, nút điều chỉnh âm lượng của thiết bị được bố trí quanh viền thân máy, thể hiện sự hoàn hảo trong thiết kế của sản phẩm.</p><h3><strong>Chất lượng hiển thị sắc nét với tấm nền IPS LCD hiện đại</strong></h3><p>Về mặt hiển thị, iPhone 11 được người dùng đánh giá khá cao về độ chi tiết, sắc nét. Sản phẩm được ứng dụng công nghệ màn hình hiện đại HD Retina cùng tấm nền LCD kích thước 6.1 inch thế hệ mới, cho trải nghiệm hình ảnh chân thực và sống động tời từng điểm ảnh.&nbsp;</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Apple/iPhone-11/iPhone-11-1.jpg" alt="Đánh giá màn hình iPhone 11"></figure><p>Độ phân giải hình ảnh mà iPhone 11 đem tới cho người dùng luôn đạt chất lượng Full HD với mật độ điểm ảnh lên tới 326 ppi. Bên cạnh đó, các thông số về độ trễ màn hình, tần số quét của máy cũng nằm ở mức ổn định, cho trải nghiệm mượt mà, mềm mại trên từng khung hình hiển thị. Độ chính xác màu của sản phẩm đạt ở mức tối đa, đưa người dùng đến với thế giới hình ảnh rực rỡ sắc màu.</p><h3><strong>Cấu hình mạnh mẽ, ổn định trong thời gian dài sử dụng</strong></h3><p>Không chỉ tạo được ấn tượng với người dùng thông qua thiết kế gọn nhẹ, cùng chất lượng hiển thị sắc nét, iPhone 11 còn tiếp tục ghi điểm với cấu hình mạnh mẽ, cho trải nghiệm sử dụng hết sức mượt mà. Cụ thể, máy được trang bị chip A13 Bionic cùng dung lượng RAM 4GB. So với các dòng chip khác của Apple thì A13 được đánh giá là có hiệu năng ổn định và tiết kiệm năng lượng tốt.&nbsp;</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Apple/iPhone-11/iphone-11-16_1.jpg" alt="Đánh giá cấu hình iPhone 11"></figure><p>Dung lượng bộ nhớ trong của iPhone 11 bao gồm nhiều phiên bản khác nhau là 64GB, 128GB và 256GB. Với thông số này, người dùng có thể thoải mái lưu trữ ứng dụng, dữ liệu cá nhân mà không cần lo về vấn đề không đủ không gian lưu trữ.</p><h3><strong>Cụm camera sau chất lượng cao, đa dạng tính năng quay chụp khác nhau</strong></h3><p>Một ưu điểm vượt trội khác của iPhone 11 rất được người dùng yêu thích là hệ thống máy ảnh có độ phân giải cao, cho chất lượng quay chụp cực kỳ sắc nét cùng dải màu động ấn tượng. Theo đó, mô-đun máy ảnh phía mặt lưng của iPhone 11 bao gồm: 1 camera chính, 1 camera góc rộng cùng 1 đèn flash. Cả camera chính và camera góc rộng của máy đều sở hữu độ phân giải cao lên tới 12MP.</p><p>Điểm khác biệt duy nhất giữa 2 camera chính, phụ của máy là camera chính sở hữu tiêu cự 28mm, khẩu độ f/1.8, có tính năng chống rung quang học, có Dual Pixel AF và được tích hợp chế độ Night Mode. Thông số này trên camera góc rộng của iPhone 11 chỉ là 13mm tiêu cự và không có chống rung và không có khả năng lấy nét ảnh.</p><figure class="image"><img src="https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Apple/iPhone-11/iphone-11-9_1.jpg" alt="Đánh giá camera sau iPhone 11"></figure>', N'/user-content/7036f471-c1ce-49f5-b45a-8746e89ebae5.webp', N'/user-content/16aed062-0ae7-47c2-afdd-4f8ba5cbb4d9.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (32, N'Xiaomi Redmi Note 11 4GB - 128GB', 5, CAST(3990000.00 AS Decimal(18, 2)), 100, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.43 inch, AMOLED, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 8.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>13.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 680</td></tr><tr><td>GPU</td><td>Adreno 610</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 11</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>01/2022</td></tr></tbody></table></figure>', N'<h3><strong>Đắm chìm trong màn hình lớn siêu mượt</strong></h3><p>Hãy thử xem một bộ phim hay video âm nhạc yêu thích trên Xiaomi Redmi Note 11, bạn sẽ cảm nhận ngay được sự ấn tượng khó quên. Diện tích hiển thị lên tới 6,5 inch, độ phân giải Full HD+ sắc nét, đồng thời <a href="https://fptshop.com.vn/tin-tuc/danh-gia/toc-do-lam-tuoi-man-hinh-60hz-90hz-hoac-120hz-co-nghia-la-gi-113378">tốc độ làm mới 90Hz</a> mượt mà đến từng thao tác, mọi hiệu ứng chuyển cảnh, màu sắc trước mắt đều đẹp mỹ mãn. Màn hình này còn có tính năng điều chỉnh ánh sáng và nhiệt độ màu thông minh, để hình ảnh luôn phù hợp với môi trường xung quanh.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/PhoiSang/REDMI-NOTE-11-12.jpg" alt="màn hình Xiaomi Redmi Note 11"></figure><h3><strong>Thỏa sức sử dụng, sạc đầy trong chớp mắt</strong></h3><p>Mang trên mình viên pin 5000mAh và những công nghệ tiết kiệm năng lượng hàng đầu, Redmi Note 11 có thể cùng bạn chơi game đến 10 giờ hay xem phim 14 giờ liên tục. Hãy thỏa thích học tập, làm việc, liên lạc, chơi game, lướt mạng xã hội và làm mọi điều bạn muốn trên không gian hiển thị rộng lớn của sản phẩm này.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/PhoiSang/REDMI-NOTE-11-10.jpg" alt="công nghệ sạc nhanh Xiaomi Redmi Note 11"></figure><h3><strong>Trang bị công nghệ sạc nhanh hàng đầu</strong></h3><p>Với Xiaomi Redmi Note 11, bạn chẳng lo gián đoạn trải nghiệm của mình bởi ngoài viên pin dung lượng lớn, sản phẩm còn sở hữu công nghệ sạc nhanh 33W ghi nhận khả năng tái tạo năng lượng đáng kinh nhạc. Chỉ với khoảng 1 tiếng chờ đợi, sản phẩm có thể nạp đầy pin từ 0% đến 100% một cách hết sức ấn tượng. Redmi Note 11 sẽ luôn đem lại trải nghiệm pin khiến bạn hài lòng.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/PhoiSang/REDMI-NOTE-11-1.jpg" alt="sạc nhanh Xiaomi Redmi Note 11"></figure><h3><strong>Quay video rõ nét không ngờ</strong></h3><p>Camera AI độ phân giải cực “khủng” 50MP trên Xiaomi Redmi Note 11 giúp bạn lưu giữ những bức ảnh tuyệt đẹp với ánh sáng, màu sắc và độ chi tiết tuyệt vời. Sự hiện diện của <a href="https://fptshop.com.vn/tin-tuc/danh-gia/ong-kinh-goc-sieu-rong-tren-smartphone-la-gi-134612">camera góc siêu rộng</a> 8MP và camera 2MP macro cũng góp phần giúp bạn nắm bắt nhiều khuôn hình ưng ý với góc nhìn toàn cảnh rộng rãi hoặc bắt cận từng chi tiết cực kỳ rõ ràng.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/PhoiSang/REDMI-NOTE-11-18.jpg" alt="sáng tạo video Xiaomi Redmi Note 11"></figure>', N'/user-content/a70737e4-5c97-49cf-8f31-f97412a0b793.webp', N'/user-content/4926a1a0-3941-46d9-9107-f2f5b22b1240.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (33, N'Xiaomi 13 8GB-256GB', 5, CAST(17490000.00 AS Decimal(18, 2)), 100, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.36 inch, AMOLED, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 10.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Snapdragon 8 Gen 2</td></tr><tr><td>GPU</td><td>Qualcomm Adreno</td></tr><tr><td>Dung lượng pin</td><td>4500</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>2023</td></tr></tbody></table></figure>', N'<h3><strong>Thiết kế tạo điểm nhấn với cạnh phẳng bóng bẩy</strong></h3><p>Các góc bo tròn trang nhã ở mặt sau và khung viền của modem máy ảnh sẽ tạo ra cảm giác thẩm mỹ đơn giản. Trong khi khung viền kim loại của điện thoại Xiaomi 13 được làm phẳng bóng bẩy, càng làm tăng thêm vẻ sang trọng và phong cách. Thiết kế tổng thể Xiaomi 13 cực gọn gàng của điện thoại sẽ giúp cho trải nghiệm cầm nắm của người dùng luôn thoải mái và dễ dàng nằm gọn trong lòng bàn tay.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/xiaomi-13.jpg" alt="Xiaomi 13 được làm phẳng bóng bẩy, càng làm tăng thêm vẻ sang trọng và phong cách"></figure><h3><strong>Màn hình có viền siêu mỏng</strong></h3><p>Xiaomi 13 mang đến cho bạn những trải nghiệm hình ảnh vô song, tận hưởng mọi khoảnh khắc với một màn hình phẳng cực ấn tượng. Viền màn hình của máy mỏng chỉ 1.61mm sẽ giúp cho máy có thêm nhiều không gian hiển thị hơn và đặc biệt đây là điểm nhận biết giữa chiếc flagship này với các sản phẩm khác ngoài phân khúc. Xiaomi 13 có khả năng chống bụi và chống nước đạt chuẩn IP68, mọi kỷ niệm dù ở môi trường nào cũng được bắt trọn.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/xiaomi-13-2(1).jpg" alt="Xiaomi 13 màn hình có viền siêu mỏng"></figure><h3><strong>Mở ra những kiệt tác mới&nbsp;</strong></h3><p>Với việc đồng chế tác cùng thương hiệu nổi tiếng về nhiếp ảnh Leica, cụm camera sau của Xiaomi 13 sẽ giúp bạn ghi lại những dịp trọng đại cũng như những chi tiết đơn giản hằng ngày một cách đẹp mắt và cực chuyên nghiệp.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/xiaomi-13-1(1).jpg" alt="Xiaomi 13 thiết kế cạnh phẳng bóng bẩy"></figure><p>Bộ ba camera 50MP này sẽ được nâng cấp về chống rung quang học, tốc độ và hiệu suất chụp ảnh cũng được cải thiện nhờ tích hợp thuật toán hiện đại, hứa hẹn mang đến những trải nghiệm tuyệt vời nhất cho người dùng.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/xiaomi-13-3(1).jpg" alt="Xiaomi 13 mở ra những kiệt tác mới&nbsp;"></figure><h3><strong>Tích hợp 2 phong cách chụp ảnh Leica</strong></h3><p>Với 2 phong cách chụp ảnh Leica này, Xiaomi 13 sẽ mang đến sắc thái rực sáng cho bức ảnh cũng như đem đến màu sắc trung thực để người dùng lựa chọn. Leica Authentic sẽ phù hợp với người dùng thích phong cách Leica nguyên bản khi chế độ này giữ nguyên độ tương phản và màu sắc thực tế. Trong khi Leica Vibrant sẽ phù hợp với người dùng chạy theo xu hướng, cung cấp tông màu sáng, độ bão hòa màu cao.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/xiaomi-13-4(1).jpg" alt="Xiaomi 13 tích hợp 2 phong cách chụp ảnh Leica"></figure>', N'/user-content/5388b1f4-8337-457c-9135-f373d31cde02.webp', N'/user-content/4bdcd1e2-a3b0-4f0a-817b-2486ac30e4f6.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (34, N'OPPO Find N2 Flip', 3, CAST(18990000.00 AS Decimal(18, 2)), 98, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>Phụ: 3.26 inch, Chính: 6.8 inch, Chính: AMOLED, FHD+, 2520 x 1080 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 8.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>CPU</td><td>Mediatek Dimensity 9000+ 5G</td></tr><tr><td>GPU</td><td>Mali-G710 MC10</td></tr><tr><td>Dung lượng pin</td><td>4300 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 13.0 (ColorOS 13)</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>03/2023</td></tr></tbody></table></figure>', N'<h3><strong>Nổi bật bởi sự nhỏ gọn và thời thượng</strong></h3><p>OPPO Find N2 Flip thời thượng, hiện đại khi nhìn bên ngoài và nổi bật khi gập lại nhỏ gọn. Bạn có thể đặt OPPO Find N2 Flip vừa vặn trong túi quần hay túi xách mà không cảm thấy vướng vịu, khó chịu. Khi cần thiết, một màn hình lớn tiện lợi sẽ xuất hiện, tạo ra chuẩn không gian smartphone thường, để bạn thực hiện mọi hoạt động. Màu sắc còn tôn lên Find N2 Flip với sắc màu tím cuốn hút, bên cạnh sắc đen tối giản, tinh tế, sang trọng.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Thiet-ke-OPPO-Find-N2-Flip-4.jpg" alt="OPPO Find N2 Flip nhỏ gọn và thời thượng"></figure><h3><strong>Bền bỉ, chắc chắn với khả năng gập đến 400.000 lần</strong></h3><p>Công nghệ gập tiên tiến của&nbsp;Find N2 Flip&nbsp;thể hiện rõ ở phần thiết kế&nbsp;bản lề. <a href="https://fptshop.com.vn/dien-thoai/oppo">OPPO</a> sử dụng bản lề&nbsp;giọt nước hàng đầu trong ngành, chế tác tỉ mỉ từ thép cường độ cao cho đến polyme cấp độ chuyên nghiệp, độ sâu nếp gấp dưới 0.15mm, mang tới sản phẩm&nbsp;chắc chắn, đạt độ thẩm mỹ cao, mỏng và liền mạch, để người dùng luôn thoải mái khi mở ra. Phần gập còn bền bỉ khi máy đạt thử nghiệm gập 400.000 lần, tương đương độ bền lên tới 5 năm với 200 lần gập mỗi ngày.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/OPPO-Find-N2-Flip-1-2.jpg" alt="OPPO Find N2 Flip"></figure><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Thiet-ke-OPPO-Find-N2-Flip-3.jpg" alt="OPPO Find N2 Flip bền bỉ"></figure><h3><strong>Kiểm soát nếp nhăn tối đa, màn hình 120Hz đắm chìm</strong></h3><p>OPPO Find N2 Flip kiểm soát nếp nhăn tối đa, bạn sẽ rất khó thấy được nếp nhăn trên điện thoại, cho không gian giải trí mãn nhãn. Đồng thời, sự kết hợp của kích thước lớn 6.8 inch, hỗ trợ HDR10+, gam&nbsp;màu rộng chuẩn P3&nbsp;trên tấm nền LTPO <a href="https://fptshop.com.vn/tin-tuc/danh-gia/man-hinh-amoled-la-gi-34866">AMOLED</a> cho&nbsp;chi tiết chân thực và màu sắc sống động, mang tới trải nghiệm đắm chìm từ lướt mạng xã hội, xem phim,&nbsp;Youtube đến gaming. Góp phần thêm sự hoàn hảo này là tần số quét 120Hz thích ứng, vừa đảm bảo độ mượt cho các thao tác chuyển cảnh, vừa tiết kiệm điện năng tối ưu.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Man-hinh-OPPO-Find-N2-Flip.jpg" alt="Màn hình mượt mà trên chiếc OPPO Find N2 Flip"></figure>', N'/user-content/3d0010ac-f6d3-495d-99ea-9c81c7781532.webp', N'/user-content/4d9386c8-0e74-4b6f-bcb4-7fca0780d59b.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (35, N'OPPO Reno7 Z 5G 8GB - 128GB', 3, CAST(7290000.00 AS Decimal(18, 2)), 100, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>Chính: 6.43 inch, Chính: AMOLED, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>64.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>16.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 695 5G</td></tr><tr><td>GPU</td><td>Adreno 619</td></tr><tr><td>Dung lượng pin</td><td>4500 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 11 (ColorOS 12)</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>03/2022</td></tr></tbody></table></figure>', N'<h3><strong>Chuyên gia nhiếp ảnh chân dung</strong></h3><p>Bật mở chân dung vô hạn với Chân dung Bokeh Flare cải tiến, OPPO Reno7 Z 5G mang người dùng vào thế giới ảnh chân dung tuyệt đỉnh. Các thuật toán mạnh mẽ, chạy hàng nghìn phép tính mỗi giây, khả năng xử lý ảnh theo thời gian thực, đạt chuẩn DSLR, tạo nên chủ thể đẹp tự nhiên và khung nền xóa phông lung linh, ngập tràn màu sắc. Tất cả điểm đặc biệt của máy ảnh DSLR đều sẽ được tối ưu trên OPPO Reno7 Z 5G, ảnh chân dung sẽ xuất sắc hơn bao giờ.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/11/camera-OPPO-Reno7-5G-Z.jpg" alt="Camera OPPO Reno7 Z 5G"></figure><h3><strong>Tự tin selfie đêm</strong></h3><p>Đến với OPPO Reno7 Z 5G, màn đêm không còn là trở ngại khi chụp ảnh selfie. Selfie <a href="https://fptshop.com.vn/tin-tuc/danh-gia/chup-anh-hdr-la-gi-20912">HDR</a> có trên OPPO Reno7 Z 5G, sử dụng thuật toán tự động, loại bỏ các chi tiết ngược sáng, duy trì tông màu da. Từng đường nét&nbsp;trên gương mặt đều được tối ưu từ chi tiết, ánh sáng, để bạn là tâm điểm mỗi bức ảnh.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/11/camera-OPPO-Reno7-5G-Z-1.jpg" alt="Camera OPPO Reno7 Z 5G"></figure><h3><strong>Tỏa sáng trong từng khoảnh khắc</strong></h3><p>Không chỉ chụp ảnh chân dung ấn tượng, OPPO còn tận dụng sức mạnh AI hàng đầu trong ngành để ảnh chân dung tỏa sáng. Theo đó, Chỉnh sửa chân dung là thuật toán từ <a href="https://fptshop.com.vn/dien-thoai/oppo">OPPO</a> để xóa mờ các khuyết điểm và giữ được các nét tự nhiên của bạn. Chế độ còn có chỉnh ảnh cho từng khuôn mặt, để bạn và hội bạn thân đều có những khoảnh khắc đẹp nhất.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/11/camera-OPPO-Reno7-5G-Z-2.jpg" alt="Camera OPPO Reno7 Z 5G"></figure>', N'/user-content/bbb187ff-049c-41de-ae75-0023b6d592e7.webp', N'/user-content/3b0bcbde-d018-4c4f-8e27-04a15f3086fb.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (36, N'Vivo T1x 4GB-64GB', 4, CAST(3790000.00 AS Decimal(18, 2)), 100, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>Chính: 6.58 inch, Chính: LCD, FHD+, 2408 x 1080 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>8.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>64 GB</td></tr><tr><td>CPU</td><td>Snapdragon 680</td></tr><tr><td>GPU</td><td>Mali-G68 MC4</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 11</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>07/2022</td></tr></tbody></table></figure>', N'<h3><strong>Vi xử lý nói không với giật lag</strong></h3><p>Với <a href="https://fptshop.com.vn/tin-tuc/tin-moi/qualcomm-gioi-thieu-4-vi-xu-ly-moi-snapdragon-778g-plus-480-plus-690-va-680-140323">Qualcomm Snapdragon 680</a>, vivo T1x sẽ mang đến hiệu năng mạnh mẽ cho mọi tác vụ, từ chơi game nặng đến nghe gọi thông thường. Bộ xử lý này được cải tiến cả về CPU lẫn GPU so với người tiền nhiệm, do đó hiệu năng và đồ họa sẽ được nâng lên một tầm cao mới.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/vivo-t1x-1.png" alt="vivo T1x 1"></figure><h3><strong>Bền bỉ, sạc nhanh tức thì</strong></h3><p>Với vivo T1x trên tay, bạn có thể làm những gì mình thích trong cả ngày dài ở bất cứ nơi đâu. Viên pin 5000mAh còn cho khả năng hoạt động bền bỉ, kéo dài tuổi thọ pin một cách đáng kể. Bên cạnh đó, chỉ cần tranh thủ nạp năng lượng vào mỗi buổi sáng, bạn sẽ có ngay một ngày tràn đầy năng lượng và trải nghiệm hiệu quả.</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/vivo-t1x-2.png" alt="vivo T1x 2"></figure><h3><strong>Đa nhiệm vận hành trơn tru</strong></h3><p>Với công nghệ RAM mở rộng 2.0, RAM 4GB trên vivo T1x sẽ được cộng thêm 1GB từ bộ nhớ ROM thông qua công nghệ tối ưu hóa thuật toán, tận dụng không gian trống của ROM để vận hành đa nhiệm. Quá trình chuyển đổi khi sử dụng cùng lúc nhiều ứng dụng giờ đây sẽ luôn mượt mà và không độ trễ.&nbsp;</p><h3><strong>Chiến game hăng say, trải nghiệm cực chất</strong></h3><p>Chiến game hết mình, chơi bất bại với một phong cách cực cool và bùng cháy, vivo T1x là một cỗ máy chơi game cực đỉnh khi <a href="https://fptshop.com.vn/dien-thoai/vivo">vivo</a> tập trung nâng cao hiệu suất chơi game. Với Multi-Turbo 5.0 và chế độ siêu trò chơi, điện thoại sẽ đưa bạn đến với những trận game ở đẳng cấp khác và hoàn toàn mới.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/vivo-t1x-4.png" alt="vivo T1x 3"></figure><h3><strong>Sống động mọi khung hình</strong></h3><p>Để mang đến trải nghiệm hoàn hảo nhất, màn hình sắc nét cũng là một yếu tố quan trọng. Với vivo T1x, bạn sẽ tận hưởng được độ mượt mà và sống động từ thao tác vuốt chạm đến ánh nhìn với tần số quét 90Hz. Màn hình cũng thể hiện được màu sắc tươi trẻ và chân thực kết hợp không gian rộng lớn lên đến 6.58 inch, dù là chơi game hay xem phim, màn hình này đều mang lại trải nghiệm tốt nhất.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/vivo-t1x-5.png" alt="vivo T1x 4"></figure>', N'/user-content/8123a359-0d0d-44e9-bdb0-c67e23b2d729.webp', N'/user-content/57939a1a-6cac-450d-9fc2-329907179e5c.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (37, N'Vivo Y22s 8GB-128GB', 4, CAST(4890000.00 AS Decimal(18, 2)), 100, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>Chính: 6.55 inch, Chính: LCD, HD+, 720 x 1612 Pixels</td></tr><tr><td>Camera sau</td><td>50.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>8.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 680</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>09/2022</td></tr></tbody></table></figure>', N'<h3><strong>Phối màu theo thiết kế vân sáng laser</strong></h3><p>Hai phiên bản màu trên vivo Y22s đều được phối với hiệu ứng cực đẹp mắt. Màu Xanh Tinh Không có mặt lưng tạo sự lấp lánh, làm sáng lên bề mặt màu xanh giống như những ngôi sao chiếu sáng vũ trụ thanh bình. Trong khi màu Xanh Nhật Hạ sử dụng công nghệ hình ảnh trực tiếp bằng laser (LDI) tạo ra nhiều vệt sáng được tạo ra trên mặt lưng, mang đến hiệu ứng sáng chói và mượt mà khi chạm vào. Một lớp phủ nano đặc biệt sẽ tạo ra một thế giới màu sắc trong lòng bàn tay.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/thiet-ke-vivo-y22s.png" alt="vivo Y22s 2"></figure><h3><strong>Mượt mà trong từng điểm vuốt chạm</strong></h3><p>Y22s sở hữu màn hình màu sắc rực rỡ 6.55 inch cùng độ phân giải cao HD+, giúp hình ảnh hiển thị rõ nét và màu sắc sống động hơn. Cho dù xem phim hay chơi game đều mang đến cho bạn trải nghiệm tuyệt hảo, đồng thời chế độ lọc ánh sáng xanh giúp bảo vệ đôi mắt của bạn. Hơn hết, tốc độ làm tươi lên đến 90Hz và tốc độ lấy mẫu cảm ứng cao mang đến trải nghiệm đồ họa mượt mà và phản hồi chạm vuốt màn hình siêu nhạy.&nbsp;</p><figure class="image"><img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/man-hinh-vivo-y22s.png" alt="vivo Y22s 3"></figure><h3><strong>Đa nhiệm mượt mà đến đáng kinh ngạc</strong></h3><p>Giờ đây, bạn có thể tải xuống tất cả các ứng dụng yêu thích và vận hành chúng một cách trơn tru với vivo Y22s. Ngoài việc sở hữu bộ nhớ RAM mặc định lên đến 8GB, RAM mở rộng 3.0 mới nhất và độc quyền vivo có thể mở rộng thêm 8GB giúp chuyển đổi mượt mà nhiều ứng dụng. Đây là thiết bị đầu tiên tích hợp RAM mở rộng nhân đôi để vận hành đa nhiệm, con số 16GB sẽ đảm bảo khả năng vận hành cùng lúc gần 50 ứng dụng.&nbsp;</p>', N'/user-content/48eaa542-d186-410b-8a3d-b722e71128f0.webp', N'/user-content/0a8fcf6e-53f9-4844-b763-a8c40436bc12.webp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [UserId], [ProductId], [Rating], [Comments], [PublishedDate]) VALUES (1, N'32c08a02-3668-4238-3455-08db625f989b', 9, 5, N'saddad', CAST(N'2023-06-03T19:52:28.9049487' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [UserId], [ProductId], [Rating], [Comments], [PublishedDate]) VALUES (2, N'32c08a02-3668-4238-3455-08db625f989b', 34, 5, N'Ngon', CAST(N'2023-06-14T20:42:28.0540866' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 6/22/2023 9:53:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CouponId]    Script Date: 6/22/2023 9:53:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CouponId] ON [dbo].[Orders]
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 6/22/2023 9:53:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 6/22/2023 9:53:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_ProductId]    Script Date: 6/22/2023 9:53:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_ProductId] ON [dbo].[Reviews]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_UserId]    Script Date: 6/22/2023 9:53:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_UserId] ON [dbo].[Reviews]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.0)) FOR [Total]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DateCreated]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Coupons_CouponId] FOREIGN KEY([CouponId])
REFERENCES [dbo].[Coupons] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Coupons_CouponId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Products_ProductId]
GO
USE [master]
GO
ALTER DATABASE [ShopSmartPhone] SET  READ_WRITE 
GO
