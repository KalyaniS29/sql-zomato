-- fine the average cost for two in each city q-2

select city, avg(average_cost_for_two) as average_cost
from zomato
group by city
order by average_cost desc;


