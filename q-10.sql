-- Restaurants Offering Both Table Booking and Online Delivery

select restraunt_name, has_table_booking , has_online_delivery

from zomato

where has_table_booking = 'yes' and has_online_delivery = 'yes'
;