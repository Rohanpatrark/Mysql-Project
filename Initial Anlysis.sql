use	restaurant_db;

-- 1 view the menu items table.
select * from menu_items;

-- 2 find the number of items menu items table.
select count(*) from menu_items;	
-- 3 least and most expensive items
select * from menu_items
order by price desc;
-- 4 how many italian dishes in the menu.
select count(*) from menu_items
where category='Italian';
-- least and most expensive italian dishes
select *
from menu_items
where category='Italian'
order by price desc	;

-- How many dishes are there in each category
select category, count(menu_item_id) as num_id
from menu_items
group by category;

select category, avg(price) as avg_price
from menu_items
group by category;

