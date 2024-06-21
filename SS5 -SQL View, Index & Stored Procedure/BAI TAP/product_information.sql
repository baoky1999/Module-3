create database products_information;

use products_information;

create table products(
id int auto_increment primary key,
product_code int not null,
product_name varchar(50),
product_price varchar(50),
product_amount int,
product_desciption varchar(100),
product_status varchar(50)
);
