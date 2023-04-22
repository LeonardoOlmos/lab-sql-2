-- Leonardo Olmos Saucedo / Lab SQL Queries 2

USE sakila;

-- 1. Select all the actors with the first name ‘Scarlett’.
SELECT a.*
FROM sakila.actor a
WHERE a.first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
SELECT a.*
FROM sakila.actor a
WHERE a.last_name = 'Johansson';

-- 3. How many films (movies) are available for rent?
SELECT COUNT(*)
FROM sakila.inventory;

-- 4. How many films have been rented?
SELECT COUNT(*)
FROM sakila.rental;

-- 5. What is the shortest and longest rental period?
SELECT MAX(f.rental_duration) AS max_rental_period, MIN(f.rental_duration) AS min_rental_period
FROM sakila.film f;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(f.`length`) AS max_duration, MIN(f.`length`) AS min_duration
FROM sakila.film f;

-- 7. What's the average movie duration?
SELECT AVG(f.`length`) AS avg_duration
FROM sakila.film f;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT CONCAT(FLOOR(AVG(f.`length`)/60),'h ',MOD(ROUND(AVG(f.`length`)),60),'m')  AS duration
FROM sakila.film f;

-- 9. How many movies longer than 3 hours?
SELECT COUNT(*) AS total_movies
FROM sakila.film f
WHERE f.`length`/60 > 3;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(UPPER(SUBSTRING(c.first_name, 1, 1)),LOWER(SUBSTRING(C.first_name, 2)),  ' ', UPPER(c.last_name), ' - ', LOWER(c.email)) AS user_contact
FROM sakila.customer c;

-- 11. What's the length of the longest film title?
SELECT LENGTH(MAX(f.title)) AS film_title_length
FROM film f;