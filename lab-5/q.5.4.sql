SELECT COUNT(*)
FROM(
    SELECT p.customer_id
    FROM payment p
    GROUP BY p.customer_id
    HAVING SUM(p.amount) > 100
) t
