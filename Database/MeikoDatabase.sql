USE [master]
GO
/****** Object:  Database [MeikoDatabase]    Script Date: 10/19/2023 1:20:40 PM ******/
CREATE DATABASE [MeikoDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MeikoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MeikoDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MeikoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MeikoDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MeikoDatabase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MeikoDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MeikoDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MeikoDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MeikoDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MeikoDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MeikoDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [MeikoDatabase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MeikoDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MeikoDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MeikoDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MeikoDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MeikoDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MeikoDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MeikoDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MeikoDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MeikoDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MeikoDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MeikoDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MeikoDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MeikoDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MeikoDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MeikoDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MeikoDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MeikoDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MeikoDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [MeikoDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MeikoDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MeikoDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MeikoDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MeikoDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MeikoDatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MeikoDatabase', N'ON'
GO
ALTER DATABASE [MeikoDatabase] SET QUERY_STORE = OFF
GO
USE [MeikoDatabase]
GO
/****** Object:  Table [dbo].[Chatlieu]    Script Date: 10/19/2023 1:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chatlieu](
	[Machatlieu] [int] IDENTITY(1,1) NOT NULL,
	[Tenchatlieu] [nchar](10) NULL,
 CONSTRAINT [PK_Hedieuhanh] PRIMARY KEY CLUSTERED 
(
	[Machatlieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 10/19/2023 1:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
	[Phuongthucthanhtoan] [int] NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 10/19/2023 1:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
	[Thanhtoan] [int] NULL,
	[Diachinhanhang] [nvarchar](100) NULL,
	[Tongtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsanxuat]    Script Date: 10/19/2023 1:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nchar](10) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 10/19/2023 1:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
	[Anhdaidien] [nchar](30) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 10/19/2023 1:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 10/19/2023 1:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Sanphammoi] [bit] NULL,
	[Anhbia] [nvarchar](50) NULL,
	[Mahang] [int] NULL,
	[Machatlieu] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chatlieu] ON 

INSERT [dbo].[Chatlieu] ([Machatlieu], [Tenchatlieu]) VALUES (1, N'PVC       ')
INSERT [dbo].[Chatlieu] ([Machatlieu], [Tenchatlieu]) VALUES (2, N'FOMEX     ')
INSERT [dbo].[Chatlieu] ([Machatlieu], [Tenchatlieu]) VALUES (3, N'ABS       ')
SET IDENTITY_INSERT [dbo].[Chatlieu] OFF
GO
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (40, 18, 1, CAST(999999999 AS Decimal(18, 0)), CAST(999999999 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (40, 19, 1, CAST(6000000 AS Decimal(18, 0)), CAST(6000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (40, 20, 1, CAST(4699000 AS Decimal(18, 0)), CAST(4699000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (40, 21, 1, CAST(7250000 AS Decimal(18, 0)), CAST(7250000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (40, 22, 1, CAST(4399000 AS Decimal(18, 0)), CAST(4399000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (40, 23, 1, CAST(4599000 AS Decimal(18, 0)), CAST(4599000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (40, 24, 1, CAST(350000 AS Decimal(18, 0)), CAST(350000 AS Decimal(18, 0)), 1)
GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (40, CAST(N'2023-10-19T13:12:53.303' AS DateTime), NULL, 45, 1, N'', CAST(1027296999 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Donhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (1, N'BandaiNC  ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (2, N'SquareEnix')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'GoodSmile ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'Kotobukiya')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (5, N'Apex      ')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (14, N'kagaminehaku', N'Admin@gmail.com', N'0976361634', N'17102003', 2, N'HCMVN', N'/Images/files/avt3.jpg        ')
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (45, N'haku', N'khach@gmail.com', N'0936361634', N'17102003', NULL, N'HCMVN', N'/Images/files/avt3.jpg        ')
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Machatlieu]) VALUES (18, N'HatsuneMiku', CAST(999999999 AS Decimal(18, 0)), 34, N'The official character of the 2022 Hatsune Miku GT Project, Racing Miku 2022 Ver., is now a 1/7 scale figure! The original 2022 Racing Miku illustration by neco has been carefully brought to life in eye-popping detail. Her dynamic pose and fit physique are sure to charm Racing Miku fans. Don''t miss the fluttering flag or her dazzling smile either! Be sure to add the lively Racing Miku to your collection!', 1, N'/Images/files/hm1.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Machatlieu]) VALUES (19, N'Muelsyse: Elite 2', CAST(6000000 AS Decimal(18, 0)), 200, N'Painted plastic 1/7 scale complete product with stand included. Approximately 310mm in height.', 1, N'/Images/files/mumu.png', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Machatlieu]) VALUES (20, N'NIER:AUTOMATA PLAY ARTS KAI ACTION FIGURE 2B ', CAST(4699000 AS Decimal(18, 0)), 2000, N'YoRHa No. 2 Type B, also known as 2B, from NieR:Automata has now joined the PLAY ARTS KAI action figure line!  The textures on 2B’s hair and clothing exude a sense of luxury. Every fine detail and proportion have been recreated carefully and faithfully when crafting this masterpiece.', NULL, N'/Images/files/NieRAutomata_PAK_2B.jpg', 2, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Machatlieu]) VALUES (21, N'Genshin Impact Kamisato Ayaka Frostflake ', CAST(7250000 AS Decimal(18, 0)), 50, N'Genshin Impact Kamisato Ayaka Frostflake Heron Ver. 1/7', 1, N'/Images/files/ayaka.png', 5, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Machatlieu]) VALUES (22, N'NIER:AUTOMATA PLAY ARTS KAI ACTION FIGURE 9S', CAST(4399000 AS Decimal(18, 0)), 20, N'"This battle will likely have a great effect on the outcome of the war. 2B and I—our battle will continue for some time to come. But that''s another story for another day."', 1, N'/Images/files/NieRAutomata_PAK_9S.jpg', 2, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Machatlieu]) VALUES (23, N'HOLOLIVE PRODUCTION NAKIRI AYAME 1/7', CAST(4599000 AS Decimal(18, 0)), 400, N'Nakiri Ayame (百鬼あやめ) is a female Japanese Virtual YouTuber associated with hololive, debuting as part of its second generation of VTubers alongside Minato Aqua, Murasaki Shion, Yuzuki Choco and Oozora Subaru.', NULL, N'/Images/files/ayame.png', 4, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [Mahang], [Machatlieu]) VALUES (24, N'Gardevoir Pokemon Plamo Collection - BANDAI PLA022', CAST(350000 AS Decimal(18, 0)), 54, N'Gardevoir (Japanese: サーナイト Sirnight) is a dual-type Psychic/Fairy Pokémon introduced in Generation III. Prior to Generation VI, it was a pure Psychic-type Pokémon.', 1, N'/Images/files/gardevoir.png', 1, 1)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Chatlieu] FOREIGN KEY([Machatlieu])
REFERENCES [dbo].[Chatlieu] ([Machatlieu])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Chatlieu]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
USE [master]
GO
ALTER DATABASE [MeikoDatabase] SET  READ_WRITE 
GO
