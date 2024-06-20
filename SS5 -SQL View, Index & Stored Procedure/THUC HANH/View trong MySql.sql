CREATE VIEW customer_view AS SELECT customerNumber, customerName, phone
FROM customers;

SELECT * FROM customer_view;

----------------------------------------------------
CREATE OR REPLACE VIEW customer_views  AS SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';

SELECT * FROM customer_views;

-------------------------------------------------------

DROP VIEW customer_views;