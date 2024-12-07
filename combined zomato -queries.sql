-- Query 1: View the First Few Records
select * from zomato

limit 10;

-- Restaurants Offering Both Table Booking and Online Delivery

select restraunt_name, has_table_booking , has_online_delivery

from zomato

where has_table_booking = 'yes' and has_online_delivery = 'yes'
;-- count the number of restraunts in each city

select city, count(restraunt_id) as no_restraunts

from zomato
group by city 
order by no_restraunts desc;














-- get the restraunt with heighest rating

select restraunt_name, aggregate_rating, city 
from zomato
order by aggregate_rating desc
limit 10;
-- fine the average cost for two in each city q-2

select city, avg(average_cost_for_two) as average_cost
from zomato
group by city
order by average_cost desc;


-- identify restraunts offering online delivery

select restraunt_name, city, has_online_delivery
from zomato
where has_online_delivery = 'yes'
;-- Find Restaurants with Average Cost Greater Than a Specific Value -300000

use food;
select restraunt_id , restraunt_name, average_cost_for_two ,city

from zomato

where average_cost_for_two > 300000

order by average_cost_for_two desc;







-- Top Rated Restaurants in Each City 
select city, restraunt_name , aggregate_rating as max_rating 
from zomato
where aggregate_rating=(

select max(aggregate_rating)
from zomato
where zomato.city=zomato.city
);




-- Restaurants with Low Cost but High Ratings-- cost<100000 , rating=4

select restraunt_name, aggregate_rating, average_cost_for_two 
from zomato
where average_cost_for_two < 100000 and aggregate_rating > 4 
order by average_cost_for_two desc
; -- Cities with the Most Votes
 
 select city , sum(votes) as most_votes
 from zomato
 group by city
 order by most_votes desc;

 USE FOOD;
CREATE TABLE ZOMATO 
(
RESTRAUNT_ID INT,
RESTRAUNT_NAME varchar(100),
country_code int,
city varchar(100),
cuisines varchar(100),
average_cost_for_two int,
currency varchar(50),
has_table_booking char(3),
has_online_delivery char(3),
aggregate_rating decimal(2,1),- SQL Standards
votes int);