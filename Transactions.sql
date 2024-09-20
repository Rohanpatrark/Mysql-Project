-- 1 view the order details table
select * from order_details;
-- 2what is the date range of the table
-- select * from order_details
-- order by order_date;
select min(order_date), max(order_date) from order_details;
-- 3 How many orders are made in this data range
select count(distinct order_id) from order_details;
-- 4 How many items are odered
select count(*) from order_details;
-- 5 which order has most number of items.
select order_id,count(item_id)as num_items
 from order_details
group by order_id
order by num_items desc;
-- 6 How many orders has more than 12 items

select count(*) from
(select order_id,count(item_id)as num_items
 from order_details
group by order_id
having num_items>12) as num_orders;

