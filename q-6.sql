-- Find Restaurants with Average Cost Greater Than a Specific Value -300000

use food;
select restraunt_id , restraunt_name, average_cost_for_two ,city

from zomato

where average_cost_for_two > 300000

order by average_cost_for_two desc;







