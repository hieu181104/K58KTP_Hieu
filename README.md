# Bài tập 02 của sinh viên: K225480106019 - Nguyễn Trung Hiếu - Môn Hệ quản trị cơ sở dữ liệu
## BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:
## DEADLINE: 23H59 NGÀY 25/03/2025
## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.
## BÀI TOÁN:
Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  -  SinhVien(#masv,hoten,NgaySinh)
  -  Lop(#maLop,tenLop)
  -  GVCN(#@maLop,#@magv,#HK)
  -  LopSV(#@maLop,#@maSV,ChucVu)
  -  GiaoVien(#magv,hoten,NgaySinh,@maBM)
  -  BoMon(#MaBM,tenBM,@maKhoa)
  -  Khoa(#maKhoa,tenKhoa)
  -  MonHoc(#mamon,Tenmon,STC)
  -  LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  -  DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  -  Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  -  Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  -  Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
## HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)
## CHÚ Ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.
## PASTE ẢNH CHỤP MÀN HÌNH CÁC BƯỚC THỰC HIỆN BÀI TẬP
### Yêu cầu 1: Thực hiện các hành động trên giao diện đồ họa để tạo cơ sở dữ liệu cho bài toán.
#### Tạo database mới tên QLSV:
##### Mở SQL Server Management Studio, thực hiện kết nối rồi tại mục Database click chuột phải chọn New Database.
![Ảnh chụp màn hình 2025-03-24 132829](https://github.com/user-attachments/assets/b7838af2-cd48-41f2-8b9b-af07958f6f3a)
#### Để tạo bảng trong database, tại mục database vừa tạo, bấm Tables chọn New > Table...
![Ảnh chụp màn hình 2025-03-24 133437](https://github.com/user-attachments/assets/af3675db-db3d-4192-a6f5-64ef69374222)
##### Thêm các trường cho bảng, chọn kiểu dữ liệu phù hợp:
![Ảnh chụp màn hình 2025-03-24 133740](https://github.com/user-attachments/assets/fd506e3b-53e4-4b2c-81a1-92f0f8bf00be)
##### Bấm Ctrl + S để đặt tên cho bảng vừa tạo, ở đây là bảng SinhVien: 
![image](https://github.com/user-attachments/assets/387ec9d5-fd05-44fd-8aa5-2a0ba0ddb177)
##### Bấm chuột phải vào trường muốn đặt làm PK, rồi chọn Set Primary Key:
![image](https://github.com/user-attachments/assets/4871d293-5357-47ef-b7df-4cf70e3ff04d)
##### Bấm chuột phải vào khoảng trống trong table, click chọn Check Constraint để tạo CK ( ở đây em áp dụng cho trường NgaySinh ):
![image](https://github.com/user-attachments/assets/1c1920a4-320f-4ced-a668-a5cf5e6729d9)
![Ảnh chụp màn hình 2025-03-24 135214](https://github.com/user-attachments/assets/e0775997-31cd-4ef8-b709-210e2b33aa9b)
![image](https://github.com/user-attachments/assets/299c6e0f-6766-4dac-8a72-40061f520959)
Sau đây em nhập thử dữ liệu cho bảng SinhVien, nhận thấy khi mọi dữ liệu không vi phạm CK thì hoàn toàn bình thường, nếu vi phạm sẽ hiển thị cảnh báo:
![Ảnh chụp màn hình 2025-03-24 140158](https://github.com/user-attachments/assets/7162ace6-aad6-4354-a7e4-70e1b4b8b5e6)
#### Thực hiện tương tự đối với các bảng còn lại trong database, sau đây em xin chụp lại kết quả và không giải thích lại những phần đã chú thích:
##### Bảng Lop
![image](https://github.com/user-attachments/assets/bd3e044c-189f-490f-a380-9c0550b828a8)
![image](https://github.com/user-attachments/assets/a30f9ab6-57f7-40c9-80be-09e7ca4c3dab)
##### Bảng GVCN
![image](https://github.com/user-attachments/assets/fed44070-fca6-4fad-96f9-12b12506e882)
Nhấn giữ phím Ctrl + Click vào các trường chọn làm khóa chính, nháy chuột phải chọn Set Primary Key ( vì ở đây có nhiều hơn một khóa chính):
![image](https://github.com/user-attachments/assets/0d41b80a-ba14-42d9-aa6a-6b278d349629)
##### Bảng LopSV
![image](https://github.com/user-attachments/assets/0e001594-cd9b-46b5-93fe-570a9c10980f)
![image](https://github.com/user-attachments/assets/53486d7d-170c-4385-95b0-9e5e130832e4)
##### Bảng GiaoVien
![image](https://github.com/user-attachments/assets/16b72ede-e0a7-4f4a-a716-26e4084fa66e)
![image](https://github.com/user-attachments/assets/9b97a769-9bcf-437a-bd4f-a0236c7d9c09)
##### Bảng BoMon
![image](https://github.com/user-attachments/assets/838df6ff-7052-4c5b-b2f6-69d3a7c1626b)
![image](https://github.com/user-attachments/assets/f6499606-d02d-45de-a3f1-066aa6f633fd)
##### Bảng Khoa
![image](https://github.com/user-attachments/assets/d8f5cbdb-2a6d-4473-b51f-123543658feb)
##### Bảng MonHoc
![image](https://github.com/user-attachments/assets/d225f70d-c5af-4e56-a4a3-36d670bae23c)
##### Bảng LopHP
![image](https://github.com/user-attachments/assets/8d34bca4-51ac-4e76-8523-46656f711aac)
##### Bảng DKMH
![image](https://github.com/user-attachments/assets/77fd6eb7-d408-492f-a7b6-77841da383d6)
![image](https://github.com/user-attachments/assets/6c5bfd0e-db43-466a-b61e-a2d784565d5f)
![image](https://github.com/user-attachments/assets/d751bdd0-bac1-415e-a2fb-138830e4cee7)
#### Khởi tạo các FK cho các bảng
Để thực hiện thay đổi cho bảng, click chuột phải vào tên bảng chọn Design.
![image](https://github.com/user-attachments/assets/a6ed5d90-01f2-49c2-814a-d97884630ded)
##### Để tạo FK ta cần:
Click chuột phải chọn Relationships...:
![image](https://github.com/user-attachments/assets/4c28e316-3c5e-4808-bbe9-256fe86b4ad8)
##### Vì một số bảng không có khóa ngoại nên em chỉ xét các bảng có tồn tại FK để thực hiện:
##### Bảng GVCN
![Ảnh chụp màn hình 2025-03-24 155343](https://github.com/user-attachments/assets/b885584c-9a33-45b1-bbec-17b8f217d6fa)
![Ảnh chụp màn hình 2025-03-24 160145](https://github.com/user-attachments/assets/4384cb1c-6794-4d5c-8f5f-3a5c9ac5ffc7)
![image](https://github.com/user-attachments/assets/0bdb1dad-90cc-467e-8193-2debd957484c)
Sau khi thực hiện các bước trên, ctrl + S để lưu và hệ thống sẽ hiển thị thông báo này, bấm Yes để hoàn tất việc thiết lập.
![image](https://github.com/user-attachments/assets/68a832f6-6017-47fb-9b98-7478e86c74c0)
##### Bảng LopSV
Thực hiện tương tự như bảng GVCN
![image](https://github.com/user-attachments/assets/8c4f4803-025f-4278-a1c8-379e43153c73)
![image](https://github.com/user-attachments/assets/5e36be12-7e1d-4a75-9de6-ab54ac38a0d3)
##### Bảng GiaoVien
![image](https://github.com/user-attachments/assets/474c8258-833d-4a85-b0e9-9533c0e8d474)
##### Bảng BoMon
![image](https://github.com/user-attachments/assets/48b50e75-b9a9-46f5-9e8d-cb687b3ce2af)
![image](https://github.com/user-attachments/assets/bfc01e4a-3bea-4640-aff4-4e98efdc58ab)
##### Bảng LopHP
![image](https://github.com/user-attachments/assets/d14ba158-409d-441b-9858-1a600319a995)
![image](https://github.com/user-attachments/assets/9e627381-abda-477f-ac8f-24d3b8356f50)
![image](https://github.com/user-attachments/assets/b95d737c-7dbb-4873-8123-01e1858b2acf)
##### Bảng DKMH
![image](https://github.com/user-attachments/assets/91c83f9a-836a-4e7a-8d69-2e6789d39504)
![image](https://github.com/user-attachments/assets/104caea1-1a81-44b2-a164-178d93633664)
![image](https://github.com/user-attachments/assets/687aca8e-26f8-4c8c-ba14-0f0c80d81238)
### Yêu cầu 2: Chuyển các thao tác trên thành lệnh SQL tương đương
Để thực hiện yêu cầu này, ta sẽ thao tác như sau:
![Ảnh chụp màn hình 2025-03-24 171007](https://github.com/user-attachments/assets/de891d84-e876-43f8-88fd-8faae9281e08)
#### Sau khi thực hiện lần lượt với database, các bảng trong database em đã thu được một file code tổng hợp lại (file code đã được tải lên trong github, dưới đây chỉ là đoạn mã được dán vào):
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
