-- View all customers regardless of orders
SELECT c.first_name,
        c.last_name,
        o.order_date,
        o.order_amount
    FROM customers c
    LEFT OUTER JOIN orders o
    ON c.customer_id = o.customer_id;

-- Get all orders regardless of customer would be right outer join
-- LEFT OUTER JOIN can work without the outer keyword as well
-- Can interchange table orders and LEFT and RIGHT to make it easier to understand