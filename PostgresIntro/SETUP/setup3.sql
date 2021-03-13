CREATE TABLE codes_cancellation
(
	cancellation_code character varying(2),
           cancel_desc character varying(45)
);

INSERT INTO codes_cancellation (cancellation_code, cancel_desc)
VALUES
	('A','Carrier'),
	('B','Weather'),
	('C','National Air System'),
	('D','Security');
