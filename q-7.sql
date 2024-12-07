-- Top Rated Restaurants in Each City 
select city, restraunt_name , aggregate_rating as max_rating 
from zomato
where aggregate_rating=(

select max(aggregate_rating)
from zomato
where zomato.city=zomato.city
);




