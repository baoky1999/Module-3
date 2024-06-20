select * from khach_hang
where year(current_date()) - year(ngay_sinh) between 18 and 50 and (diachi = 'Đà Nẵng' or diachi = 'Quảng Trị');