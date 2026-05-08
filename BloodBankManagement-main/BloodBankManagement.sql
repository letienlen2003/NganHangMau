USE [master]
GO
/****** Object:  Database [BloodBankManagement]    Script Date: 11/9/2024 3:53:21 PM ******/
CREATE DATABASE [BloodBankManagement]
 
GO
ALTER DATABASE [BloodBankManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BloodBankManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BloodBankManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BloodBankManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BloodBankManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BloodBankManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BloodBankManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [BloodBankManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BloodBankManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BloodBankManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BloodBankManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BloodBankManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BloodBankManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BloodBankManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BloodBankManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BloodBankManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BloodBankManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BloodBankManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BloodBankManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BloodBankManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BloodBankManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BloodBankManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BloodBankManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BloodBankManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BloodBankManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BloodBankManagement] SET  MULTI_USER 
GO
ALTER DATABASE [BloodBankManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BloodBankManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BloodBankManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BloodBankManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BloodBankManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BloodBankManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BloodBankManagement] SET QUERY_STORE = ON
GO
ALTER DATABASE [BloodBankManagement] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200)
GO
USE [BloodBankManagement]
GO
/****** Object:  Table [dbo].[BenhNhanTbl]    Script Date: 11/9/2024 3:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenhNhanTbl](
	[MaBenhNhan] [int] NOT NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](10) NULL,
	[NhomMau] [nvarchar](5) NULL,
	[Diachi] [nvarchar](50) NULL,
	[BenhVien] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBenhNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenGiaoMauTbl]    Script Date: 11/9/2024 3:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenGiaoMauTbl](
	[MaChuyenGiao] [int] NOT NULL,
	[HoVaTenNguoiNhan] [nvarchar](50) NULL,
	[NhomMau] [nvarchar](5) NULL,
 CONSTRAINT [PK_ChuyenGiaoMauTbl] PRIMARY KEY CLUSTERED 
(
	[MaChuyenGiao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauTbl]    Script Date: 11/9/2024 3:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauTbl](
	[NhomMau] [nvarchar](5) NOT NULL,
	[SoLuongMau] [int] NULL,
 CONSTRAINT [PK_MauTbl] PRIMARY KEY CLUSTERED 
(
	[NhomMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiHienTbl]    Script Date: 11/9/2024 3:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiHienTbl](
	[MaNguoiHien] [int] NOT NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NhomMau] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiHien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienTbl]    Script Date: 11/9/2024 3:53:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienTbl](
	[MaNhanVien] [int] NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (111, N'Nguyễn Văn An', 60, N'Nam', N'0345678913', N'AB+', N'Tp.Hồ Chí Minh', N'Bệnh viện Thống Nhất')
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (123, N'Hà Anh Tuấn', 31, N'Nam', N'0399734964', N'B+', N'Đà Nẵng', N'Bệnh viện Việt Đức')
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (211, N'Trương Thị Thu', 35, N'Nữ', N'0987654321', N'A-', N'Quảng Bình', N'Bệnh viện Quảng Bình')
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (213, N'Lê Văn Cường', 42, N'Nam', N'0456789012', N'B-', N'Quảng Nam', N'Bệnh viện Quảng Nam')
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (214, N'Ngô Thị Hồng', 28, N'Nữ', N'0789456123', N'AB-', N'Đắk Lắk', N'Bệnh viện Đắk Lắk')
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (215, N'Trần Văn Đông', 27, N'Nam', N'0369852147', N'O-', N'Lào Cai', N'Bệnh viện Lào Cai')
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (234, N'Nguyễn Thị Lài', 20, N'Nữ', N'0389123452', N'B-', N'Lâm Đồng', N'Bệnh viện Lâm Đồng')
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (321, N'Huỳnh Lan Khuê', 34, N'Nữ', N'0944345785', N'A+', N'Thanh Hóa', N'Bệnh viện')
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (345, N'Nguyễn Minh Khang', 45, N'Nam', N'0755346773', N'AB+', N'Bình Định', N'Bệnh viện Phú Cát')
INSERT [dbo].[BenhNhanTbl] ([MaBenhNhan], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [NhomMau], [Diachi], [BenhVien]) VALUES (412, N'Banh Ngoc Huynh', 30, N'Nam', N'0977813121', N'O+', N'TP.HCM', N'Bệnh Viện SG')
GO
INSERT [dbo].[ChuyenGiaoMauTbl] ([MaChuyenGiao], [HoVaTenNguoiNhan], [NhomMau]) VALUES (123, N'Nguyễn Văn Anh', N'AB+')
INSERT [dbo].[ChuyenGiaoMauTbl] ([MaChuyenGiao], [HoVaTenNguoiNhan], [NhomMau]) VALUES (124, N'Trần Thị Bình', N'O-')
INSERT [dbo].[ChuyenGiaoMauTbl] ([MaChuyenGiao], [HoVaTenNguoiNhan], [NhomMau]) VALUES (125, N'Lê Hồng Cường', N'A+')
INSERT [dbo].[ChuyenGiaoMauTbl] ([MaChuyenGiao], [HoVaTenNguoiNhan], [NhomMau]) VALUES (126, N'Phạm Thanh Diệp', N'B-')
INSERT [dbo].[ChuyenGiaoMauTbl] ([MaChuyenGiao], [HoVaTenNguoiNhan], [NhomMau]) VALUES (127, N'Võ Thị Oanh', N'AB-')
GO
INSERT [dbo].[MauTbl] ([NhomMau], [SoLuongMau]) VALUES (N'A-', 0)
INSERT [dbo].[MauTbl] ([NhomMau], [SoLuongMau]) VALUES (N'A+', 10)
INSERT [dbo].[MauTbl] ([NhomMau], [SoLuongMau]) VALUES (N'AB-', 2)
INSERT [dbo].[MauTbl] ([NhomMau], [SoLuongMau]) VALUES (N'AB+', 10)
INSERT [dbo].[MauTbl] ([NhomMau], [SoLuongMau]) VALUES (N'B-', 2)
INSERT [dbo].[MauTbl] ([NhomMau], [SoLuongMau]) VALUES (N'B+', 5)
INSERT [dbo].[MauTbl] ([NhomMau], [SoLuongMau]) VALUES (N'O-', 2)
INSERT [dbo].[MauTbl] ([NhomMau], [SoLuongMau]) VALUES (N'O+', 10)
GO
INSERT [dbo].[NguoiHienTbl] ([MaNguoiHien], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [DiaChi], [NhomMau]) VALUES (1, N'Nguyễn Văn Tú', 30, N'Nam', N'0345678910', N'Tp.Hồ Chí Minh', N'B+')
INSERT [dbo].[NguoiHienTbl] ([MaNguoiHien], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [DiaChi], [NhomMau]) VALUES (2, N'Hà Anh Thư', 28, N'Nữ', N'0399734961', N'Đà Nẵng', N'AB+')
INSERT [dbo].[NguoiHienTbl] ([MaNguoiHien], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [DiaChi], [NhomMau]) VALUES (3, N'Huỳnh Thái Sang', 29, N'Nam', N'0944345789', N'Thanh Hóa', N'A+')
INSERT [dbo].[NguoiHienTbl] ([MaNguoiHien], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [DiaChi], [NhomMau]) VALUES (4, N'Nguyễn Mai Liên', 29, N'Nữ', N'0755346778', N'Bình Định', N'AB+')
INSERT [dbo].[NguoiHienTbl] ([MaNguoiHien], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [DiaChi], [NhomMau]) VALUES (5, N'Nguyễn Thị Mây', 21, N'Nữ', N'0389123456', N'Lâm Đồng', N'O+')
INSERT [dbo].[NguoiHienTbl] ([MaNguoiHien], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [DiaChi], [NhomMau]) VALUES (6, N'Hàn Nhật Tuấn', 25, N'Nam', N'0387456123', N'Nghệ An', N'B-')
INSERT [dbo].[NguoiHienTbl] ([MaNguoiHien], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [DiaChi], [NhomMau]) VALUES (7, N'Nguyễn Văn Trỗi', 32, N'Nam', N'0755246773', N'Tp.Hồ Chí Minh', N'O+')
INSERT [dbo].[NguoiHienTbl] ([MaNguoiHien], [HoVaTen], [Tuoi], [GioiTinh], [SoDienThoai], [DiaChi], [NhomMau]) VALUES (8, N'Trần Văn Ơn', 41, N'Nam', N'0398734964', N'Tp.Hồ Chí Minh', N'B-')
GO
INSERT [dbo].[NhanVienTbl] ([MaNhanVien], [TenDangNhap], [MatKhau], [Role]) VALUES (1, N'admin', N'123456', N'Admin')
INSERT [dbo].[NhanVienTbl] ([MaNhanVien], [TenDangNhap], [MatKhau], [Role]) VALUES (2, N'bngoc', N'123456', N'User')
INSERT [dbo].[NhanVienTbl] ([MaNhanVien], [TenDangNhap], [MatKhau], [Role]) VALUES (3, N'tienlen', N'123456', N'User')
INSERT [dbo].[NhanVienTbl] ([MaNhanVien], [TenDangNhap], [MatKhau], [Role]) VALUES (4, N'myle', N'123456', N'User')
INSERT [dbo].[NhanVienTbl] ([MaNhanVien], [TenDangNhap], [MatKhau], [Role]) VALUES (5, N'bngoc3', N'123456', N'User')
GO
ALTER TABLE [dbo].[BenhNhanTbl]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhanTbl_MauTbl] FOREIGN KEY([NhomMau])
REFERENCES [dbo].[MauTbl] ([NhomMau])
GO
ALTER TABLE [dbo].[BenhNhanTbl] CHECK CONSTRAINT [FK_BenhNhanTbl_MauTbl]
GO
ALTER TABLE [dbo].[NguoiHienTbl]  WITH CHECK ADD  CONSTRAINT [FK_NguoiHienTbl_MauTbl] FOREIGN KEY([NhomMau])
REFERENCES [dbo].[MauTbl] ([NhomMau])
GO
ALTER TABLE [dbo].[NguoiHienTbl] CHECK CONSTRAINT [FK_NguoiHienTbl_MauTbl]
GO
USE [master]
GO
ALTER DATABASE [BloodBankManagement] SET  READ_WRITE 
GO
