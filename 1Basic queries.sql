-- WHERE CLAUSE

SELECT customer_id,rental_id,amount,payment_date
FROM payment
WHERE payment_date>'2006-01-01';

-- Could you pull all payments from the first 100 customers (based on customer ID)
	SELECT 
		DISTINCT customer_id,
		rental_id,
		amount,
		payment_date
	FROM payment
	WHERE customer_id<100;

-- OR
SELECT 
	customer_id,
	rental_id,
    amount,
    payment_date
FROM payment
WHERE customer_id BETWEEN 1 AND 100;

-- OR
SELECT 
		DISTINCT customer_id,
		rental_id,
		amount,
		payment_date
	FROM payment
	WHERE customer_id<=100;

-- For the first 100 customers get  payments over $5 for those same customers, since January 1, 2006 .”
    SELECT 
		customer_id,
		rental_id,
		amount,
		payment_date
	FROM payment
	WHERE customer_id<=100 AND amount> 5 AND payment_date >'2006-01-01';
    
    
    --  write a query to retrieve all payments from customers 42, 53, 60, and 75, as well as payments over $5 from any customer
SELECT 
	DISTINCT customer_id,
	rental_id,
    amount,
    payment_date
FROM payment
WHERE customer_id IN (42,53,60,75) OR amount>5;

-- use DISTINCT
SELECT 
	COUNT(DISTINCT  customer_id)
FROM payment
WHERE customer_id IN (42,53,60,75) OR amount>5;


-- WILDCARD EXAMPLES
SELECT 
	title, 
	description 
FROM film 
WHERE description LIKE '%Epic%';

-- provide a list of films that include the 'Behind the Scenes' special feature
SELECT 
	title,
    special_features
FROM film
WHERE special_features LIKE '%Behind the Scenes%'



-- MULTIPLE GROUP BY CLAUSE
SELECT 
	rating,
	rental_duration,
    COUNT(film_id) AS film_with_this_rental_duration
FROM film
GROUP BY rating,rental_duration;
