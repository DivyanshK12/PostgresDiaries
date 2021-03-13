CREATE TABLE codes_carrier
(
	carrier_code character varying(2),
	carrier_desc character varying(45)
);

INSERT INTO codes_carrier (carrier_code, carrier_desc)
VALUES
	('AA','American Airlines'),
	('AS','Alaska Airlines'),
	('B6','JetBlue Airways'),
	('DL','Delta Air Lines'),
	('F9','Frontier Airlines'),
	('G4','Allegiant Air'),
	('HA','Hawaiian Airlines'),
	('NK','Spirit Air Lines'),
	('UA','United Air Lines'),
	('VX','Virgin America'),
	('WN','Southwest Airlines');
