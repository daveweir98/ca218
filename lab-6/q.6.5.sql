SELECT c.name, f.title, AVG(DATEDIFF(r.return_date, r.rental_date))
FROM rental r, film f, film_category fc, category c, inventory i
WHERE r.inventory_id = i.inventory_id
	AND i.film_id = f.film_id
    AND f.film_id = fc.film_id
    AND fc.category_id = c.category_id
GROUP BY f.film_id
ORDER BY f.title 
