SELECT * FROM restaurant_db.order_details;

select Min( order_date) , max(order_date) 
from restaurant_db.order_details;

select count(distinct(order_id)) as orders_count, count(order_details_id) as items_ordered_count
from restaurant_db.order_details;

select order_id, count(item_id) as item_count
from restaurant_db.order_details
group by order_id
order by item_count desc;

select count(*) from
(select order_id, count(item_id) as item_count
from restaurant_db.order_details
group by order_id
having item_count > 12) as orders_count;
