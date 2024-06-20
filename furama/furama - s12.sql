select hd.id_hop_dong as 'ID',
		nhan_vien.name as 'Tên nhân viên',
        khach_hang.name as 'Tên khách hàng',
        khach_hang.sdt as 'Số điện thoại khách hàng',
        dich_vu.name_dich_vu as 'Tên dịch vụ',
        hop_dong_chi_tiet.so_luong as 'Số lượng dịch vụ đi kèm',
        sum(hd.tien_dat_coc * hop_dong_chi_tiet.so_luong) as 'Tiền đặt cọc'
from hop_dong hd
left join nhan_vien on hd.id_nhan_vien = nhan_vien.id_nhan_vien
left join khach_hang on hd.id_khach_hang = khach_hang.id_khach_hang
left join dich_vu on hd.id_dich_vu = dich_vu.id_dich_vu
left join hop_dong_chi_tiet on hd.id_hop_dong = hop_dong_chi_tiet.id_hop_dong
where month(hd.ngay_lam_hop_dong) in (10,11,12) and year(hd.ngay_lam_hop_dong) = 2018
		and hd.id_hop_dong not in (
        select hd2.id_hop_dong
        from hop_dong hd2
        where month(hd2.ngay_lam_hop_dong) in (1, 2, 3, 4, 5, 6)
        and year(hd2.ngay_lam_hop_dong) = 2019
    )
group by 1,2.3,4,5,6
