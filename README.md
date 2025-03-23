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
#### Tạo database mới, mô tả các tham số (nếu có)
Mô tả việc tạo cơ sở dữ liệu tên SinhVien:
![image](https://github.com/user-attachments/assets/ce998164-b917-4844-a885-e2c67fa6e16a)
Thực hiện tương tự như vậy, với các cơ sở dữ liệu còn lại:
![image](https://github.com/user-attachments/assets/5755dab2-a4dd-4627-b0d2-6d291988a70e)
![image](https://github.com/user-attachments/assets/24c16d66-44e0-4c19-b686-c95d310bb52c)
![image](https://github.com/user-attachments/assets/800dae3d-29c8-4d19-835b-29f587a76a8f)
![image](https://github.com/user-attachments/assets/51395fed-018f-4238-91a2-f07805748d3a)
![image](https://github.com/user-attachments/assets/18514a01-4fbf-428a-8c37-632c0a7b298a)
![image](https://github.com/user-attachments/assets/f9710a58-1186-48aa-892d-e23f017436e1)
![image](https://github.com/user-attachments/assets/d4af0a53-11e6-4a8d-a7ff-50336f7aafd7)
![image](https://github.com/user-attachments/assets/551831ba-4903-4941-a395-bcfaa8ac1a83)
![image](https://github.com/user-attachments/assets/84405fa1-d2bf-4969-874b-761fcd2adc14)
#### Tạo các bảng dữ liệu và chọn kiểu dữ liệu & thiết lập các khóa và CK (nếu cần):
![image](https://github.com/user-attachments/assets/9678d174-fbe4-4544-96b3-a82364299545)
##### Database SinhVien:
![image](https://github.com/user-attachments/assets/d1186e12-9e40-44a2-8fdc-850c4d553d66)
![Ảnh chụp màn hình 2025-03-23 211224](https://github.com/user-attachments/assets/ca819525-f190-49b5-a394-c5d5c8552b7b)
![image](https://github.com/user-attachments/assets/46c9d040-628b-43d1-8c18-02dca42d78cd)
