SELECT a.first_name, a.last_name
FROM actor a, film_actor fa, film_category fc
WHERE a.actor_id = fa.actor_id AND fa.film_id = fc.film_id AND fc.category_id = 1
GROUP BY fa.actor_id
ORDER BY COUNT( a.actor_id = fa.actor_id AND fa.film_id = fc.film_id AND fc.category_id = 1) DESC
LIMIT 1
