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
votes int);