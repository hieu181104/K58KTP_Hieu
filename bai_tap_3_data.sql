USE [QLSV]
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'elec', N'Điện')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'fee', N'Điện Tử')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'inter', N'Quốc Tế')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'480102', N'Kỹ thuật điện', N'elec')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'480103', N'Điện tử viễn thông', N'fee')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'480106', N'Công nghệ thông tin', N'fee')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'01', N'Trần Thị Thanh', CAST(N'1988-01-01' AS Date), N'480106')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'02', N'Đỗ Duy Cốp', CAST(N'1985-02-02' AS Date), N'480106')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'03', N'Phùng Thị Thu', CAST(N'1990-08-08' AS Date), N'480102')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'04', N'Lê Thị Trang', CAST(N'1989-06-06' AS Date), N'480103')
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K12345', N'Nguyen Van A', CAST(N'2004-03-23' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K12346', N'Nguyen Thi B', CAST(N'2004-03-28' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K12347', N'Le Van Anh', CAST(N'2004-10-01' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K12348', N'Quach Trieu Tung', CAST(N'2004-08-06' AS Date))
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'1115', N'K55KMT')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'1116', N'K56KMT')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'1117', N'K57KMT')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'1118', N'K58KMT')
GO
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'1117', N'K12347', N'Lớp phó học tập')
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'1118', N'K12345', N'Lớp trưởng')
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'1118', N'K12346', N'Bí thư')
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'1118', N'K12348', N'Lớp phó học tập')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'FEE01', N'Toán rời rạc', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'FEE02', N'Hệ điều hành', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'FEE03', N'Cơ sở dữ liệu', 2)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [mamon], [magv]) VALUES (N'2025283', N'Cơ sở dữ liệu', N'3', N'FEE03', N'01')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [mamon], [magv]) VALUES (N'2025293', N'Toán rời rạc', N'3', N'FEE01', N'02')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [mamon], [magv]) VALUES (N'2025373', N'Hệ điều hành', N'3', N'FEE02', N'04')
GO
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'2025293', N'K12345', 9.5, 0.6, N'101')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'2025283', N'K12345', 8.5, 0.6, N'102')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'2025373', N'K12346', 7, 0.6, N'103')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'2025373', N'K12347', 5.5, 0.6, N'104')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'2025373', N'K12345', 8.5, 0.6, N'105')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'2025283', N'K12348', 7.5, 0.6, N'106')
GO
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'1117', N'02', N'3')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'1118', N'01', N'3')
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'D1', N'101', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'D2', N'101', 10)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'D3', N'102', 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'D4', N'103', 8.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'D5', N'104', 6)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'D6', N'105', 7.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'D7', N'106', 8.5)
GO
