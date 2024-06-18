create database quan_ly_ban_hang;

use quan_ly_ban_hang;

create table customers(
id int primary key,
name varchar(50),
age int
);

create table products(
id int primary key,
name varchar(50),
price double
);

create table orders(
id int primary key,
id_customer int,
create_day date,
total_price double,
foreign key fk_orders_customers(id_customer) references customers(id)
);

create table order_detail(
id_order int,
id_product int,
quantity int,
primary key(id_order, id_product),
foreign key fk_order_detail_orders(id_order) references orders(id),
foreign key fk_order_detail_product(id_product) references products(id)
);