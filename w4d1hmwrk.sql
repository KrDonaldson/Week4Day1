-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(AMOUNT)
FROM payment
WHERE amount > 3.99 AND amount < 5.99;

-- 3. What film does the store have the most of? (search in inventory)
SELECT MAX(FILM_ID)
FROM inventory;

SELECT title
FROM film
WHERE film_id = 1000;

-- 4. How many customers have the last name ‘William’?
SELECT count(last_name)
FROM customer
WHERE last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id
FROM rental
GROUP BY staff_id
ORDER BY  COUNT(staff_id) DESC LIMIT 1;

-- 6. How many different district names are there?
SELECT count(DISTINCT district)
FROM address;

-- 7. What film has the most actors in it? (use film_actor and get film_id)
SELECT film_id
FROM film_actor
GROUP BY film_id
ORDER BY  COUNT(actor_id) DESC LIMIT 1;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? 
-- (use customer table)
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es' and store_id = 1;

-- 9. How many payment amounts had a number of rentals above 250 for customers
-- with ids between 380 and 430?(use group by and having > 250)
SELECT DISTINCT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(amount) > 250;

-- 3. I have tried SELECT COUNT(DISTINCT amount) but that returns 11

-- 10. Within the film table, how many rating categories are there?
SELECT COUNT(DISTINCT rating)
FROM film;

-- 10.b. And what rating has the most movies total?
SELECT rating
FROM film
GROUP BY rating
ORDER BY  COUNT(film_id) DESC LIMIT 1;
