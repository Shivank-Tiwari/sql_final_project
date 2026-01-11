-- group the order by date and calculate the average  number of pizza order per day
select round( avg(quantity),2) from 
(select orders.order_date,sum(orders_details.quantity) as quantity
from orders join orders_details 
on orders.order_id= orders_details.order_id
group by orders.order_date) as order_quantity;
