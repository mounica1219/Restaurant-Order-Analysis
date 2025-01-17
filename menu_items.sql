SELECT * FROM restaurant_db.menu_items;

select count(item_name) as items 
from restaurant_db.menu_items
order by item_name;

select min(item_name) as least_price, max(item_name) as expensive
from restaurant_db.menu_items
order by price;

select category,count(category) as Italian_dishes, min(item_name) as least_price, max(item_name) as expensive
from restaurant_db.menu_items
where category = "Italian"
order by price;

select category, count(item_name) as dishes_count, avg(price) as avg_price
from restaurant_db.menu_items
group by category;