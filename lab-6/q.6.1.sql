SELECT cy.country, ct.city, COUNT(r.rental_id) AS MyCount
FROM rental r, customer c, address addr, city ct, country cy
WHERE r.customer_id = c.customer_id
	AND c.address_id = addr.address_id
    AND addr.city_id = ct.city_id
    AND ct.country_id = cy.country_id
GROUP BY ct.city_id
ORDER BY cy.country, ct.city, MyCount
