--TASK 15 : Find the average Score of each country  conserdring the only customer with a score not equal to 0
---  and return only those contries with an average scor greater then 430


USE MyDatabase

Select
    country,
    Avg(score) AS Avg_Score
From DBO.customers
Where score != 0
group by country
Having avg(score) > 430



--7) Distinct Clause : To get unique values from the column

-- TASK 16 : Return unique list of all Countries

Select 
  Distinct country
from dbo.customers


-- Top Clause : To get the no of Rows from the table

-- TASK 17 : Return only 3 customers

select
top 3 *
from dbo.customers

--TASK 18 : Retrive the top 3 customers with the highst Score.

select 
   top 3*
from dbo.customers
order by Score Desc

-- TASK 19 : Retrive the lowest 2 customers  based on the  customers.

select 
  top 2*
from dbo.customers
order by Score Asc

--TASK 20 : Get the two most Recent Orders


Select 
  top 2 *
from dbo.orders
order by order_date Desc


-- ALL Togother

--TASK 21 : Calculate average score for each country considering only customers
--- with a score not equal to 0 and return only those countries with an average score
--- greater then ans sort the result by the higest average score.

Select 
country,
avg(score) AS avg_score
from dbo.customers
where score != 0
group by country 
having Avg(score) > 430
order by Avg(Score) Desc


--Additional SQL Fetature :
-- Features 1 : Execute multiple quires at once .

Select * from customers;
Select * from orders;

-- Features 2 : Slect a static or constent values without accessing any table

select 123 as static_number;
select 'Hello' as Static_string;


-- Features 3: assign a constent values a column in a query
 
 select 
 id,
 first_name,
 'New Customers' As Customer_type
  from customers



 
