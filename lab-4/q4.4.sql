SELECT f.title
FROM inventory i, film f, rental r
WHERE r.inventory_id = i.inventory_id AND i.film_id = f.film_id
GROUP BY f.film_id
ORDER BY COUNT( r.inventory_id)
