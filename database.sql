
/****** Object:  Database [Demo]    Script Date: 18/07/2017 3:45:37 AM ******/
CREATE DATABASE [Demo]

 CONTAINMENT = NONE

USE [Demo]
GO
ALTER DATABASE [Demo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Demo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Demo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Demo] SET  MULTI_USER 
GO
ALTER DATABASE [Demo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Demo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Demo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Demo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Demo', N'ON'
GO
USE [Demo]
GO
/****** Object:  Table [dbo].[ChiTietGioHang] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[magiohang] [int] NOT NULL,
	[masanpham] [int] NOT NULL,
	[soluong] [int] NULL,
	[thanhtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[magiohang] ASC,
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucSanPham]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMucSanPham](
	[madanhmucsanpham] [int] IDENTITY(1,1) NOT NULL,
	[metatitle] [varchar](100) NULL,
	[tendanhmucsanpham] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMucSanPham] PRIMARY KEY CLUSTERED 
(
	[madanhmucsanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GioHang]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[magiohang] [int] IDENTITY(1,1) NOT NULL,
	[makhachhang] [int] NULL,
	[ngaydathang] [date] NULL,
	[ngaygiaohang] [date] NULL,
	[tongtien] [decimal](18, 0) NULL,
	[tinhtranggiaohang] [bit] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[magiohang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[makhachhang] [int] IDENTITY(1,1) NOT NULL,
	[tenkhachhang] [nvarchar](50) NULL,
	[gioitinh] [nchar](10) NULL,
	[sodienthoai] [char](11) NULL,
	[ngaysinh] [datetime] NULL,
	[email] [varchar](50) NULL,
	[taikhoan] [nvarchar](100) NULL,
	[matkhau] [nvarchar](100) NULL,
	[diachi] [nvarchar](200) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[maloaisanpham] [int] IDENTITY(1,1) NOT NULL,
	[tenloaisanpham] [nvarchar](50) NULL,
	[metatitle] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[maloaisanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanHoi] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[tennguoiphanhoi] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[noidung] [ntext] NULL,
 CONSTRAINT [PK_PhanHoi] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[masanpham] [int] IDENTITY(1,1) NOT NULL,
	[tensanpham] [nvarchar](100) NULL,
	[giaban] [decimal](18, 0) NULL,
	[mota] [ntext] NULL,
	[maloaisanpham] [int] NULL,
	[madanhmuc] [int] NULL,
	[linkanh] [nvarchar](150) NULL,
	[ngaytao] [date] NULL CONSTRAINT [DF_SanPham_ngaytao]  DEFAULT (getdate()),
	[soluong] [int] NULL,
	[xuatxu] [nvarchar](50) NULL,
	[metatitle] [varchar](100) NULL,
	[chitiet] [ntext] NULL,
	[uutien] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slide]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ma] [int] NOT NULL,
	[linkanh] [nvarchar](50) NULL,
	[mota] [nchar](10) NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TinTuc](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
	[mota] [ntext] NULL,
	[linkanh] [varchar](100) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[taikhoan] [nvarchar](100) NOT NULL,
	[matkhau] [nvarchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietGioHang] ([magiohang], [masanpham], [soluong], [thanhtien]) VALUES (1, 12, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([magiohang], [masanpham], [soluong], [thanhtien]) VALUES (1, 13, 1, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([magiohang], [masanpham], [soluong], [thanhtien]) VALUES (2, 13, 1, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([magiohang], [masanpham], [soluong], [thanhtien]) VALUES (2, 29, 1, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([magiohang], [masanpham], [soluong], [thanhtien]) VALUES (3, 16, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([magiohang], [masanpham], [soluong], [thanhtien]) VALUES (3, 17, 1, CAST(100000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] ON 

INSERT [dbo].[DanhMucSanPham] ([madanhmucsanpham], [metatitle], [tendanhmucsanpham]) VALUES (1, N'quan-ao-nam', N'Quần áo nam')
INSERT [dbo].[DanhMucSanPham] ([madanhmucsanpham], [metatitle], [tendanhmucsanpham]) VALUES (2, N'quan-ao-nu', N'Quần áo nữ')
INSERT [dbo].[DanhMucSanPham] ([madanhmucsanpham], [metatitle], [tendanhmucsanpham]) VALUES (3, N'quan-ao-the-thao', N'Quần áo thể thao')
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] OFF
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([magiohang], [makhachhang], [ngaydathang], [ngaygiaohang], [tongtien], [tinhtranggiaohang]) VALUES (1, 3, CAST(N'2017-06-04' AS Date), NULL, CAST(150000 AS Decimal(18, 0)), 0)
INSERT [dbo].[GioHang] ([magiohang], [makhachhang], [ngaydathang], [ngaygiaohang], [tongtien], [tinhtranggiaohang]) VALUES (2, 4, CAST(N'2017-06-04' AS Date), NULL, CAST(80000 AS Decimal(18, 0)), 0)
INSERT [dbo].[GioHang] ([magiohang], [makhachhang], [ngaydathang], [ngaygiaohang], [tongtien], [tinhtranggiaohang]) VALUES (3, 5, CAST(N'2017-06-04' AS Date), NULL, CAST(110000 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([makhachhang], [tenkhachhang], [gioitinh], [sodienthoai], [ngaysinh], [email], [taikhoan], [matkhau], [diachi]) VALUES (3, N'Trần Văn Thái', NULL, N'01653156625', NULL, N'tranfthais@gmail.com', NULL, NULL, N'Vạn Phúc Ninh Giang Hải Dương')
INSERT [dbo].[KhachHang] ([makhachhang], [tenkhachhang], [gioitinh], [sodienthoai], [ngaysinh], [email], [taikhoan], [matkhau], [diachi]) VALUES (4, N'Trần Văn Thái', NULL, N'01653156625', NULL, N'tranfthais@gmail.com', NULL, NULL, N'Vạn Phúc Ninh Giang Hải Dương')
INSERT [dbo].[KhachHang] ([makhachhang], [tenkhachhang], [gioitinh], [sodienthoai], [ngaysinh], [email], [taikhoan], [matkhau], [diachi]) VALUES (5, N'Trần Đại Quang', NULL, N'02255844   ', NULL, N'trdaiquan@gmail.com', NULL, NULL, N'Cà Mau')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([maloaisanpham], [tenloaisanpham], [metatitle]) VALUES (1, N'Áo  Sơ Mi', N'ao-so-mi')
INSERT [dbo].[LoaiSanPham] ([maloaisanpham], [tenloaisanpham], [metatitle]) VALUES (2, N'Quần Jean', N'quan-jean')
INSERT [dbo].[LoaiSanPham] ([maloaisanpham], [tenloaisanpham], [metatitle]) VALUES (3, N'Áo trẻ con', N'ao-tre-con')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[PhanHoi] ON 

INSERT [dbo].[PhanHoi] ([ma], [tennguoiphanhoi], [email], [noidung]) VALUES (1, N'Trần Văn Thái', N'tranfthais@gmail.com', N'Sản phẩm chất lượng tốt')
INSERT [dbo].[PhanHoi] ([ma], [tennguoiphanhoi], [email], [noidung]) VALUES (2, N'Trần Đại QUang', N'tran@gmail.com', N'Cảm Ơn Shop')
INSERT [dbo].[PhanHoi] ([ma], [tennguoiphanhoi], [email], [noidung]) VALUES (3, N'Nguyễn Van a', N'angwuyvan@gmail.com', N'Shop có quá ít sản phẩm')
INSERT [dbo].[PhanHoi] ([ma], [tennguoiphanhoi], [email], [noidung]) VALUES (4, N'Lê Quí Đôn', N'lequydon@gmail.com', N'Shop tốt có thể phát triển hơn nữa. Cảm ơn Shop')
INSERT [dbo].[PhanHoi] ([ma], [tennguoiphanhoi], [email], [noidung]) VALUES (5, N'Lê Quí Đôn', N'lequydon@gmail.com', N'Shop tốt có thể phát triển hơn nữa. Cảm ơn Shop')
SET IDENTITY_INSERT [dbo].[PhanHoi] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (11, N'Áo Sơ Mi Nam', CAST(100000 AS Decimal(18, 0)), N'Áo Chất Lượng Cao', 1, 1, N'gallery2.jpg', NULL, 20, N'Việt Nam', NULL, N'Đây là sản phẩm có chất lượng cao dễ mặc 100 % cotton', 1)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (12, N'Áo Học Sinh', CAST(100000 AS Decimal(18, 0)), N'Không có gì để nói', 1, 2, N'gallery1.jpg', NULL, 20, N'Hàn Quốc', NULL, NULL, 0)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (13, N'Áo Mới Cà Mau', CAST(50000 AS Decimal(18, 0)), N'Áo cà mau mặc hơi bị mát', 1, 2, N'gallery4.jpg', NULL, 10, N'Việt Nam', NULL, N'Áo mới đó', 3)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (14, N'Áo khoác', CAST(20000 AS Decimal(18, 0)), N'Áo giá rẻ bất ngờ', 3, 3, N'girl2.jpg', NULL, 100, N'Hàn Quốc', NULL, NULL, 3)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (15, N'Quần Jean', CAST(30000 AS Decimal(18, 0)), N'Quần tốt', 2, 1, N'product10.jpg', NULL, 10, N'Nhật Bản', NULL, NULL, 1)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (16, N'Quần bò', CAST(10000 AS Decimal(18, 0)), N'Quần của hàn quốc', 2, 1, N'product6.jpg', NULL, 10, N'Hàn Quốc', NULL, N'Quần áo chất lượng cao', 3)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (17, N'Áo khoăc ', CAST(100000 AS Decimal(18, 0)), N'Nhất định là số 1', 1, 1, N'gallery2.jpg', NULL, 10, N'Trung Quốc', NULL, N'Mua nhanh còn kịp', 1)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (18, N'Áo Nhật', CAST(200000 AS Decimal(18, 0)), N'Chất lượng thương hiệu đến từ nhật', 1, 2, N'iframe4.png', NULL, 10, N'Hàn Quốc', NULL, NULL, 2)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (19, N'Quần đùi', CAST(100000 AS Decimal(18, 0)), N'Không có gì để nói', 3, 3, N'product2.jpg', NULL, 10, N'Trung Quốc', NULL, N'Quần giảm giá đó', 2)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (20, N'Áo Học Sinh 1', CAST(20000 AS Decimal(18, 0)), N'Số một về thương hiệu', 1, 2, N'gallery3.jpg', NULL, 20, N'Việt Nam', NULL, N'Số một về thương hiệu', 3)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (21, N'Áo Sơ Mi Nữ 1', CAST(50000 AS Decimal(18, 0)), N'Áo quần đẹp', 3, 2, N'1.jpg', NULL, 10, N'Việt Nam', NULL, NULL, 1)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (22, N'Áo khoác 1', CAST(50000 AS Decimal(18, 0)), N'Không có gì', 2, 2, N'product9.jpg', NULL, 10, N'Trung Quốc', NULL, NULL, 1)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (23, N'Áo Học Sinh 200', CAST(50000 AS Decimal(18, 0)), N'Không có gì', 3, 2, N'gallery1.jpg', NULL, 20, N'Nhật Bản', NULL, N'Mua đi bà con', 1)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (24, N'Áo Sơ Mi Nam', CAST(50000 AS Decimal(18, 0)), N'Không có gì', 1, 1, N'gallery2.jpg', NULL, 20, N'Trung Quốc', NULL, N'22', 2)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (25, N'Áo Sơ Mi Nam', CAST(50000 AS Decimal(18, 0)), N'không có mô tả', 1, 1, N'3-mot-ao-so-mi-nam-dep-nhat-cho-mua-he-4881.jpg', NULL, 10, N'Việt Nam', NULL, NULL, 1)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (26, N'Áo Học Sinh', CAST(50000 AS Decimal(18, 0)), N'không có gì', 1, 1, N'ao-so-mi-nam-tay-dai.jpg', NULL, 12, N'Trung Quốc', NULL, NULL, 1)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (27, N'Áo khoác', CAST(100000 AS Decimal(18, 0)), N'kk', 1, 1, N'ao-so-mi-nam-re_1_.jpg', NULL, 12, N'Trung Quốc', NULL, NULL, 1)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (28, N'Áo Thái Lan', CAST(70000 AS Decimal(18, 0)), N'Không có cái gì', 1, 2, N'ao-so-mi-dep (2).jpg', NULL, 100, N'Nhật Bản', NULL, N'Áo mới đó', 3)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (29, N'Áo trẻ con', CAST(30000 AS Decimal(18, 0)), N'Áo mát', 3, 3, N'quan-ao-thoi-trang-tre-em.gif', NULL, 10, N'Việt Nam', NULL, N'Áo đó', 3)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (30, N'Quần Bò', CAST(20000 AS Decimal(18, 0)), N'Quần bò mới về giá giảm bất ngờ', 1, 2, N'LS637-Ao-kieu-co-tron-tay-xoe-1.jpg', NULL, 12, N'Trung Quốc', NULL, N'úng như tên gọi của nó, Private Sale tại TTMS Robins – Royal City Hà Nội không gì khác chính là 2 tuần chớp nhoáng giảm giá đồng loạt của các thương hiệu thời trang và mỹ phẩm nổi tiếng. Với mức giảm giá sâu, lên tới 50%++, cùng rất nhiều các sản phẩm được bán đồng giá, Private Sale tại TTMS Robins – Royal City chắc chắn sẽ là điểm dừng chân của tất cả các tín đồ shopping trong dịp Black Friday năm nay.', 3)
INSERT [dbo].[SanPham] ([masanpham], [tensanpham], [giaban], [mota], [maloaisanpham], [madanhmuc], [linkanh], [ngaytao], [soluong], [xuatxu], [metatitle], [chitiet], [uutien]) VALUES (31, N'Quần chun', CAST(10000 AS Decimal(18, 0)), N'Quần mặc thoáng mát', 1, 1, N'ao-khoac-jean-nam-dep-cho-chang-ca-tinh-sanh-dieu-thu-dong-2015-2016-3.jpg', NULL, 10, N'Việt Nam', NULL, N'Quần áo thoáng mát có thể tái sử dụng nhiều lần mặc mãi không chán', 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([ma], [ten], [mota], [linkanh]) VALUES (1, N'Stylist Mạch Huy và 2 cách phối đồ hồng - vàng đẳng cấp', N'    Quần jeans, áo thun luôn là những món đồ có mặt trong tủ quần áo của tất cả các chàng trai. Tuy nhiên mặc chúng sao cho “chất” thì lại là chuyện khác. Với dạng trang phục này, Mạch Huy ưu tiên chọn những xu hướng thịnh hành như ripped jeans, áo thun in graphic hình học, giày sneakers khoẻ khoắn với điểm nhấn là chiếc áo sơmi cột ngang eo kiểu thập niên 90 để giúp các chàng trai bụi băm, phong cách hơn.
Trong set đồ này, phụ kiện là vũ khí không thể thiếu để nâng tầm phong cách. Huy chọn nón fedora, vòng tay nạm đính studded và chú dế Galaxy J7 Prime hồng vàng thời thượng để khác biệt với số đông còn lại.
Suit là trang phục không thể thiếu trong mùa lễ hội cuối năm, giúp chủ nhân thể hiện được gu ăn mặc lịch lãm. Nhưng không phải loại suit nào cũng giúp chủ nhân tỏa sáng và nổi bật. Theo Huy, suit dạng skinny fit sẽ là xu hướng thịnh hành hiện tại và trong cả thời gian tới. Nên chỉ cần thêm một chút ánh kim trên áo vest là người mặc đã có thể “ăn điểm”.', N'LS637-Ao-kieu-co-tron-tay-xoe-1.jpg')
INSERT [dbo].[TinTuc] ([ma], [ten], [mota], [linkanh]) VALUES (2, N'Điểm danh những món đồ thời trang được mua sắm nhiều nhất dịp cận Tết', N'Tết đã cận kề, mua sắm gì để diện trong những ngày đầu năm là điều mà các bạn trẻ rất quan tâm.

Đặc biệt đây là thời điểm nếu biết nắm bắt các thông tin ưu đãi giảm giá hấp dẫn từ các thương hiệu thời trang nổi tiếng, chắc chắn bạn sẽ mang về cho mình những món thời trang đang được ưa chuộng với mức giá ưu đãi nhất.

Thời gian cận Tết là khoảng thời gian vô cùng bận rộn, vì vậy chúng tôi sẽ điểm danh các món đồ đang được nhiều tín đồ thời trang yêu thích để giúp bạn tiết kiệm thời gian cũng như chuẩn bị cho việc mua sắm chu đáo hơn cho những ngày Xuân sắp đến. Vậy những item thời trang nào đang được giới trẻ ưa chuộng nhất? Cùng tham khảo nhé!
Không phải bàn cãi nhiều khi giày Superga là lựa chọn của rất nhiều bạn trẻ bởi tính tiện dụng, dễ dàng phối hợp với bất cứ trang phục nào từ váy ngắn, quần jean, quần short… Không ồn ào nhưng giày Superga hiện đang là thương hiệu rất được lòng giới trẻ', N'LS649-ao-so-mi-nu-co-tron-3.jpg')
INSERT [dbo].[TinTuc] ([ma], [ten], [mota], [linkanh]) VALUES (3, N'Học lỏm Quỳnh Kool cách phối với quần jean để luôn nổi bật', N'  Đừng nghĩ quần jean là đơn điệu và lỗi mốt, nếu biết cách lựa chọn quần phù hợp với dáng người và phối đồ tinh tế, bạn sẽ luôn nổi bần bật đó. Học lỏm bí quyết của cô nàng Quỳnh Kool xem “công thức” làm nên sự quyến rũ của cô gái ấy là như thế nào nhé?

Hot girl “vợ người ta” trước nay luôn được biết đến phong cách “kẹo ngọt” pha trộn với sự quyến rũ. Mỗi lần xuất hiện cô luôn khiến người đối diện "đứng ngồi không yên” bởi sự hấp dẫn toát ra từ thần thái của mình. Tuy nhiên sự lập lại nhiều lần đôi khi khiến người hâm mộ nghĩ rằng cô đang đóng khung với phong cách này. Nhưng mới đây, khi mua sắm tại Tràng Tiền Plaza cô đã gây bất ngờ khi mix đồ với quần Jean và Waistcoat đen dường như hoàn toàn rũ bỏ phong cách thường thấy mà thay đó là sự năng động mà vẫn đầy cuốn hút.
Để tạo sự độc đáo trong trang phục của mình, Quỳnh Kool chọn quần Jean rách sáng màu kết hợp cùng Áo khoác da dáng waistcoat, đây là là một itemt được hầu hết các bạn gái ưu thích bởi sự tiện lợi của nó, đặc biệt với những cô nàng yêu thích sự năng động. Ngoài ra để tạo nên sự hài hòa trong việc phối màu sắc Quỳnh Kool đã kết hợp cùng áo thun trắng.', N'LS637-Ao-kieu-co-tron-tay-xoe-3.jpg')
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
INSERT [dbo].[User] ([taikhoan], [matkhau]) VALUES (N'admin', N'admin')
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_GioHang] FOREIGN KEY([magiohang])
REFERENCES [dbo].[GioHang] ([magiohang])
GO

ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_GioHang]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_SanPham] FOREIGN KEY([masanpham])
REFERENCES [dbo].[SanPham] ([masanpham])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_SanPham]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang] FOREIGN KEY([makhachhang])
REFERENCES [dbo].[KhachHang] ([makhachhang])
GO

ALTER TABLE GioHang 
DROP CONSTRAINT [FK_GioHang_KhachHang];
ALTER TABLE ChiTietGioHang 
DROP CONSTRAINT [FK_ChiTietGioHang_GioHang];

ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMucSanPham] FOREIGN KEY([madanhmuc])
REFERENCES [dbo].[DanhMucSanPham] ([madanhmucsanpham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMucSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([maloaisanpham])
REFERENCES [dbo].[LoaiSanPham] ([maloaisanpham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
/****** Object:  StoredProcedure [dbo].[sp_timkiemsanpham]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_timkiemsanpham]
@timkiem nvarchar(100),
@danhmuc int
as
if(@danhmuc=0)
begin
select *
 from SanPham
  where tensanpham like '%'+@timkiem+'%' 
 end
 else
  begin
select *
from SanPham
where tensanpham like '%'+@timkiem+'%' and madanhmuc=@danhmuc
end
GO
USE [master]
GO
ALTER DATABASE [Demo] SET  READ_WRITE 
GO
