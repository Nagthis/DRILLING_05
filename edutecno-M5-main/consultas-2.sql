-- Obtener los datos de los clientes que alquilaron una película en el año 2005 y que el mes de alquiler sea mayo.
SELECT rental.rental_id, rental.rental_date, customer.first_name, customer.last_name
FROM rental
JOIN customer ON rental.customer_id = customer.customer_id
WHERE EXTRACT(YEAR FROM rental.rental_date) = 2005
AND EXTRACT(MONTH FROM rental.rental_date) = 5;

-- Listar los pagos de la tabla payment
SELECT payment.payment_id, payment.payment_date, payment.amount
FROM payment;

-- Listar todas las “film” del año 2006 que contengan un (rental_rate) mayor a 4.0.
SELECT *
FROM film
WHERE CAST(release_year AS TEXT) = '2006'
AND rental_rate > 4.0;
