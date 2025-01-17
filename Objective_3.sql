USE restaurant_db;
select * from menu_items;
select * from order_details;

select *
from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id;

 
select item_name,category, count(order_details_id) as Num_Of_orders
from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id
group by item_name, category
order by Num_Of_orders desc;

select order_id, sum(price) as total_price
from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_price desc
limit 5 ;


select category, count(item_id) as num_items
from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440
group by category;
 
select order_id, category, count(item_id) as num_items
from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id IN (440, 2075, 1957, 330, 2675)
group by order_id, category;


select order_id, sum(price) as total_price
from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_price desc
limit 1;