SELECT p.fl_date,
        p.mkt_carrier,
        cc.carrier_desc AS airline,
        p.mkt_carrier_fl_num AS flight,
        p.origin_city_name,
        p.dest_city_name,
        p.cancellation_code,
        ca.cancel_desc
    FROM performance p
    INNER JOIN codes_carrier cc
    ON p.mkt_carrier = cc.carrier_code
    LEFT JOIN codes_cancellation ca
    ON p.cancellation_code = ca.cancellation_code;