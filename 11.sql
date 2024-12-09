-- Identify the most popular cuisine in each city based on votes.
use food;

with cuisines_vote as(
select city, cuisines, sum(votes) as total_votes
from zomato
group by city, cuisines),

ranked_cuisines as(
select city, cuisines, total_votes, 
rank() over (partition by city order by total_votes desc ) as rank_position 
from cuisines_vote)

select 
city,cuisines, total_votes as max_votes
from ranked_cuisines
where rank_position =1
order by max_votes desc;
