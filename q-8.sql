-- Restaurants with Low Cost but High Ratings-- cost<100000 , rating=4

select restraunt_name, aggregate_rating, average_cost_for_two 
from zomato
where average_cost_for_two < 100000 and aggregate_rating > 4 
order by average_cost_for_two desc
;