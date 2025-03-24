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
![image](https://github.com/user-attachments/assets/1f749057-f480-4343-959e-7c0784b8e084)
![image](https://github.com/user-attachments/assets/d5566125-acb9-4fc3-a5de-ac53dd0f53a7)
