SELECT f.film_id, f.title
FROM film f, rental r, customer c, inventory i
WHERE c.customer_id = r.customer_id
	  AND r.inventory_id = i.inventory_id 
    AND f.film_id = i.film_id
    AND c.first_name LIKE "D%"

GROUP BY f.film_id
HAVING COUNT(c.customer_id = r.customer_id) > 1
