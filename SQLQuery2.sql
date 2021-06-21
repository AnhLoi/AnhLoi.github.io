delete from GioHang where makhachhang = 3;
delete from KhachHang where makhachhang = 5;


ALTER TABLE KhachHang
  ADD CONSTRAINT FK_GioHang_KhachHang FOREIGN KEY (makhachhang) 
      REFERENCES GioHang (makhachhang);
delete from GioHang where magiohang = 3;
ALTER TABLE ChiTietGioHang
ADD CONSTRAINT FK_ChiTietGioHang_GioHang 
FOREIGN KEY (magiohang) 
REFERENCES GioHang (magiohang)
ON DELETE CASCADE;
select * from KhachHang
select * from ChiTietGioHang
