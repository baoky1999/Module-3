select d.id_dich_vu as 'ID',
		d.name_dich_vu as 'Tên dịch vụ',
        d.dien_tich as 'Diện tích',
        d.so_nguoi_toi_da as 'Số người tối đa',
        kieu_thue.gia as 'Chi phí thuê',
        loai_dich_vu.name_loai_dich_vu as 'Tên loại dịch vụ'
from dich_vu d
join kieu_thue on d.id_kieu_thue = kieu_thue.id_kieu_thue
join loai_dich_vu on d.id_loai_dich_vu = loai_dich_vu.id_loai_dich_vu
join hop_dong on d.id_dich_vu = hop_dong.id_dich_vu
where year(ngay_lam_hop_dong) = 2018