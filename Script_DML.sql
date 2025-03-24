/* Tao database */
CREATE DATABASE [QLSV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSV', FILENAME = N'D:\SQL FILES\QLSV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSV_log', FILENAME = N'D:\SQL FILES\QLSV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF

/* Cac bang trong database */

/* Bang BoMon */
CREATE TABLE [dbo].[BoMon](
	[maBM] [varchar](12) NOT NULL,
	[tenBM] [nvarchar](50) NULL,
	[maKhoa] [varchar](12) NOT NULL,
 CONSTRAINT [PK_BoMon] PRIMARY KEY CLUSTERED 
(
	[maBM] ASC
)
)
/* Thiet lap cac khoa (pk, fk) hoac ck */
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [FK_BoMon_fkey1] FOREIGN KEY([maKhoa])
REFERENCES [dbo].[Khoa] ([maKhoa])
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [FK_BoMon_fkey1]

/* Bang SinhVien */
CREATE TABLE [dbo].[SinhVien](
	[masv] [varchar](13) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)
)
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [CK_SinhVien] CHECK  (([NgaySinh]<='2025-03-25'))
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [CK_SinhVien]

/* bang Lop */
CREATE TABLE [dbo].[Lop](
	[maLop] [varchar](12) NOT NULL,
	[tenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)
)

/* Bang GVCN */
CREATE TABLE [dbo].[GVCN](
	[maLop] [varchar](12) NOT NULL,
	[magv] [varchar](12) NOT NULL,
	[HK] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_GVCN] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[magv] ASC,
	[HK] ASC
)
)
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_Lop]
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_magvfk] FOREIGN KEY([magv])
REFERENCES [dbo].[GiaoVien] ([magv])
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_magvfk]

/* Bang LopSV */
CREATE TABLE [dbo].[LopSV](
	[maLop] [varchar](12) NOT NULL,
	[masv] [varchar](13) NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LopSV] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[masv] ASC
)
) 
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_rule1] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_rule1]
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_rule2] FOREIGN KEY([masv])
REFERENCES [dbo].[SinhVien] ([masv])
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_rule2]

/* Bang MonHoc */
CREATE TABLE [dbo].[MonHoc](
	[mamon] [varchar](8) NOT NULL,
	[Tenmon] [nvarchar](50) NULL,
	[STC] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[mamon] ASC
)
)
 
 /* Bang Khoa */
 CREATE TABLE [dbo].[Khoa](
	[maKhoa] [varchar](12) NOT NULL,
	[tenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[maKhoa] ASC
)
)

/* Bang GiaoVien */
CREATE TABLE [dbo].[GiaoVien](
	[magv] [varchar](12) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[maBM] [varchar](12) NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)
)
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_BoMon] FOREIGN KEY([maBM])
REFERENCES [dbo].[BoMon] ([maBM])
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_BoMon]
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [CK_GiaoVien] CHECK  (([NgaySinh]<='2025-03-25'))
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [CK_GiaoVien]

/* Bang LopHP */
CREATE TABLE [dbo].[LopHP](
	[maLopHP] [varchar](12) NOT NULL,
	[TenLopHP] [nvarchar](50) NULL,
	[HK] [nvarchar](10) NULL,
	[mamon] [varchar](8) NULL,
	[magv] [varchar](12) NULL,
 CONSTRAINT [PK_LopHP] PRIMARY KEY CLUSTERED 
(
	[maLopHP] ASC
)
)
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_fkey2] FOREIGN KEY([mamon])
REFERENCES [dbo].[MonHoc] ([mamon])
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_fkey2]
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_fkey3] FOREIGN KEY([magv])
REFERENCES [dbo].[GiaoVien] ([magv])
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_fkey3]

/* Bang DKMH */
CREATE TABLE [dbo].[DKMH](
	[maLopHP] [varchar](12) NOT NULL,
	[masv] [varchar](13) NOT NULL,
	[DiemTP] [float] NULL,
	[DiemThi] [float] NULL,
	[PhanTramThi] [decimal](5, 2) NULL,
 CONSTRAINT [PK_DKMH] PRIMARY KEY CLUSTERED 
(
	[maLopHP] ASC,
	[masv] ASC
)
)
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_fkey4] FOREIGN KEY([maLopHP])
REFERENCES [dbo].[LopHP] ([maLopHP])
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_fkey4]
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_fkey5] FOREIGN KEY([masv])
REFERENCES [dbo].[SinhVien] ([masv])
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_fkey5]
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [CK_DKMH] CHECK  (([DiemTP]>=(0) AND [DiemTP]<=(10) AND [DiemThi]>=(0) AND [DiemThi]<=(10) AND [PhanTramThi]>=(0) AND [PhanTramThi]<=(100)))
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [CK_DKMH]

/* Het */ 