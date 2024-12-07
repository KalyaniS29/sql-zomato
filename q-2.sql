-- count the number of restraunts in each city

select city, count(restraunt_id) as no_restraunts

from zomato
group by city 
order by no_restraunts desc;














