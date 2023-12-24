INSERT INTO movie_customers (
	customer_id,
	first_name,
	last_name,
	customer_email
)values(
	1,
	'Joe',
	'Schmo',
	'jshmotheshow@gmail.com'
);

INSERT INTO movies(
	movie_id,
	title,
	director_name,
	rating,
	movie_price
)values(
	1,
	'Spiderman: No Way Home',
	'Jon Watts',
	'PG-13',
	5.00
);

INSERT INTO concessions (
	snack_id,
	snack_name,
	snack_brand,
	snack_type,
	snack_price
)values(
	1,
	'Snack Combo 1',
	'AMC',
	'combo',
	10.00
);

INSERT INTO tickets (
	ticker_id,
	ticket_price,
	total_price,
	customer_id,
	movie_id,
	snack_id
)values(
	1,
	5.00,
	15.00,
	1,
	1,
	1
);


