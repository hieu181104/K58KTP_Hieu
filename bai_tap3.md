# BÀI TẬP VỀ NHÀ 3 _ MÔN HỆ QUẢN TRỊ CƠ SỞ DỮ LIỆU
## Sinh viên Nguyễn Trung Hiếu, Mã sinh viên: K225480106019
## DEADLINE: 23H59 NGÀY 30/03/2025
## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)
## BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)
## YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
## HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md
## PASTE ẢNH LÀM BÀI
### Yêu cầu 1: Sửa bảng DKMH và bảng Diem
Trong bảng DKMH:
![Ảnh chụp màn hình 2025-03-29 134216](https://github.com/user-attachments/assets/0dd0f307-abb2-4509-9ac9-a39b39ae7a52)
![Ảnh chụp màn hình 2025-03-29 134637](https://github.com/user-attachments/assets/0a0a9bb8-06c7-42a1-b5cb-1d4375c8974b)
Ctrl + S để lưu lại thay đổi trong bảng
![image](https://github.com/user-attachments/assets/38c9e8d8-2933-4a1c-bb92-9527665444ca)

Sau khi sửa xong, thực hiện tạo bảng Diem:
![image](https://github.com/user-attachments/assets/fec75f9a-e7a6-4a14-9f06-4b85429c24d4)
![Ảnh chụp màn hình 2025-03-29 140118](https://github.com/user-attachments/assets/1dfb3b90-1394-4a06-b7f4-5be1febfdaf4)
Lưu lại bảng
![image](https://github.com/user-attachments/assets/9e051940-d172-49e1-95b5-92b4879152e4)
Thực hiện tạo FK và CK:
![Ảnh chụp màn hình 2025-03-29 140435](https://github.com/user-attachments/assets/15459679-6daa-42a5-ac67-58cab3e9b09b)
![Ảnh chụp màn hình 2025-03-29 141526](https://github.com/user-attachments/assets/1ac283c7-2072-4658-8aaf-a1b22fc0f76b)
