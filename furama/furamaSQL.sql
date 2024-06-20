create database furama;
use furama;

create table vi_tri(
id_vi_tri int primary key,
name_vi_tri varchar(45)
);

create table trinh_do(
id_trinh_do int primary key,
trinh_do varchar(45)
);

create table bo_phan(
id_bo_phan int primary key,
name_bo_phan varchar(45)
);

create table dich_vu_di_kem(
id_dich_vu_di_kem int primary key,
name_dich_vu_di_kem varchar(45),
gia int,
don_vi varchar(20),
trang_thai_kha_dung varchar(45)
);

create table loai_dich_vu(
id_loai_dich_vu int primary key,
name_loai_dich_vu varchar(45)
);

create table kieu_thue(
id_kieu_thue int primary key,
name_kieu_thue varchar(45),
gia int
);

create table loai_khach(
id_loai_khach int primary key,
name_loai_khach varchar(45)
);

create table nhan_vien(
id_nhan_vien int primary key,
name varchar(100),
id_vi_tri int,
id_trinh_do int,
id_bo_phan int,
ngay_sinh date,
so_CMTND varchar(45),
luong varchar(45),
sdt varchar(45),
email varchar(45),
dia_chi varchar(45),
foreign key fk_vi_tri_nhan_vien(id_vi_Tri) references vi_tri(id_vi_tri),
foreign key fk_trinh_do_nhan_vien(id_trinh_do) references trinh_do(id_trinh_do),
foreign key fk_bo_phan_nhan_vien(id_bo_phan) references bo_phan(id_bo_phan)
);

create table khach_hang(
id_khach_hang int primary key,
id_loai_khach int,
name varchar(45),
ngay_sinh date,
so_CMTND varchar(45),
sdt varchar(45),
email varchar(45),
diachi varchar(45),
foreign key fk_loai_khach_khach_hang(id_loai_khach) references loai_khach(id_loai_khach)
);

create table dich_vu(
id_dich_vu int primary key,
name_dich_vu varchar(45),
dien_tich int,
so_tang int,
so_nguoi_toi_da varchar(45),
chi_phi_thue varchar(45),
id_kieu_thue int,
id_loai_dich_vu int,
trang_thai varchar(45),
foreign key fk_kieu_thue_dich_vu(id_kieu_thue) references kieu_thue(id_kieu_thue),
foreign key fk_loai_dich_vu_dich_vu(id_loai_dich_vu) references loai_dich_vu(id_loai_dich_vu)
);

create table hop_dong(
id_hop_dong int primary key,
id_nhan_vien int,
id_khach_hang int,
id_dich_vu int,
ngay_lam_hop_dong date,
ngay_ket_thuc date,
tien_dat_coc int,
tong_tien int,
foreign key fk_nhan_vien_hop_dong(id_nhan_vien) references nhan_vien(id_nhan_vien),
foreign key fk_khach_hang_hop_dong(id_khach_hang) references khach_hang(id_khach_hang),
foreign key fk_dich_vu_hop_dong(id_dich_vu) references dich_vu(id_dich_vu)
);

create table hop_dong_chi_tiet(
id_hop_dong_chi_tiet int primary key,
id_hop_dong int,
id_dich_vu_di_kem int,
so_luong int,
foreign key fk_dich_vu_di_kem_hop_dong_chi_tiet(id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem),
foreign key fk_hop_dong_hop_dong_chi_tiet(id_hop_dong) references hop_dong(id_hop_dong)
);
insert into bo_phan (id_bo_phan, name_bo_phan) values ('1', 'Sale - Marketing'), ('2', 'Hành Chính'),('3', 'Phục vụ '), ('4', 'Quản lý');
insert into vi_tri (id_vi_tri, name_vi_tri) values ('1', 'Lễ tân'), ('2', 'Phục vụ'), ('3', 'Chuyên viên'), ('4', 'Giám sát'), ('5', 'Quản lý'), ('6', ' Giám đốc');
insert into trinh_do (id_trinh_do, trinh_do) values ('1', 'Trung cấp'), ('2', 'Cao đẳng'), ('3', 'Đại học'), ('4', 'Sau đại học');

insert into nhan_vien (id_nhan_vien, name, id_vi_tri, id_trinh_do, id_bo_phan, ngay_sinh, so_CMTND, luong, sdt, email, dia_chi) values ('1', 'Phong', '1', '1', '1', '1999-11-11', '2536458235', '15000000', '035685458', 'phong123@gmail.com', 'Huế'),
																																		('2', 'Kỳ', '4', '3', '2', '1999-05-03', '3548562538', '20000000', '035685475', 'ky123@gmail.com', 'Huế'),
                                                                                                                                        ('3', 'Hiếu', '3', '2', '3', '2001-06-07', '4215253254', '13000000', '024658958', 'hieu123@gmail.com', 'Quảng Trị'),
                                                                                                                                        ('4', 'Quang', '2', '4', '2', '2004-11-12', '5846958758', '17000000', '024565852', 'quang123@gmail.com', 'Hà Tĩnh'),
                                                                                                                                        ('5', 'Thanh', '5', '4', '4', '1992-02-15', '6785458525', '25000000', '098758525', 'thanh123@gmail.com', 'Quảng Bình');


insert into loai_khach (id_loai_khach, name_loai_khach) values ('1', 'Diamond'),
																('2', 'Platinium'),
                                                                ('3', 'Gold'),
                                                                ('4', 'Silver'),
																('5', 'Member');

insert into khach_hang (id_khach_hang, id_loai_khach, name, ngay_sinh, so_CMTND, sdt, email, diachi) values ('1', '5', 'Phúc', '1999-05-03', '192026093', '0336595236', 'phuc123@gmail.com', 'Đà Nẵng'),
																											('2', '1', 'Hải', '1998-11-21', '548265325', '0335846258', 'hai123@gmail.com', 'Hà Nội'),
                                                                                                            ('3', '4', 'Khuyến', '2002-05-12', '125325425', '0985625365', 'khuyen123@gmail.com', 'Bắc Ninh'),
																											('4', '2', 'Công', '2005-11-12', '215025325', '0878548528', 'cong123@gmail.com', 'Quảng Trị'),
                                                                                                            ('5', '3', 'Phương', '2010-07-25', '102458652', '0336598658', 'phuong123@gmail.com', 'Đà Nẵng');


insert into kieu_thue(id_kieu_thue, name_kieu_thue, gia) values ('1', 'Năm', '50000000'),
																 ('2', 'Tháng', '30000000'),
                                                                 ('3', 'Ngày', '1000000'),
                                                                 ('4', 'Giờ', '200000');
                                                                 
insert into loai_dich_vu (id_loai_dich_vu, name_loai_dich_vu) values ('1', 'Villa'), ('2', 'House'), ('3', 'Room'), ('4', 'Dịch vụ đi kèm');

insert into dich_vu (id_dich_vu, name_dich_vu, dien_tich, so_tang, so_nguoi_toi_da, chi_phi_thue, id_kieu_thue, id_loai_dich_vu, trang_thai) values ('1', 'Thuê Villa', '200', '2', '10', '1', '1', '1', 'Đang hoạt động'),
																																					('2', 'Thuê House', '100', '3', '5', '2', '2', '2', 'Đang hoạt động'),
                                                                                                                                                    ('3', 'Thuê phòng', '30',null, '2', '3', '3', '3', 'Đang hoạt động'),
                                                                                                                                                    ('4', 'Các dịch vụ đi kèm',null ,null, '5', '4', '4', '4','Đang hoạt động');
                                                                                                                                                    





																				
																						
																										

