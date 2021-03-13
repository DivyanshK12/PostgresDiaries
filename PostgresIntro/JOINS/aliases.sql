SELECT c.first_name,
        c.last_name,
        o.order_date,
        o.order_amount
    FROM customers as c
    INNER JOIN orders as o
    ON c.customer_id = o.customer_id
    WHERE c.last_name = 'Hopper';
