---- Retrive all customer data 
use mydatabase;

select *
From Customers;

-- Retrive all orders data 
use mydatabase;

Select *
From orders;

-- Retrieve each customer's name country and score

use mydatabase;

SELECT 
    first_name, country, score
FROM Customers;

-- Retrive Customer with score not equal to 0

use mydatabase;
SELECT *
FROM
    Customers
where score != 0;

-- Retrive Customers From Germany and USA


use mydatabase;
SELECT *
FROM
    Customers
WHERE
    country = 'Germany';


-- Retrive Customers first name and country who lives in the Germany

use mydatabase;

SELECT 
    first_name, country
FROM
    Customers
WHERE
    country = 'Germany';


-- Retrieve all customers and sort the result by the highest score first. 

use mydatabase;
SELECT *
    
FROM
    Customers
ORDER BY score DESC;

-- Retrieve all customers and sort the result by the lowest score first. 

USE mydatabase;

SELECT 
    *
FROM
    Customers
ORDER BY score ASC;


-- Retrive all customers and sort the result by the country and then by the highest score.

use mydatabase;

SELECT 
    *
FROM
    Customers
ORDER BY country ASC , score DESC


-- find the  total score for each country 

use mydatabase;

select 
country , 
SUM(score)  AS TOTAL_SCORE
from Customers
group by country 

-- Find the total score and total numbers of customers fore each country 

use mydatabase;

SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM
    Customers
GROUP BY country

/*Find the average score for each country considering only
 customers with score ≠ 0 and return only those countries with an average score greater than 430.*/
 
 use mydatabase;
 
 SELECT 
    country, AVG(score) AS avg_score
FROM
    customers
WHERE
    score != 0
GROUP BY country
HAVING AVG(score) > 430;
 

