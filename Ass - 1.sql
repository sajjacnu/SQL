-- Q1

select tailnum, origin, dest, distance, hour, minute  from sys.flights
-- group by origin, dest
group by tailnum
order by distance DESC, hour desc
limit 10
;

-- Q2
-- What are the different numbers of engines in the planes table? 
-- For each number of engines, which aircraft have the most number of seats? 
-- Show the SQL statement(s) that support your result. 
select engines, max(seats) from sys.planes
group by engines
;

-- 3. Show the total number of flights.

select count(flight) as No_flights from sys.flights
;


-- 4. Show the total number of flights by airline (carrier). 

select carrier, count(flight) as No_flights from sys.flights
group by carrier
;

-- 5. Show all of the airlines, ordered by number of flights in descending order. 

select carrier as Airlines from sys.flights
group by carrier
order by count(flight) 
;

-- 6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.

select carrier as Airlines from sys.flights
group by carrier
order by count(flight) limit 5 
;
 
-- 7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order.

select carrier as Airlines from sys.flights
where distance >= 1000
group by carrier
order by count(flight) limit 5 
;
 
-- 8. Create a question that 
-- 	(a) uses data from the flights database, and 
-- 	(b) requires aggregation to answer it, and write down both the question, 
-- 	and the query that answers the question

select max(distance), flight, origin, dest , air_time from sys.flights
where dep_delay = 0
and arr_delay = 0
group by origin
order by 1 desc
;
