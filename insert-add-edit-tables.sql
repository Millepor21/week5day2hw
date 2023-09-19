INSERT INTO movies(movie_title,theater_id,rating,duration,"3D")
VALUES ('Meg 2', '1', 'PG-13', '1.94', 'TRUE');

INSERT INTO movies(movie_title,theater_id,rating,duration,"3D")
VALUES ('Underwater', '2', 'PG-13', '1.58',FALSE);

ALTER TABLE concessions ADD COLUMN product_name VARCHAR(100);

INSERT INTO concessions(amount,price,product_name)
VALUES (20, 1.99,'Reeses Peanutbutter cup'),
				(50, 12.00,'Large popcorn'),
				(150,8.00,'Medium popcorn'),
				(100,5.00,'Small popcorn'),
				(50,5.00,'Cotton candy');
			
INSERT INTO theaters(num_seats,"3D")
VALUES (100,TRUE);

INSERT INTO tickets(seat_id,theater_id,movie_id)
VALUES ('D6',1,2);

INSERT INTO customers("name", email,ticket_id)
VALUES ('Robin', 'notbatmansapprentice@wayneenterprises.net',1);

INSERT INTO purchases(customer_id,item_id,sub_total,final_total,payment_method)
VALUES (3,5,15.00,18.00,'Cash');