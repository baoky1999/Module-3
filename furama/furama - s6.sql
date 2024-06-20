select d.id_dich_vu as 'dịch vụ',
		d.name_dich_vu as 'Tên dịch vụ',
		d.dien_tich as 'Diện tích',
        kieu_thue.gia as 'Chí phí thuê',
        loai_dich_vu.name_loai_dich_vu as 'Tên loại dịch vụ'
from dich_vu d
left join kieu_thue on d.id_kieu_thue = kieu_thue.id_kieu_thue
left join loai_dich_vu on d.id_loai_dich_vu = loai_dich_vu.id_loai_dich_vu
left join hop_dong on d.id_dich_vu = hop_dong.id_dich_vu
where month(hop_dong.ngay_lam_hop_dong) in (1, 2, 3) and year(hop_dong.ngay_lam_hop_dong) = 2019