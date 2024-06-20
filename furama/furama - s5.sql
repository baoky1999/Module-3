SELECT 
    kh.id_khach_hang,
    kh.name AS 'Tên khách hàng',
    loai_khach.name_loai_khach AS 'Loại khách hàng',
    hop_dong.id_hop_dong,
    dich_vu.name_dich_vu AS 'Dịch vụ',
    hop_dong.ngay_lam_hop_dong,
    hop_dong.ngay_ket_thuc,
    SUM(kieu_thue.gia + IFNULL(hdct.so_luong, 0) * IFNULL(dvdikem.gia, 0)) AS 'Tổng tiền'
FROM 
    khach_hang kh
    left JOIN loai_khach ON kh.id_loai_khach = loai_khach.id_loai_khach
    left JOIN hop_dong ON kh.id_khach_hang = hop_dong.id_khach_hang
    left JOIN dich_vu ON hop_dong.id_dich_vu = dich_vu.id_dich_vu
    left JOIN kieu_thue ON dich_vu.id_kieu_thue = kieu_thue.id_kieu_thue
    LEFT JOIN hop_dong_chi_tiet hdct ON hop_dong.id_hop_dong = hdct.id_hop_dong
    LEFT JOIN dich_vu_di_kem dvdikem ON hdct.id_dich_vu_di_kem = dvdikem.id_dich_vu_di_kem
GROUP BY 
    kh.id_khach_hang, kh.name, loai_khach.name_loai_khach, hop_dong.id_hop_dong, dich_vu.name_dich_vu, hop_dong.ngay_lam_hop_dong, hop_dong.ngay_ket_thuc
ORDER BY 
    kh.id_khach_hang, kh.name, loai_khach.name_loai_khach, hop_dong.id_hop_dong, dich_vu.name_dich_vu, hop_dong.ngay_lam_hop_dong, hop_dong.ngay_ket_thuc;


