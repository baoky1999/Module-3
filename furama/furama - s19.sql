
set @so_lan_su_dung = (
    select dich_vu_di_kem.id_dich_vu_di_kem
	from hop_dong_chi_tiet hdct
	join dich_vu_di_kem on hdct.id_dich_vu_di_kem = dich_vu_di_kem.id_dich_vu_di_kem
	join hop_dong on hdct.id_hop_dong = hop_dong.id_hop_dong
	where year(hop_dong.ngay_lam_hop_dong) = 2019
	group by hdct.id_dich_vu_di_kem
    having sum(hdct.so_luong) >= 10
);

SET SQL_SAFE_UPDATES = 0;

update dich_vu_di_kem as dv
set dv.gia = dv.gia * 2
where (dv.id_dich_vu_di_kem = @so_lan_su_dung);

SET SQL_SAFE_UPDATES = 1;




