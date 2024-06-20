SET SQL_SAFE_UPDATES = 0;
delete nv
from nhan_vien nv
left join hop_dong hd on nv.id_nhan_vien = hd.id_nhan_vien
where hd.id_nhan_vien is null and year(hd.ngay_lam_hop_dong) between 2017 and 2019;

SET SQL_SAFE_UPDATES = 1;


