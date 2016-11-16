SELECT f.title, c.name, COUNT(i.inventory_id = r.inventory_id) AS MyCount
FROM film f, category c, film_category fc, inventory i, rental r
WHERE r.inventory_id = i.inventory_id
  AND f.film_id = fc.film_id
  AND f.film_id = i.film_id
  AND fc.category_id = c.category_id
  AND i.store_id = 1
GROUP BY f.film_id
ORDER BY f.title
