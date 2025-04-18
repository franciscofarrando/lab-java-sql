select count(distinct flight_number) as 3_total_flights from flights;

select avg(flight_mileage) as 4_flight_mileage_AVG from flights;

select avg(seats) as 5_aircraft_seats_AVG from aircrafts;

select customer_status, avg(total_mileage) as 6_mileage_by_status_AVG from customers
group by customer_status;

select customer_status, max(total_mileage) as 7_max_miles_flown from customers
group by customer_status;

select count(aircraft) as 8_aircraft_boeing_count from aircrafts 
where aircraft like '%boeing%';

select flight_number, max(flight_mileage) as 9_fligths_between from flights
where flight_mileage between 300 and 2000
group by flight_number;

select customers.customer_status, avg(flight_mileage) as 10_flight_by_status_avg from flights
inner join customers on flights.customer_id = customers.customer_id
group by customers.customer_status;

select customers.customer_status, max(aircrafts.aircraft) as 11_aircraft_by_gold from aircrafts
join flights on aircrafts.aircraft_id = flights.aircraft_id
join customers on flights.customer_id = customers.customer_id
where customers.customer_status like "gold"
group by customers.customer_status;
