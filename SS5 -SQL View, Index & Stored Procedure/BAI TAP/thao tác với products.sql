-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

explain select * from products where product_code = 'Tủ lạnh'; -- kiểu query là all
alter table products add index idx_product_code(product_code);
explain select * from products where product_code = 'Tủ lạnh'; -- kiểu query là ref

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

explain select * from products where product_name = 'Điều hòa' or product_name = 'Tủ lạnh'; -- Kiểu query là all
alter table products add index idx_product_name_price(product_name, product_price);
explain select * from products where product_name = 'Điều hòa' or product_name = 'Tủ lạnh'; -- Kiểu query là range

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.

create view product_view as select product_code, product_name, product_price, product_status
from products;
select * from product_view;

-- Tiến hành sửa đổi view

create or replace view product_view as select product_code, product_name, product_price, product_status
from products
where product_name = 'Điều hòa';
select * from product_view;

-- xóa view vừa tạo

drop view product_view;


-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

delimiter //
create procedure findAllProducts()
begin
select * from products;
end //
delimiter ;
call findAllProducts();

-- Tạo store procedure thêm một sản phẩm mới

delimiter //
create procedure insertProducts(
			in new_product_code int,
            in new_product_name varchar(50),
            in new_product_price varchar(50),
            in new_product_amount int,
            in new_product_desciption varchar(100),
            in new_product_status varchar(50)
            )
begin
	insert into products (product_code, product_name, product_price, product_amount, product_desciption, product_status)
				   values(new_product_code, new_product_name, new_product_price, new_product_amount, new_product_desciption, new_product_status);
end //
delimiter ;
call insertProducts(999, 'Máy lọc nước', '250$', 7, 'Công nghệ kháng khuẩn đến từ Nhật Bản', 'Còn hàng');

-- Hiển thị lại danh sách để xem kết quả 
delimiter //
create procedure findAllProducts2()
begin
select * from products;
end //
delimiter ;
call findAllProducts2();

-- Tạo store procedure sửa thông tin sản phẩm theo id

delimiter // 
create procedure update_product(
			in new_product_id int,
			in new_product_code int,
            in new_product_name varchar(50),
            in new_product_price varchar(50),
            in new_product_amount int,
            in new_product_desciption varchar(100),
            in new_product_status varchar(50)
            )
begin
	update products set product_code = new_product_code,
						product_name = new_product_name,
                        product_price = new_product_price,
                        product_amount = new_product_amount,
                        product_desciption = new_product_desciption,
                        product_status = new_product_status
				  where id = new_product_id;
end //
delimiter ;
call update_product(7, 878, 'Máy chiếu tại nhà', '630$', 8, 'Hình ảnh 2k, độ phủ màu sắc nét', 'Còn hàng');

-- Hiển thị lại danh sách để xem kết quả
delimiter //
create procedure findAllProducts3()
begin
select * from products;
end //
delimiter ;
call findAllProducts3();

-- Tạo store procedure xoá sản phẩm theo id

delimiter //
create procedure delete_products(
			in input_id_product int)
begin
	delete from products
    where id = input_id_product;
end //
delimiter ;
call delete_products(6);

delimiter //
create procedure findAllProducts4()
begin
select * from products;
end //
delimiter ;
call findAllProducts4();
