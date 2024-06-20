select kh.name as 'Tên khách hàng', count(hop_dong.id_khach_hang) as 'Số lần đặt phòng'
from khach_hang kh
join hop_dong on kh.id_khach_hang = hop_dong.id_khach_hang
join loai_khach on kh.id_loai_khach = loai_khach.id_loai_khach
where loai_khach.name_loai_khach = 'Diamond'
group by kh.id_khach_hang, kh.name
order by 'Số lần đặt phòng';