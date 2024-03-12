SELECT * FROM actor
WHERE last_name = 'Wahlberg'

SELECT COUNT(*) 
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99

SELECT film_id, COUNT(film_id) AS "most_copies"
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC
LIMIT 1;

SELECT COUNT(last_name) 
FROM customer
WHERE last_name = 'William'

SELECT staff_id, COUNT(staff_id) AS "rentals"
FROM rental
GROUP BY staff_id

SELECT DISTINCT(COUNT(district)) FROM address

SELECT film_id, COUNT(*) AS actor_amt
FROM film_actor
GROUP BY film_id
ORDER BY actor_amt DESC

SELECT COUNT(*) FROM customer
WHERE last_name LIKE '%es'

SELECT amount, COUNT(*) AS num_rentals
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250

SELECT rating, COUNT(*) AS total_movie
FROM film
GROUP BY rating
ORDER BY total_movie DESC