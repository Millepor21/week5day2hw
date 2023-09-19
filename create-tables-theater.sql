CREATE TABLE movies(
		movie_id SERIAL PRIMARY KEY,
		movie_title VARCHAR(100),
		theater_id INTEGER,
		rating VARCHAR(30),
		duration NUMERIC,
		"3D" BOOLEAN
);

CREATE TABLE theaters(
		theater_id SERIAL PRIMARY KEY,
		num_seats INTEGER,
		"3D" BOOLEAN
);

CREATE TABLE tickets(
		ticket_id SERIAL PRIMARY KEY,
		seat_id VARCHAR(30),
		theater_id INTEGER NOT NULL,
		movie_id INTEGER NOT NULL,
		FOREIGN KEY(theater_id) REFERENCES theaters(theater_id),
		FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE customers(
		customer_id SERIAL PRIMARY KEY,
		"name" VARCHAR(100),
		email VARCHAR(150),
		ticket_id INTEGER NOT NULL,
		FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id)
);

CREATE TABLE concessions(
		item_id SERIAL PRIMARY KEY,
		amount INTEGER,
		price NUMERIC(6,2)
);

CREATE TABLE purchases(
		purchase_id SERIAL PRIMARY KEY,
		customer_id INTEGER NOT NULL,
		item_id INTEGER NOT NULL,
		sub_total NUMERIC(6,2),
		final_total NUMERIC(8,2),
		payment_method VARCHAR(100),
		FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
		FOREIGN KEY(item_id) REFERENCES concessions(item_id)
);