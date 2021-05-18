create database custordersshop;

use custordersshop;

create table customer(
cust_num int not null,
first_name varchar(20) not null,
surname varchar(20) not null,
first_line_address varchar(40) not null,
postcode varchar(10) not null,
mobile_number int not null,
email varchar(50) not null,
primary key (cust_num)
);

alter table customer
modify mobile_number char(11) not null

explain customer;

insert into customer (cust_num, first_name, surname, first_line_address, postcode, mobile_number, email)
values ('10704', 'Sharon', 'Smith', '14 New Road', 'WV10 7NL', '07457462533', 'sharon.smith@outlook.com'),
('97606', 'Arthur', 'Perez', '98 Wergs Road', 'WV6 8TH', '07388732280', 'arthur.perez@gmail.com'),
('23940', 'Raymond', 'Williams', '15 Severn Close', 'WV12 5UE', '07383775421', 'raymond_williams@msn.com'),
('74096', 'Timothy', 'Baker', '12 The Windrow', 'WV6 7TY', '07457821580', 'baker.timothy@yahoo.com'),
('70763', 'Patricia', 'Henderson', '9 Brookside Close', 'WV5 8JU', '07457026977', 'pat_henderson@me.com'),
('50400', 'Kenneth', 'Campbell', '3 Ascot Drive', 'WV4 5SX', '07528633606', 'campbell_kenneth@live.com'),
('87166', 'Christine', 'Patterson', '23 Astbury Close', 'WV1 2DD', '07454027733', 'chris_patterson@aol.com'),
('40181', 'Craig', 'Moore', '9 Linton Road', 'WV4 4DX', '07563550639', 'craig.moore@gmail.com'),
('89043', 'Albert', 'Barnes', '80 Belmont Road', 'WV4 5UE', '07439987900', 'a.barnes@me.com'),
('21100', 'Mildred', 'Taylor', '3 Villa Close', 'WV10 7LH', '07439987900', 'mil.taylor@gmail.com');

select * from customer;

create table orders(
cust_num  int not null,
order_numb int not null,
prod_name varchar(30) not null,
date_bought date not null,
paym_method char(4) not null,
amount decimal (3,2) not null,
primary key (cust_num)
);

insert into orders (cust_num, order_numb, prod_name, date_bought, paym_method, amount)
values ('10704', '739', 'butterfly wall print', '21/04/30', 'cash', '26.00'),
('97606', '044', 'rose gold lamp', '21/04/09', 'card', '45.00'),
('23940', '275', 'naomi long mirror', '21/04/15', 'card', '56.50'),
('74096', '692', 'stair basket', '21/04/10', 'cash', '19.00'),
('70763', '807', 'lace pinboard', '21/04/22', 'cash', '15.00'),
('50400', '152', 'stair basket', '21/04/20', 'card', '19.00'),
('87166', '477', 'umberella  stand', '21/05/03', 'card', '36.75'),
('40181', '869', 'blue throw rug', '21/04/09', 'card', '55.00'),
('89043', '289', 'margot side table', '21/05/26', 'cash', '126.00'),
('21100', '590', 'rose deco bowl', '21/04/25', 'card', '21.00');

explain orders;

alter table orders
modify amount dec(5,2) not null;

select customer.cust_num, orders.cust_num
from customer
inner join orders
on customer.cust_num = orders.cust_num;

explain customer;
select * from customer;
select * from orders;

select * from orders
where amount between 50.00 and 150.00;

select * from customer, orders
where customer.cust_num = orders.cust_num and orders.paym_method = "card";

