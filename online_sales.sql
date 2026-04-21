create database sales;
use sales;
create table online_sales(
order_id int primary key,
order_date date,
amount int,
product_id int 
);
insert into online_sales values
(1,"2024-01-10",500,101),
(2,"2024-02-10",500,102),
(3,'2024-02-05',300,103),
(4,'2024-02-20',900,104),
(5,'2024-03-01',1200,101),
(6,'2024-03-18',400,102),
(7,'2024-04-10',800,103),
(8,'2024-04-22',600,104);
select * from online_sales;
select year(order_date) as year,
month(order_date) as month,
sum(amount) as total_reveune,
count(distinct order_id) as total_orders from online_sales
group by year(order_date),month(order_date)
order by year,month;
select * from online_sales;
select year(order_date) as year,
month(order_date) as month,
sum(amount) as total_reveune,
count(distinct order_id) as total_orders from online_sales
group by year(order_date),month(order_date)
order by total_reveune desc
limit 3;