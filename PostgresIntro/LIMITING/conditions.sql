SELECT fl_date,
        mkt_carrier AS airline,
        mkt_carrier_fl_num AS flight,
        origin,
        dest
    FROM performance
    WHERE dest = 'ORD'
    AND origin = 'BZN';