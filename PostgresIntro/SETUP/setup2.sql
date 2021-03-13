SET datestyle = "ISO, MDY";
COPY public.performance (fl_date, mkt_carrier, mkt_carrier_fl_num, origin, origin_city_name, origin_state_abr, dest, dest_city_name, dest_state_abr, dep_delay_new, arr_delay_new, cancelled, cancellation_code, diverted, carrier_delay, weather_delay, nas_delay, security_delay, late_aircraft_delay) 
FROM '/OntimeCarrier.csv' -- put you path to file here 
DELIMITER ',' 
CSV HEADER ENCODING 'UTF8' 
QUOTE '"' 
ESCAPE '''';
