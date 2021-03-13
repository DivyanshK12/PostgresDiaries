SELECT fl_date,
        mkt_carrier AS airline,
        mkt_carrier_fl_num AS flight,
        cancellation_code
    FROM performance
    WHERE cancellation_code IS NOT NULL;