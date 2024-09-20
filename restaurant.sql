-- combine both the tables
select * FROM menu_items;
select * from order_details;
 select * 
 from order_details od left join menu_items mi
      on od.item_id=mi.menu_item_id;
-- least snd most odered item
select item_name ,category, count(order_details_id) as num_p
from order_details od left join menu_items mi
      on od.item_id=mi.menu_item_id
group by item_name, category
order by num_p desc;

-- orders spending most mony
select order_id, sum(price) as total_spend
from order_details od left join menu_items mi
      on od.item_id=mi.menu_item_id
group by order_id
order by total_spend desc
limit 5;
-- details of the highest spend order
select category,count(item_id) AS num_items
 from order_details od left join menu_items mi
      on od.item_id=mi.menu_item_id
      where order_id =440
      group by category;


select category,order_id,count(item_id) AS num_items
 from order_details od left join menu_items mi
      on od.item_id=mi.menu_item_id
      where order_id in(440,2075,1975,330,2675)
      group by order_id,category;
