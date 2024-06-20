UPDATE khach_hang kh
JOIN (
    SELECT hd.id_khach_hang
    FROM hop_dong hd
    WHERE hd.tien_dat_coc >= 10000000
      AND YEAR(hd.ngay_lam_hop_dong) = 2019
) AS subquery ON kh.id_khach_hang = subquery.id_khach_hang
SET kh.id_loai_khach = 1
WHERE kh.id_loai_khach = 2;



		