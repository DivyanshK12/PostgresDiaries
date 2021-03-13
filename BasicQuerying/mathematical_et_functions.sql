-- convert length of movie from minute to hour
SELECT film_id, title, length,
        (length/60.0) length_in_hour,
        round((length/60.0), 2) length_in_hour_rounded
FROM film;

-- where the length of movie is over two hours
SELECT film_id, title, length,
        (length/60.0) length_in_hour,
        round((length/60.0), 2) length_in_hour_rounded
FROM film
WHERE (length/60.0) > 2.0;

-- while converting rental rate to nearest highest integer
SELECT film_id, title, rental_rate,
        ceiling(rental_rate) rental_rate_new
FROM film;