SET SQL_SAFE_UPDATES = 0;
select kh.id_khach_hang,hd.id_hop_dong
from khach_hang kh
join hop_dong hd on kh.id_khach_hang = hd.id_khach_hang;
delete hd
from hop_dong hd
where year(hd.ngay_lam_hop_dong) < 2016;
SET SQL_SAFE_UPDATES = 1;
