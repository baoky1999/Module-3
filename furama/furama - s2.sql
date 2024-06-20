select * from nhan_vien
where (name like 'K%' or name like 'T%' or name like 'H%') and length(name) <= 15;