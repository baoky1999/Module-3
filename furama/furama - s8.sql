-- Cách 1 --
select distinct khach_hang.name as 'Họ và tên khách hàng'
from khach_hang;

-- Cách 2 --
select khach_hang.name as 'Họ và tên khách hàng'
from khach_hang
group by khach_hang.name;

-- Cách 3 --
select name as 'Họ và tên khách hàng'
from (
    select name, row_number() over(partition by name) AS rn
    FROM khach_hang
) AS sub
WHERE rn = 1;
