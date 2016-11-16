SELECT c.name, COUNT(c.category_id)
FROM(
    SELECT customer_id
    FROM payment p
    GROUP BY customer_id
    HAVING SUM(amount) > 100
) t, rental r, inventory i, film f, film_category fc, category c
WHERE t.customer_id = r.customer_id
	AND r.inventory_id = i.inventory_id
    AND f.film_id = i.film_id
    AND f.film_id = fc.film_id
    AND fc.category_id = c.category_id
GROUP BY c.name
ORDER BY COUNT(c.category_id) DESC
LIMIT 1;
