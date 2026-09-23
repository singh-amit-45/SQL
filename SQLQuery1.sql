/*------------------------------------------------------------------
BAISC SQL :CHAPTER NO :2 ( DATA LANGUAGE COMMAND) : SELECT
--------------------------------------------------------------------*/

-- COMMENTS :A) SINGLE LINE COMMENTS B) MULTI LINE COMMENTS

--A) SINGLE LINE COMMENTS:
--This is single comments

--B) Multi line comments

/* This is 
     multi line 
     comments
     */
--1) Select all Column :

--Task 1 : Retrive All Customer Data


USE MyDatabase; 
SELECT 
      *
FROM  DBO.customers

-- Task 2 : Retrive all orders Data

SELECT 
    *
FROM DBO.orders

-- SELECT SPECIFIC COLUMN 

-- Task3: Retrive Each Customer Name Country & Score

SELECT 
  first_name,
  Country,
  Score
FROM DBO.customers

--3) WHERE CLAUSE : TO FILTER DATA BASED ON GIVEN CONDITION

--TASK 4 : Retrive Customer with a Score not Equal to 0

SELECT 
   *
FROM DBO.Customers
WHERE score != 0

-- Task 5) Retrive Customers from Germany

SELECT 
  *
FROM DBO.customers
WHERE country = 'Germany'

--Task 6 :Retrive the name and country of customers from Germany

SELECT 
  first_name,
  country
FROM DBO.customers
WHERE country ='Germany'


  
 