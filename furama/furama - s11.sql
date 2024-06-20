select kh.name as 'Tên khách hàng',
		loai_khach.name_loai_khach as 'Loại khách',
        kh.diachi as 'Địa chỉ',
        dich_vu_di_kem.name_dich_vu_di_kem as 'Dịch vụ đi kèm' 
from khach_hang kh
join loai_khach on kh.id_loai_khach = loai_khach.id_loai_khach
left join hop_dong on kh.id_khach_hang = hop_dong.id_khach_hang
left join hop_dong_chi_tiet on hop_dong.id_hop_dong = hop_dong_chi_tiet.id_hop_dong
left join dich_vu_di_kem on hop_dong_chi_tiet.id_dich_vu_di_kem = dich_vu_di_kem.id_dich_vu_di_kem
where (kh.diachi = 'Vinh' or kh.diachi = 'Quảng Ngãi') and loai_khach.name_loai_khach = 'Diamond'
