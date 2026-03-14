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

-- Return unique list of the countries.

use mydatabase;

select distinct country
from customers;

-- Retrieve only top 3 customers 
use mydatabase;
select  *
from customers
LIMIT 3

-- Retrieve the top 3 customers with the highest score.

use mydatabase;  
select *
from customers
order by score desc
limit 3

-- -- Retrieve the  3 customers with the lowest score.

use mydatabase

SELECT *
from Customers
order by score asc
limit 3

-- Get the msot recent orders.

use mydatabase;

select*
from Orders
order by order_date desc
limit 2;

-- Create a new table called persons with column id , person_name , birth_date and phone.

create table personss (
id  int not null,
person_name varchar(50) not null,
bith_date date,
phone varchar(14) not null, 
constraint pk_persons primary key(id)
)

-- Create a new table called person with column id , person birth date and phone. 

create table persons (
id INT NOT NULL,
person_name VARCHAR (50) NOT NULL,
birth_date DATE NOT NULL,
phone VARCHAR(15) NOT NULL,
constraint pk_persons primary key (id)
);
-- add a new column called email to person table. 
 
alter table persons 
add email varchar(50) not null,
add city varchar(50) not null;

-- remove the column from the persons table

alter table persons 
drop column city;

-- delete the table person from the database

drop table person;


-- Insert the id , first_name, country, score in the customers table

use mydatabase

insert into Customers (id, first_name, country, score)
values(6 , "Alex", "Canada", 790),

insert into Customers (id, first_name, country, score)
values(7, "BARA" , "UK" , 820)

select* from customers;

-- Copy from customer tables into persons 

 

