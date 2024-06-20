select hd.id_hop_dong as 'ID',
		hd.ngay_lam_hop_dong as 'Ngày làm hợp đồng',
        hd.ngay_ket_thuc as 'Ngày kết thúc',
        hd.tien_dat_coc as 'Tiền đặt cọc',
        count(hop_dong_chi_tiet.id_hop_dong_chi_tiet) as 'Số luọng dịch vụ đi kèm'
from hop_dong hd
left join hop_dong_chi_tiet on hd.id_hop_dong = hop_dong_chi_tiet.id_hop_dong
group by 1,2,3,4
