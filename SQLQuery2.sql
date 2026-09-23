/*--------------------------------------------------
BASIC SQL : CHAPTER NO :2 (DATA QUARY LANGUAGE - DQL)
----------------------------------------------------*/

--SELECT , FROM , WHERE 
-- ORDER BY CLOUSE : TO SHORT THE DATA IN ASCEDING ORDER

-- TASK 7 : Retrive all customer and sort the result by the highst score first


USE MyDatabase

SELECT
   * 
FROM DBO.customers
ORDER BY score DESC


-- TASK 8 : Retrive all customers and Sort the result by the lowest score first

SELECT 
  *
FROM DBO.customers
ORDER BY score ASC

-- TASK 9 : Retrive all customer and sort the result by the country

SELECT 
 *
FROM DBO.customers
ORDER BY country ASC

-- TASK 10 :Retrive all customer and sort the result by the country and then by the heighst score.

SELECT
  * 
FROM DBO.customers
ORDER BY country ASC ,score DESC

-- TASK 11 :  Retrive the name ,country and score of customer whose score is not equal to 0
--            and sort the result by the heigst score First .


SELECT 
  first_name,
  country,
  score
FROM DBO.customers
WHERE SCORE != 0
ORDER BY score DESC
 

--5) GROUP BY CLOUSE : GROUP WISE AGGREGRATON PERFORM (GROUPING))

--TASK 12 : Find the total Score each country.


SELECT 
  country,
  SUM(score) AS Total_score
FROM DBO.customers
GROUP BY country


--TASK 13 : Find the total score and total number of customer for each country.

SELECT 
  country,
  SUM(score) AS total_score,
  COUNT(id) AS total_customer
FROM DBO.customers
GROUP BY country



--HAVING CLOUSE : TO FILTER DATA AFTER GROUP WISE AGGREGATION

--TASK 14 : Find the avarage score for the each country and return only those countires with
--an average score grater then 430


SELECT 
  country,
  AVG(score) AS avg_score
FROM DBO.customers
GROUP BY country
HAVING AVG(score) >430