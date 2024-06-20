select nv.id_nhan_vien as 'ID nhân viên',
		nv.name as 'Họ tên',
        trinh_do.trinh_do as 'Trình độ',
        bo_phan.name_bo_phan as 'Tên bộ phận',
        nv.sdt as 'Số điện thoại',
        nv.dia_chi as 'Địa chỉ',
        count(hop_dong.id_nhan_vien)
from nhan_vien nv
join trinh_do on nv.id_trinh_do = trinh_do.id_trinh_do
join bo_phan on nv.id_bo_phan = bo_phan.id_bo_phan
left join hop_dong on nv.id_nhan_vien = hop_dong.id_nhan_vien
group by 1,2,3,4,5,6
having count(hop_dong.id_nhan_vien) <= 3