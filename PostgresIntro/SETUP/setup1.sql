-- CREATE DATABASE airlines ;
CREATE TABLE performance
(
	fl_date date,
	mkt_carrier character varying(2),
	mkt_carrier_fl_num character varying(4),
	origin character varying(3),
	origin_city_name character varying(45),
	origin_state_abr character varying(2),
	dest character varying(3),
	dest_city_name character varying(45),
	dest_state_abr character varying(2),
	dep_delay_new numeric,
	arr_delay_new numeric,
	cancelled numeric,
	cancellation_code character varying(2),
	diverted numeric,
	carrier_delay numeric,
	weather_delay numeric,
	nas_delay numeric,
	security_delay numeric,
	late_aircraft_delay numeric
);
