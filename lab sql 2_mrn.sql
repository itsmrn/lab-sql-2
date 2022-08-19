-- LAB SQL 2
-- Select all the actors with the first name ‘Scarlett’.

use sakila;
select * from actor;
select first_name from actor where first_name = "Scarlett";

-- Select all the actors with the last name ‘Johansson’.
select last_name from actor where last_name = "Johansson";

-- How many films (movies) are available for rent?
select * from inventory;
select * from film;
select count(inventory_id) from inventory; -- 4581 movies are available for rent

-- How many films have been rented?
select * from rental;
select count(*) from rental; -- 16044 have been rented

-- What is the shortest and longest rental period?
select * from film;
select min(rental_duration) from film;
select max(rental_duration) from film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select * from film;
select min(length) as min_duration from film;
select max(length) as max_duration from film;

-- What's the average movie duration?
select * from film;
select avg(length) from film;

-- What's the average movie duration expressed in format (hours, minutes)?
select avg(length) from film;

-- How many movies longer than 3 hours?
select count(length) from film where length > 180;

-- select issued, substring(issued, 1,6) from card;
select*, left(issued, position("" in issued)-1) from card; -- thi is the solution to the probleme we encountere dbefore, the dfference

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select * from customer;
select*, left (email, position("@" in email)-1) from customer;
select*, replace(left (email, position("@" in email)-1),"."," ") from customer; -- first we separate name at the @ string and then replace "." by space

-- What's the length of the longest film title?
select * from film;
select max(length(title)) from film; 