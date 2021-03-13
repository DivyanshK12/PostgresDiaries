SELECT c.first_name,
        c.last_name,
        o.order_date,
        o.order_amount
    FROM customers c
    FULL OUTER JOIN orders o
    ON c.customer_id = o.customer_id;
-- Can omit OUTER keyword