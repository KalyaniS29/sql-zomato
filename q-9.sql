 -- Cities with the Most Votes
 
 select city , sum(votes) as most_votes
 from zomato
 group by city
 order by most_votes desc;

 