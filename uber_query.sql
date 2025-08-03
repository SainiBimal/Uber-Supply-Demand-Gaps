use lab;
select * from clean_uber;

select count(*)
from clean_uber;

show columns from clean_uber;

-- Alter table clean_uber add index (Request_id);

-- Alter table clean_uber
-- rename column `Time Period ` to Time_Period;

-- Alter table clean_uber
-- rename column `Pickup point` to Pickup_point;

-- Alter table clean_uber
-- rename column `Driver id` to Driver_id;

-- Alter table clean_uber
-- rename column `Request id` to Request_id;

update clean_uber
set Driver_id = 0
where Driver_id is NULL and Request_id is not NULL;

select Status,count("Request_id") as Request
from clean_uber
group by Status;

select Status, Time_Period, count("Request_id") as Request
from clean_uber
where Status in ("Cancelled", "No Cars Available")
group by Status, Time_Period
order by field(Time_Period, "Early Morning" , "Morning", "Afternoon", "Evening", "Night", "Late Night");

select Status, Pickup_point, count("Request_id") as Request
from clean_uber
where Status in ("Cancelled", "No Cars Available")
group by Status, Pickup_point;

select Hour, sum(case when Status = "Cancelled" then 1 else 0 end) as Cancel_Request,
sum(case when Status = "No Cars Available" then 1 else 0 end) as No_Cars
from clean_uber
group by hour
order by Hour;

select Hour, sum(case when Pickup_point = "Airport" then 1 else 0 end) as Airport_unfulfill_requests,
sum(case when Pickup_point = "City" then 1 else 0 end) as City_unfulfill_requests
from clean_uber
where Status in ("No Cars Available","Cancelled")
group by hour
order by Hour;

select round(100 * sum(case when Pickup_point = "Airport" then 1 else 0 end) / count(*), 2) as Airport_percentage,
round(100 * sum(case when Pickup_point = "City" then 1 else 0 end ) / count(*), 2) as City_percentage
from clean_uber
where Status in ("No Cars Available", "Cancelled");

select Driver_id, count(*) as Total_request, sum(case when Status = "Trip Completed" then 1 else 0 end) as Complete_request,
sum(case when Status = "Cancelled" then 1 else 0 end) as Cancel_request
from clean_uber
group by Driver_id
order by Cancel_request desc; 


with cte1 as (select count(*) as Total_requests, sum(case when Status = "Trip Completed" then 1 else 0 end) as Complete_request,
sum(case when Status = "Cancelled" then 1 else 0 end) as Cancel_request,
sum(case when Status = "No Cars Available" then 1 else 0 end ) as No_car_request,
round((100 * sum(case when Status = "Trip Completed" then 1 else 0 end)) / count(*),2) as Completion_rate,
round(100 * ((sum(case when Status = "Cancelled" then 1 else 0 end)) +
 (sum(case when Status = "No Cars Available" then 1 else 0 end)))/ count(*),2) as Incompletion_rate
 from clean_uber)
 
 select * from cte1;


with cte2 as (select Pickup_point, count(*) as Total_requests, sum(case when Status = "Trip Completed" then 1 else 0 end) as Complete_request,
sum(case when Status = "Cancelled" then 1 else 0 end) as Cancelled_request, 
sum(case when Status = "No Cars Available" then 1 else 0 end) as No_Cars_request,
round(100 * sum(case when Status = "Trip Completed" then 1 else 0 end) / count(*),2) as Completion_rate,
round(100 * ((sum(case when Status = "Cancelled" then 1 else 0 end)) + 
(sum(case when Status = "No Cars Available" then 1 else 0 end))) / count(*),2) as Incompletion_rate
from clean_uber
group by Pickup_point)

select Pickup_point, Total_requests, Complete_request, Cancelled_request, No_Cars_request, Completion_rate, Incompletion_rate
from cte2;



with cte3 as (select Hour, count(*) as Total_requests, sum(case when Status = "Trip Completed" then 1 else 0 end) as Complete_request,
sum(case when Status = "Cancelled" then 1 else 0 end) as Cancelled_request, 
sum(case when Status = "No Cars Available" then 1 else 0 end) as No_Cars_request,
round(100 * sum(case when Status = "Trip Completed" then 1 else 0 end) / count(*),2) as Completion_rate,
round(100 * ((sum(case when Status = "Cancelled" then 1 else 0 end)) + 
(sum(case when Status = "No Cars Available" then 1 else 0 end))) / count(*),2) as Incompletion_rate
from clean_uber
group by Hour
order by Hour)

select Hour, Total_requests, Complete_request, Cancelled_request, No_Cars_request, Completion_rate, Incompletion_rate
from cte3;



with cte4 as (select Driver_id, count(*) as Total_requests,
sum(case when Status = "Cancelled" then 1 else 0 end) as Cancelled_request
from clean_uber
group by Driver_id)

select Driver_id, Total_requests, Cancelled_request,
dense_rank() over ( order by Cancelled_request desc) as Incomplete_rank
from cte4;

