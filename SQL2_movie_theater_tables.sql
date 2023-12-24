CREATE TABLE movie_customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	customer_email VARCHAR(150)
);

CREATE TABLE movies (
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	director_name VARCHAR(100),
	rating VARCHAR(5),
	movie_price NUMERIC(3,2)
);

CREATE TABLE concessions (
	snack_id SERIAL PRIMARY KEY,
	snack_name VARCHAR(100),
	snack_brand VARCHAR(100),
	snack_type VARCHAR(10),
	snack_price NUMERIC(4,2)
);

CREATE TABLE tickets (
	ticker_id SERIAL PRIMARY KEY,
	ticket_price NUMERIC(5,2),
	total_price NUMERIC(6,2),
	customer_id integer NOT NULL,
	movie_id integer NOT NULL,
	snack_id integer NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES movie_customers(customer_id),
	FOREIGN	KEY(movie_id) REFERENCES movies(movie_id),
	FOREIGN KEY(snack_id) REFERENCES concessions(snack_id)
);
