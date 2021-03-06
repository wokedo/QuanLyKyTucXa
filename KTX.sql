create database QL_KTX
USE [QL_KTX]
GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 5/21/2021 9:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaHoaDon] [nchar](10) NOT NULL,
	[ThangGhiSo] [date] NULL,
	[CSDienCu] [int] NULL,
	[CSDienMoi] [int] NULL,
	[CSNuocCu] [int] NULL,
	[CSNuocMoi] [int] NULL,
	[DonGiaDien] [money] NULL,
	[DonGiaNuoc] [money] NULL,
 CONSTRAINT [PK_CTHoaDon_1] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANGNHAP]    Script Date: 5/21/2021 9:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DANGNHAP](
	[TenDN] [varchar](100) NOT NULL,
	[MatKhau] [varchar](100) NULL,
	[MaNhanVien] [nchar](10) NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_DANGNHAP] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/21/2021 9:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [nchar](10) NOT NULL,
	[MaNhanVien] [nchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[TongTien] [money] NULL,
	[SoPhong] [nchar](10) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 5/21/2021 9:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHopDong] [nchar](10) NOT NULL,
	[TenHopDong] [nvarchar](50) NULL,
	[NgayLap] [date] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[MaSinhVien] [nchar](10) NULL,
	[SoPhong] [nchar](10) NULL,
	[MaNhanVien] [nchar](10) NULL,
 CONSTRAINT [PK_HopDong] PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 5/21/2021 9:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoai] [nchar](10) NOT NULL,
	[TenLoai] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/21/2021 9:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nchar](3) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 5/21/2021 9:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[SoPhong] [nchar](10) NOT NULL,
	[SoLuongSinhVien] [int] NULL,
	[SoLuongToiDa] [int] NULL,
	[MoTaKhac] [nvarchar](100) NULL,
	[MaNhanVien] [nchar](10) NULL,
	[MaLoai] [nchar](10) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[SoPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 5/21/2021 9:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSinhVien] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [int] NULL,
	[CMND] [int] NULL,
	[QueQuan] [nvarchar](100) NULL,
	[Hinh] [varchar](max) NULL,
	[Lop] [nchar](10) NULL,
	[SoPhong] [nchar](10) NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DANGNHAP] ([TenDN], [MatKhau], [MaNhanVien], [TinhTrang]) VALUES (N'admin', N'123', N'1         ', 1)
INSERT [dbo].[DANGNHAP] ([TenDN], [MatKhau], [MaNhanVien], [TinhTrang]) VALUES (N'admin1', N'123456', N'2         ', 1)
INSERT [dbo].[DANGNHAP] ([TenDN], [MatKhau], [MaNhanVien], [TinhTrang]) VALUES (N'admin2', N'123123', N'3         ', 1)
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD01      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2020-01-31' AS Date), CAST(N'2019-12-29' AS Date), CAST(N'2021-04-14' AS Date), N'SV01      ', N'102       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD02      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2015-11-11' AS Date), CAST(N'2015-08-12' AS Date), CAST(N'2021-09-29' AS Date), N'SV02      ', N'112       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD03      ', N'Đơn hợp đồng trả phòng vào KTX', CAST(N'2016-07-27' AS Date), CAST(N'2017-07-06' AS Date), CAST(N'2020-05-09' AS Date), N'SV03      ', N'119       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD04      ', N'Đơn hợp đồng gia hạn vào KTX', CAST(N'2017-04-23' AS Date), CAST(N'2020-04-27' AS Date), CAST(N'2020-08-05' AS Date), N'SV04      ', N'119       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD05      ', N'Đơn hợp đồng gia hạn vào KTX', CAST(N'2016-12-06' AS Date), CAST(N'2015-08-06' AS Date), CAST(N'2021-05-29' AS Date), N'SV05      ', N'116       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD06      ', N'Đơn hợp đồng trả phòng vào KTX', CAST(N'2016-11-27' AS Date), CAST(N'2017-12-04' AS Date), CAST(N'2021-04-05' AS Date), N'SV06      ', N'119       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD07      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2016-10-01' AS Date), CAST(N'2019-10-29' AS Date), CAST(N'2021-01-13' AS Date), N'SV07      ', N'111       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD08      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2018-04-17' AS Date), CAST(N'2020-11-26' AS Date), CAST(N'2021-03-07' AS Date), N'SV08      ', N'112       ', N'3         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD09      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2019-01-24' AS Date), CAST(N'2017-08-14' AS Date), CAST(N'2020-07-29' AS Date), N'SV09      ', N'112       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD10      ', N'Đơn hợp đồng gia hạn vào KTX', CAST(N'2020-10-04' AS Date), CAST(N'2019-10-11' AS Date), CAST(N'2021-03-16' AS Date), N'SV10      ', N'102       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD11      ', N'Đơn hợp đồng trả phòng vào KTX', CAST(N'2020-11-29' AS Date), CAST(N'2017-01-15' AS Date), CAST(N'2020-02-19' AS Date), N'SV11      ', N'106       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD12      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2016-05-03' AS Date), CAST(N'2018-12-13' AS Date), CAST(N'2021-09-03' AS Date), N'SV12      ', N'106       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD13      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2019-10-15' AS Date), CAST(N'2019-09-04' AS Date), CAST(N'2020-06-05' AS Date), N'SV13      ', N'111       ', N'3         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD14      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2018-01-01' AS Date), CAST(N'2015-05-03' AS Date), CAST(N'2020-03-06' AS Date), N'SV14      ', N'103       ', N'3         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD15      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2020-01-01' AS Date), CAST(N'2018-10-20' AS Date), CAST(N'2020-02-11' AS Date), N'SV15      ', N'102       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD16      ', N'Đơn hợp đồng gia hạn vào KTX', CAST(N'2020-12-02' AS Date), CAST(N'2018-06-05' AS Date), CAST(N'2020-04-30' AS Date), N'SV16      ', N'104       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD17      ', N'Đơn hợp đồng trả phòng vào KTX', CAST(N'2015-10-29' AS Date), CAST(N'2020-08-16' AS Date), CAST(N'2021-06-01' AS Date), N'SV17      ', N'108       ', N'3         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD18      ', N'Đơn hợp đồng gia hạn vào KTX', CAST(N'2017-02-16' AS Date), CAST(N'2016-05-22' AS Date), CAST(N'2021-07-19' AS Date), N'SV18      ', N'110       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD19      ', N'Đơn hợp đồng trả phòng vào KTX', CAST(N'2020-04-26' AS Date), CAST(N'2020-07-31' AS Date), CAST(N'2020-06-26' AS Date), N'SV19      ', N'111       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD20      ', N'Đơn hợp đồng gia hạn vào KTX', CAST(N'2015-08-16' AS Date), CAST(N'2016-07-18' AS Date), CAST(N'2021-05-28' AS Date), N'SV20      ', N'114       ', N'3         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD21      ', N'Đơn hợp đồng gia hạn vào KTX', CAST(N'2016-09-17' AS Date), CAST(N'2020-02-05' AS Date), CAST(N'2020-04-26' AS Date), N'SV21      ', N'113       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD22      ', N'Đơn hợp đồng trả phòng vào KTX', CAST(N'2015-07-27' AS Date), CAST(N'2018-04-26' AS Date), CAST(N'2020-08-29' AS Date), N'SV22      ', N'114       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD23      ', N'Đơn hợp đồng trả phòng vào KTX', CAST(N'2015-10-17' AS Date), CAST(N'2017-03-12' AS Date), CAST(N'2021-10-11' AS Date), N'SV23      ', N'114       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD24      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2015-09-28' AS Date), CAST(N'2018-03-15' AS Date), CAST(N'2020-03-16' AS Date), N'SV24      ', N'107       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD25      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2016-05-16' AS Date), CAST(N'2016-03-06' AS Date), CAST(N'2020-09-07' AS Date), N'SV25      ', N'105       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD26      ', N'Đơn hợp đồng trả phòng vào KTX', CAST(N'2017-10-31' AS Date), CAST(N'2020-06-14' AS Date), CAST(N'2021-07-25' AS Date), N'SV26      ', N'114       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD27      ', N'Đơn hợp đồng gia hạn vào KTX', CAST(N'2020-11-28' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2020-11-08' AS Date), N'SV27      ', N'112       ', N'2         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD28      ', N'Đơn hợp đồng đăng ký vào KTX', CAST(N'2015-04-12' AS Date), CAST(N'2019-06-26' AS Date), CAST(N'2021-08-25' AS Date), N'SV28      ', N'112       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD29      ', N'Đơn hợp đồng trả phòng vào KTX', CAST(N'2020-09-07' AS Date), CAST(N'2020-07-24' AS Date), CAST(N'2021-11-11' AS Date), N'SV29      ', N'114       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD30      ', N'Đơn hợp đồng gia hạn vào KTX', CAST(N'2020-09-15' AS Date), CAST(N'2018-05-31' AS Date), CAST(N'2021-05-28' AS Date), N'SV30      ', N'116       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD31      ', N'Đơn Hợp Đồng Đăng ký', NULL, NULL, NULL, N'SV31      ', N'102       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD32      ', N'Đăng kí vào kí túc xá', CAST(N'2021-05-21' AS Date), CAST(N'2021-05-21' AS Date), CAST(N'2021-05-21' AS Date), N'SV37      ', N'102       ', N'1         ')
INSERT [dbo].[HopDong] ([MaHopDong], [TenHopDong], [NgayLap], [NgayBatDau], [NgayKetThuc], [MaSinhVien], [SoPhong], [MaNhanVien]) VALUES (N'HD33      ', N'Đăng kí vào kí túc xá', CAST(N'2021-02-21' AS Date), CAST(N'2021-05-21' AS Date), CAST(N'2022-05-21' AS Date), N'SV39      ', N'115       ', N'1         ')
INSERT [dbo].[LoaiPhong] ([MaLoai], [TenLoai]) VALUES (N'1         ', N'Nam       ')
INSERT [dbo].[LoaiPhong] ([MaLoai], [TenLoai]) VALUES (N'2         ', N'Nữ        ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [ChucVu]) VALUES (N'1         ', N'Phan Thị Ngọc Dung', CAST(N'1998-04-14' AS Date), N'Nam', N'TP.HCM', N'Nhân Viên')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [ChucVu]) VALUES (N'2         ', N'Lý Hoàng Phi Dũng', CAST(N'2002-12-12' AS Date), N'Nữ ', N'TP.HCM', N'Nhân Viên')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [ChucVu]) VALUES (N'3         ', N'Tạ Trường Giang', CAST(N'2000-03-01' AS Date), N'Nam', N'TP.HCM', N'Nhân Viên')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'101       ', 0, 8, N'Phòng bị thiếu 1 giường', N'3         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'102       ', 5, 8, N'Phòng bị thiếu 1 giường', N'2         ', N'2         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'103       ', 1, 8, NULL, N'1         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'104       ', 1, 8, N'Phòng bị thiếu 1 giường', N'1         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'105       ', 1, 8, NULL, N'1         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'106       ', 2, 8, NULL, N'1         ', N'2         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'107       ', 1, 8, NULL, N'2         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'108       ', 1, 8, NULL, N'1         ', N'2         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'109       ', 0, 8, NULL, N'2         ', N'2         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'110       ', 1, 8, N'Phòng bị thiếu 1 giường', N'1         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'111       ', 3, 8, NULL, N'1         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'112       ', 5, 8, NULL, N'1         ', N'2         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'113       ', 1, 8, N'Phòng bị thiếu 1 giường', N'1         ', N'2         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'114       ', 5, 8, NULL, N'2         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'115       ', 1, 8, NULL, N'1         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'116       ', 2, 8, NULL, N'3         ', N'1         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'117       ', 0, 8, NULL, N'3         ', N'2         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'118       ', 0, 8, N'Phòng bị thiếu 1 giường', N'1         ', N'2         ')
INSERT [dbo].[Phong] ([SoPhong], [SoLuongSinhVien], [SoLuongToiDa], [MoTaKhac], [MaNhanVien], [MaLoai]) VALUES (N'119       ', 3, 8, N'Phòng bị hư quạt', N'1         ', N'2         ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV01      ', N'Phan Thị Ngọc Dung', N'Nữ ', CAST(N'2002-02-23' AS Date), 154018103, 205759913, N'Quận 2', N'dung.jpg', N'11DHTP2   ', N'102       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV02      ', N'Lý Hoàng Phi Dũng', N'Nữ ', CAST(N'1998-02-22' AS Date), 184258192, 187000435, N'Ninh Bình', N'dung.jpg', N'11DHTP2   ', N'112       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV03      ', N'Nguyễn Ngọc Thủy', N'Nữ ', CAST(N'1999-07-30' AS Date), 434265090, 292785258, N'Ninh Bình', N'dung1', N'11DHTP4   ', N'119       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV032     ', N'Phan Thị Ngọc Như', N'Nữ', CAST(N'2002-02-23' AS Date), 154018103, 205759913, N'Quận 2', N'dung2.jpg', N'11DHTP2   ', NULL)
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV034     ', N'Phan Thanh Tâm', N'Nam', CAST(N'1997-02-23' AS Date), 154018103, 205759913, N'Quận 5', N'tym.jpg', N'11DHTP2   ', NULL)
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV04      ', N'Lê Văn An', N'Nữ ', CAST(N'2000-11-03' AS Date), 768977198, 626683243, N'Bình Hưng Hòa', N'dung3.jpg', N'10DHDT1   ', N'119       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV05      ', N'Tạ Trường Giang', N'Nam', CAST(N'2002-09-28' AS Date), 120507028, 350242620, N'Bình Chánh', N'giang.jpg', N'11DHTP4   ', N'116       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV06      ', N'Miêu Nghị', N'Nữ ', CAST(N'2001-02-02' AS Date), 773215761, 167579207, N'Bình Tân', N'dung4.jpg', N'11DHTP3   ', N'119       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV07      ', N'Quách Tĩnh', N'Nam', CAST(N'2002-09-28' AS Date), 828175984, 770845179, N'Bình Tân', N'nhau.jpg', N'10DHDT3   ', N'111       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV08      ', N'Nguyễn Trần Hồng Linh', N'Nữ ', CAST(N'1998-03-30' AS Date), 468332120, 870510292, N'Ninh Thuận', N'dung5.jpg', N'09DHTH1   ', N'112       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV09      ', N'Nguyễn Thị Trung', N'Nữ ', CAST(N'2000-02-16' AS Date), 277657462, 277630240, N'Tân Bình', NULL, N'08DHQT1   ', N'112       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV10      ', N'Trần Văn Qúy', N'Nữ ', CAST(N'2001-06-24' AS Date), 427444295, 271515862, N'Quận 2', NULL, N'10DHDT1   ', N'102       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV11      ', N'Hồ Thị Xuân', N'Nữ ', CAST(N'1998-07-07' AS Date), 237482162, 140108484, N'Bình Chánh', NULL, N'11DHTP4   ', N'106       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV12      ', N'Lê Thanh Tông', N'Nữ ', CAST(N'2002-02-06' AS Date), 702750699, 654119538, N'Tân Phú', NULL, N'10DHDT1   ', N'106       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV13      ', N'Đoàn Thị Kiếm', N'Nam', CAST(N'2001-12-06' AS Date), 785719596, 918115420, N'Tân Phú', NULL, N'08DHQT1   ', N'111       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV14      ', N'Hồng Thất Công', N'Nam', CAST(N'2002-09-22' AS Date), 996833879, 230571570, N'Tân Bình', NULL, N'09DHTH4   ', N'103       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV15      ', N'Phương Hành', N'Nữ ', CAST(N'1998-05-15' AS Date), 295067387, 577872682, N'Quận 6', NULL, N'08DHQT1   ', N'102       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV16      ', N'Lý Bạch', N'Nữ ', CAST(N'2001-06-24' AS Date), 740278578, 901629289, N'Quận 2', NULL, N'09DHTH4   ', N'104       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV17      ', N'Nghi Lâm', N'Nam', CAST(N'2000-06-30' AS Date), 470211526, 915073974, N'Ninh Bình', NULL, N'11DHTP3   ', N'108       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV18      ', N'Lệnh Hồ Xuân', N'Nam', CAST(N'2001-06-07' AS Date), 928937879, 661756596, N'Bình Chánh', NULL, N'10DHDT1   ', N'110       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV19      ', N'Trần Văn Tèo', N'Nam', CAST(N'2002-01-30' AS Date), 114531773, 924057279, N'Tân Bình', NULL, N'10DHDT1   ', N'111       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV20      ', N'Hoàng Dược Sư', N'Nam', CAST(N'2001-02-09' AS Date), 356301477, 978837817, N'Bình Chánh', NULL, N'09DHTH2   ', N'114       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV21      ', N'Hoàng Dung', N'Nữ ', CAST(N'2001-02-09' AS Date), 537379529, 786513092, N'Tân Bình', NULL, N'10DHDT4   ', N'113       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV22      ', N'Lý Thị Phụng', N'Nam', CAST(N'2000-09-14' AS Date), 879545152, 175311292, N'Bình Tân', NULL, N'09DHTH2   ', N'114       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV23      ', N'Hồ Quý Ly', N'Nam', CAST(N'2001-06-07' AS Date), 642294511, 518057158, N'Quận 6', NULL, N'09DHTH1   ', N'114       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV24      ', N'Lý Đại Hành', N'Nam', CAST(N'2000-01-17' AS Date), 394065090, 111754610, N'Tân Bình', NULL, N'09DHTH3   ', N'107       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV25      ', N'Tiêu Phong', N'Nam', CAST(N'2002-09-28' AS Date), 348598979, 650503275, N'Quận 6', NULL, N'09DHTH1   ', N'105       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV26      ', N'Nguyễn Văn Tùng', N'Nam', CAST(N'1998-02-15' AS Date), 663530982, 724971233, N'Bình Hưng Hòa', NULL, N'09DHTH2   ', N'114       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV27      ', N'Dương Quá', N'Nữ ', CAST(N'2002-09-28' AS Date), 163195182, 252726962, N'Tân Phú', NULL, N'10DHDT3   ', N'112       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV28      ', N'Cô Long', N'Nữ ', CAST(N'2001-12-06' AS Date), 132090731, 171381987, N'Quận 3', NULL, N'09DHTH4   ', N'112       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV29      ', N'Bạch Thị Kim Diệu', N'Nam', CAST(N'1999-07-30' AS Date), 758867308, 387056781, N'Tân Bình', NULL, N'10DHDT3   ', N'114       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV30      ', N'Quang Trung', N'Nam', CAST(N'2002-12-04' AS Date), 703035301, 420960730, N'Bình Tân', NULL, N'10DHDT4   ', N'116       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV31      ', N'Bành Thị Bé', N'Nữ', CAST(N'2002-02-14' AS Date), 2123123, 12312312, N'Tân Sơn', NULL, N'07DHTH1   ', N'102       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV35      ', N'An', N'Nam', CAST(N'2002-02-23' AS Date), 244525, 23552, N'a', N'tym.jpg', N'09DHTH1   ', NULL)
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV36      ', N'Lam', N'Nữ', CAST(N'2004-07-15' AS Date), 23975, 437756, N'Bình Định', N'dung.jpg', N'09DHTH1   ', NULL)
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV37      ', N'Phạm Thị Vi', N'Nữ', CAST(N'2002-02-23' AS Date), 35326, 4527657, N'Quảng Ngãi', N'nhau.jpg', N'09DHTH1   ', N'102       ')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV38      ', N'Toàn', N'Nam', CAST(N'2002-07-18' AS Date), 896456, 8675762, N'Bình Định', N'dung.jpg', N'09DHTH1   ', NULL)
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [GioiTinh], [NgaySinh], [SDT], [CMND], [QueQuan], [Hinh], [Lop], [SoPhong]) VALUES (N'SV39      ', N'An', N'Nam', CAST(N'2002-02-23' AS Date), 2354363, 23522463, N'd', N'dung.jpg', N'09DHTH1   ', N'115       ')
ALTER TABLE [dbo].[DANGNHAP]  WITH CHECK ADD  CONSTRAINT [FK_DANGNHAP_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DANGNHAP] CHECK CONSTRAINT [FK_DANGNHAP_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_CTHoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[CTHoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_CTHoaDon]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Phong] FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Phong]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_NhanVien]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_Phong] FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_Phong]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_SinhVien] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SinhVien] ([MaSinhVien])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_SinhVien]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiPhong] ([MaLoai])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_NhanVien]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Phong] FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Phong]
GO
