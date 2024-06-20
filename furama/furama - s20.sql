select nv.id_nhan_vien as 'ID',
		nv.name as 'Họ Tên',
        nv.email as 'Email',
        nv.sdt as 'Số điện thoại',
        nv.ngay_sinh as 'Ngày sinh',
        nv.dia_chi as 'Địa chỉ',
        'Nhân viên' as 'role'
from nhan_vien nv
union
select kh.id_khach_hang as 'ID',
		kh.name as 'Họ Tên',
        kh.email as 'Email',
        kh.sdt as 'Số điện thoại',
        kh.ngay_sinh as 'Ngày sinh',
        kh.diachi as 'Địa chỉ',
        'Khách hàng' as 'role'
from khach_hang kh