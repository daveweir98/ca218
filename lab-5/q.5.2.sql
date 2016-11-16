SELECT WEEKDAY(r.rental_date), COUNT(WEEKDAY(r.rental_date)) AS MyCount
FROM rental r
GROUP BY WEEKDAY(r.rental_date)
ORDER BY MyCount DESC
LIMIT 1
