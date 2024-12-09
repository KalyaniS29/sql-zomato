-- Find the percentage of restaurants that offer table bookings and online delivery for each city.
select 
city,
round(100 * sum( case when  has_table_booking = 'yes' then 1 else 0 end) / count(restraunt_id), 2) as table_booking_percentage ,
round (100 * sum( case when has_online_delivery ='yes' then 1 else 0 end) / count(restraunt_id),2) as online_delivery_percentage

from zomato
group by city 
order by table_booking_percentage desc, online_delivery_percentage desc;