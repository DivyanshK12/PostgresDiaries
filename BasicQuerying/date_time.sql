-- Retrieve all the rows --
-- While displaying rental duration in hours and days
SELECT return_date - rental_date  AS Duration
FROM rental;

-- rental duration of movie is over 3 days
SELECT return_date - rental_date  AS Duration
FROM rental
WHERE EXTRACT(days FROM return_date - rental_date) > 3;

-- Rental duratiopn of ovie is over 100 hours
SELECT return_date - rental_date  AS Duration,
    EXTRACT(epoch FROM return_date - rental_date)/3600 AS Hours_rented
FROM rental
WHERE EXTRACT(epoch FROM return_date - rental_date)/3600 > 100;
-- epoch gives posix time (in seconds)

-- Add extra column with  fix return_date as 7 days from rental
SELECT rental_date,
    rental_date + INTERVAL '7 day' AS new_return_date
FROM rental;