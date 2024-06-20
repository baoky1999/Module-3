select hd.id_hop_dong as 'ID',
		dich_vu.name_dich_vu as 'Tên dịch vụ',
        dich_vu_di_kem.name_dich_vu_di_kem as 'Tên dịch vụ đi kèm',
        hop_dong_chi_tiet.so_luong as 'Số lần sử dụng'
from hop_dong hd
join dich_vu on hd.id_dich_vu = dich_vu.id_dich_vu
join hop_dong_chi_tiet on hd.id_hop_dong = hop_dong_chi_tiet.id_hop_dong
join dich_vu_di_kem on hop_dong_chi_tiet.id_dich_vu_di_kem = dich_vu_di_kem.id_dich_vu_di_kem
where hop_dong_chi_tiet.so_luong = 1;