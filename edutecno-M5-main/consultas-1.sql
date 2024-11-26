-- Insertar un nuevo Customer:
INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, activebool, create_date, last_update)
VALUES (1, 1, 'John', 'Doe', 'johndoe@example.com', 1, true, current_timestamp, current_timestamp);

-- Modificar un Customer existente:
UPDATE customer
SET first_name = 'Jane', last_name = 'Smith', email = 'janesmith@example.com'
WHERE customer_id = 1;

-- Eliminar un Customer existente:
DELETE FROM customer
WHERE customer_id = 1;

-- Insertar un nuevo Staff:
INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update)
VALUES (1, 'Mike', 'Smith', 1, 'mikesmith@example.com', 1, true, 'mikes', 'password123', current_timestamp);

-- Modificar un Staff existente:
UPDATE staff
SET first_name = 'John', last_name = 'Doe', email = 'johndoe@example.com'
WHERE staff_id = 1;

-- Eliminar un Staff existente:
DELETE FROM staff
WHERE staff_id = 1;

-- Insertar un nuevo Actor:
INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES (1, 'Tom', 'Hanks', current_timestamp);

-- Modificar un Actor existente:
UPDATE actor
SET first_name = 'Robert', last_name = 'Downey Jr.'
WHERE actor_id = 1;

-- Eliminar un Actor existente:
DELETE FROM actor
WHERE actor_id = 1;