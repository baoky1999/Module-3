use quan_ly_ban_hang;
-- câu 1 --
select o.id, o.create_day, products.price
from orders o
join order_detail on o.id = order_detail.id_order
join products on order_detail.id_product = products.id;

-- câu 2 --
select customers.name, products.name as san_pham
from customers 
join orders on customers.id = orders.id_customer
join order_detail on orders.id = order_detail.id_order
join products on order_detail.id_product = products.id;

-- câu 3 --
select customers.name
from customers
left join orders on customers.id = orders.id_customer
where orders.id_customer is null;

-- câu 4 --
select o.id, o.create_day as ngay_ban, sum(d.quantity * products.price) as gia_tien
from orders o
join order_detail d on o.id = d.id_order
join products on d.id_product = products.id
group by o.id, o.create_day
