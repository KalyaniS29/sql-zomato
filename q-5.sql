-- identify restraunts offering online delivery

select restraunt_name, city, has_online_delivery
from zomato
where has_online_delivery = 'yes'
;