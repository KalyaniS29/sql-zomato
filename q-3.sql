-- get the restraunt with heighest rating

select restraunt_name, aggregate_rating, city 
from zomato
order by aggregate_rating desc
limit 10;
