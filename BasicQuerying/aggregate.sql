-- Display total number of rentals in history
SELECT COUNT(*) FROM rental;
-- Display  the first and last rental
SELECT MIN(rental_date) first_rental,
    MAX(rental_date) last_rental
FROM rental;
-- Total rental payment
SELECT SUM(amount) AS total_amount FROM payment;