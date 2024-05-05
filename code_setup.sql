CREATE SCHEMA `cuahangtienloi` ;
CREATE TABLE `cuahangtienloi`.`khachhang` (
  `MaKH` VARCHAR(255) NOT NULL,
  `Ten` VARCHAR(255) NOT NULL,
  `GioiTinh` VARCHAR(255) NOT NULL,
  `SĐT` VARCHAR(255) NOT NULL,
  `DateOfBirth` DATE NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MaKH`));
INSERT INTO `cuahangtienloi`.`khachhang` () VALUES ('KH01', 'Bảo Chi', 'Nữ', '0812468588', '2001-12-12', 'chi@gmail.com');
INSERT INTO `cuahangtienloi`.`khachhang` () VALUES ('KH02', 'Mai Linh', 'Nữ', '0395647670', '1992-10-21', 'linh@gmail.com');
INSERT INTO `cuahangtienloi`.`khachhang` () VALUES ('KH03', 'Quốc Bảo', 'Nam', '0982846215', '2004-02-08', 'bao@gmail.com');
INSERT INTO `cuahangtienloi`.`khachhang` () VALUES ('KH04', 'Nhật Nam', 'Nam', '0982846113', '2007-12-26', 'nam@gmail.com');
INSERT INTO `cuahangtienloi`.`khachhang` () VALUES ('KH05', 'Ngọc Mai', 'Nữ', '0813458765', '2001-12-01', 'mai@gmail.com');
INSERT INTO `cuahangtienloi`.`khachhang` () VALUES ('KH06', 'QQuaan Quân', 'Nam', '0398765389', '1992-10-10', 'quan@gmail.com');
INSERT INTO `cuahangtienloi`.`khachhang` () VALUES ('KH07', 'Bảo An', 'Nam', '0986235768', '1996-10-11', 'an@gmail.com');
-- TẠO BẢNG `nhanvien`
CREATE TABLE `cuahangtienloi`.`nhanvien` (
  `MaNV` VARCHAR(255) NOT NULL,
  `Ten` VARCHAR(255) NOT NULL,
  `SĐT` VARCHAR(255) NOT NULL,
  `DateOfBirth` DATE NOT NULL,
  `GioiTinh` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MaNV`));
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV01','Trọng Hiếu', '0965432897','2002-02-01','nam', 'hieu@gmail.com');
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV02','Thu Thuỷ', ' 0976432654','2001-10-21','nu', 'thuy@gmail.com');
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV03','Ngọc Lan',' 0986543678','2003-09-25','nu', 'lan@gmail.com');
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV04','Thuỳ Linh','0654687654','2002-10-05','nu', 'linh@gmail.com');
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV05','Văn Tuyên','0987654654','2001-12-12','nam', 'tuyen@gmail.com');
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV06','Đức Trung','0987687678','2004-01-01','nam', 'trung@gmail.com');
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV07','Hà Anh','0976457654','2003-08-22','nu', 'anh@gmail.com');
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV08', 'Minh Hiếu', '0812465778', '1996-10-21', 'nam', 'hieu@gmail.com');
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV09', 'ThuTrang', '0985764876', '1978-09-21', 'nu', 'trang@gmail.com');
INSERT INTO `cuahangtienloi`.`nhanvien` () VALUES ('NV10', 'Nguyễn Thuý', '0978653456', '1976-08-26', 'nu', 'thuy@gmail.com');
-- TẠO BẢNG `luong`
CREATE TABLE `cuahangtienloi`.`luong` (
  `MaNV` VARCHAR(255) NOT NULL,
  `SoCaLam` INT NOT NULL,
  `Thuong` INT NOT NULL,
  `MaCV` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MaNV`),
  foreign key (`MaNV`) references `cuahangtienloi`.`nhanvien`(`MaNV`));
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV01', '80', '200000', 'CV02');
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV02', '78', '180000', 'CV02');
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV03', '60', '180000', 'CV02');
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV04', '84', '250000', 'CV02');
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV05', '60', '180000', 'CV02');
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV06', '66', '150000', 'CV02');
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV07', '82', '200000', 'CV02');
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV08', '56', '1000000', 'CV01');
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV09', '56', '300000', 'VC03');
INSERT INTO `cuahangtienloi`.`luong` () VALUES ('NV10', '56', '300000', 'CV03');
-- TẠO BẢNG `calam`
CREATE TABLE `cuahangtienloi`.`calam` (
  `MaCa` VARCHAR(255) NOT NULL,
  `ThoiGianBatDau` VARCHAR(45) NOT NULL,
  `ThoiGianKetThuc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`MaCa`));
INSERT INTO `cuahangtienloi`.`calam` () VALUES ('Ca01', '7h00\'', '12h00\'');
INSERT INTO `cuahangtienloi`.`calam` () VALUES ('Ca02', '12h00\'', '17h00\'');
INSERT INTO `cuahangtienloi`.`calam` () VALUES ('Ca03', '17h00\'', '22h00\'');
-- TẠO BẢNG `chamcong`
CREATE TABLE `cuahangtienloi`.`chamcong` (
  `MaNV` VARCHAR(255) NOT NULL,
  `MaCa` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MaCa`,`MaNV`),
  FOREIGN KEY (`MaCa`) REFERENCES `cuahangtienloi`.`calam` (`MaCa`)
 );
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV01', 'Ca01');
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV02', 'Ca02');
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV03', 'Ca03');
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV04', 'Ca01');
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV05', 'Ca02');
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV06', 'Ca03');
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV07', 'Ca01');
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV08', 'Ca02');
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV09', 'Ca03');
INSERT INTO `cuahangtienloi`.`chamcong` (`MaNV`, `MaCa`) VALUES ('NV10', 'Ca01');
-- TẠO BẢNG chucvu`
CREATE TABLE `cuahangtienloi`.`chucvu` (
  `MaCV` VARCHAR(255) NOT NULL,
  `TenCV` VARCHAR(255) NOT NULL,
  `Hệ Số Lương` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`MaCV`));
INSERT INTO `cuahangtienloi`.`chucvu` () VALUES ('CV01', 'Quản Lý', '1.2');
INSERT INTO `cuahangtienloi`.`chucvu` () VALUES ('CV02', 'Nhân Viên Bán hàng', '1.0');
INSERT INTO `cuahangtienloi`.`chucvu` () VALUES ('CV03', 'Nhân Viên Dọn Vệ Sinh', '1.0');
-- TẠO BẢNG ` giữ`
CREATE TABLE `cuahangtienloi`.`giu` (
  `MaNV` VARCHAR(255) NOT NULL,
  `MaCV` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MaNV`),
  FOREIGN KEY (`MaCV`) REFERENCES `cuahangtienloi`.`chucvu` (`MaCV`)
  );

CREATE TABLE `cuahangtienloi`.`nhacungcap` (
  `MaNCC` VARCHAR(255) NOT NULL,
  `Ten` VARCHAR(255) NOT NULL,
  `SĐT` VARCHAR(255) NOT NULL,
  `DiaChi` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MaNCC`));
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC01','Aquafina','0123','HaDong','Aquafina@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC02','Knorr','3456','ThanhXuan','Knorr@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC03','Ajinomoto','45678','DongDa','Ajinomoto@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC04','GoldenBoy','0123678','BaDinh','GoldenBoy@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC05','HaoHao','3456953','ThanhXuan','Haohao@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC06','ChinSu','45678432','DongDa','Chinsu@hmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC07','Omo','4567843452','HoanKiem','Omo@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC08','Sunlight','65678432','DongDa','Sunlight@hmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC09','DongThap','45688432','DongThap','Dongthap@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC10','Subway','454578432','DongDa','subway@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC11','OREO','45670032','HoangMai','oreo@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC12','COCA','45666432','HaDong','coca@gmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC13','PESSI','456784300','CauGiay','pessi@hmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC14','Gum','456321432','HaNoi','Gum@hmail.com');
INSERT INTO `cuahangtienloi`.`nhacungcap` () VALUES ('NCC15','Milo','14878432','ThanhTri','Milo@hmail.com');

CREATE TABLE `cuahangtienloi`.`hanghoa` (
  `MaHH` VARCHAR(255) NOT NULL,
  `Ten` VARCHAR(255) NOT NULL,
  `SoLuong` INT NOT NULL,
  `GiaNhap` INT NOT NULL,
  `GiaBan` INT NOT NULL,
  `NgayNhap` DATE NOT NULL,
  `HSD` DATE NOT NULL,
  `MaCC` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MaHH`),
  FOREIGN KEY (`MaCC`) REFERENCES `cuahangtienloi`.`nhacungcap` (`MaNCC`));
  
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH01','NuocLoc',123,5000,6000,'2023-10-21','2024-09-14','NCC01');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH02','BotCanh',121,8800,10000,'2023-10-29','2024-10-20','NCC02');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH03','MiChinh',22,55000,60000,'2023-10-21','2024-09-14','NCC03');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH04','NuocMam',45,58000,65000,'2023-10-01','2024-11-14','NCC04');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH05','MiTom',345,6000,8000,'2023-10-22','2024-09-15','NCC05');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH06','NuocTuong',78,35000,39000,'2023-10-25','2024-09-15','NCC06');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH07','BotGiat',23,65000,70000,'2023-10-16','2024-09-04','NCC07');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH08','NuocRuaBat',67,35000,40000,'2023-11-21','2024-11-04','NCC08');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH09','Gao',234,15000,17000,'2023-10-12','2024-06-24','NCC09');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH10','BanhMi',50,5000,8000,'2023-10-12','2024-11-12','NCC10');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH11','BanhOREO',13,15000,20000,'2023-10-08','2024-11-20','NCC11');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH12','NuocCOCA',13,15000,18000,'2023-10-17','2024-10-14','NCC12');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH13','NuocPESSI',47,15000,19000,'2021-09-27','2024-10-31','NCC13');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH14','KeoCaoSu',456,25000,30000,'2023-11-29','2024-12-14','NCC14');
INSERT INTO `cuahangtienloi`.`hanghoa` () VALUES ('HH15','SuaMilo',78,35000,41000,'2023-09-24','2024-02-14','NCC15');

CREATE TABLE `cuahangtienloi`.`hoadon` (
  `MaHĐ` VARCHAR(255) NOT NULL,
  `ThoiGianXuat` VARCHAR(255) NOT NULL,
  `TongTien` INT NOT NULL,
  `SoLoaiHangHoa` INT NOT NULL,
  `MaNV` VARCHAR(255) NOT NULL,
  `MaKH` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MaHĐ`),
  FOREIGN KEY (`MaNV`) REFERENCES `cuahangtienloi`.`nhanvien` (`MaNV`),
  FOREIGN KEY (`MaKH`) REFERENCES `cuahangtienloi`.`khachhang` (`MaKH`)
);
INSERT INTO `cuahangtienloi`.`hoadon` () VALUES ('HĐ01','10h29\'',70000,2,'NV01','KH01');
INSERT INTO `cuahangtienloi`.`hoadon` () VALUES ('HĐ02','08h04\'',150000,3,'NV02','KH02');
INSERT INTO `cuahangtienloi`.`hoadon` () VALUES ('HĐ03','21h00',14000,2,'NV03','KH03');
INSERT INTO `cuahangtienloi`.`hoadon` () VALUES ('HĐ04','16h34\'',27000,2,'NV04','KH04');
INSERT INTO `cuahangtienloi`.`hoadon` () VALUES ('HĐ05','23h11\'',8000,1,'NV05','KH05');
INSERT INTO `cuahangtienloi`.`hoadon` () VALUES ('HĐ06','17h35\'',163000,4,'NV06','KH06');
INSERT INTO `cuahangtienloi`.`hoadon` () VALUES ('HĐ07','09h40\'',19000,1,'NV07','KH07');

CREATE TABLE `cuahangtienloi`.`chitiethoadon` (
  `MaCTHĐ` VARCHAR(255) NOT NULL,
  `SoLuong` INT NOT NULL,
  `Gia` INT NOT NULL,
  `MaHĐ` VARCHAR(255) NOT NULL,
  `MaHH` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MaCTHĐ`),
  FOREIGN KEY (`MaHH`) REFERENCES `cuahangtienloi`.`hanghoa` (`MaHH`),
  FOREIGN KEY (`MaHĐ`) REFERENCES `cuahangtienloi`.`hoadon` (`MaHĐ`)
  );
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES('CTHĐ01',1,6000,'HĐ03','HH03');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ02',1,10000,'HĐ04','HH04');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ03',1,60000,'HĐ06','HH06');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ04',1,65000,'HĐ06','HH06');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ05',1,8000,'HĐ03','HH03');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ06',1,39000,'HĐ02','HH02');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ07',1,70000,'HĐ02','HH02');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ08',1,40000,'HĐ01','HH01');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ09',1,17000,'HĐ04','HH04');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ10',1,8000,'HĐ05','HH05');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ11',1,20000,'HĐ06','HH06');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ12',1,18000,'HĐ06','HH06');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ13',1,19000,'HĐ07','HH07');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ14',1,30000,'HĐ01','HH01');
INSERT INTO `cuahangtienloi`.`chitiethoadon` () VALUES ('CTHĐ15',1,41000,'HĐ02','HH02');

INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV01', 'CV02');
INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV02', 'CV02');
INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV03', 'CV02');
INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV04', 'CV02');
INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV05', 'CV02');
INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV06', 'CV02');
INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV07', 'CV02');
INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV08', 'CV01');
INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV09', 'CV03');
INSERT INTO `cuahangtienloi`.`giu` (`MaNV`, `MaCV`) VALUES ('NV10', 'CV03');