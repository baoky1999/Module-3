select month(hop_dong.ngay_lam_hop_dong) as 'Tháng',
			sum(hop_dong.tien_dat_coc) as 'Doanh thu',
			count(month(hop_dong.ngay_lam_hop_dong)) as 'Số lượng khách'
from hop_dong
where year(hop_dong.ngay_lam_hop_dong) = 2019
group by month(hop_dong.ngay_lam_hop_dong), hop_dong.tien_dat_coc
