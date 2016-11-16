SELECT of.city
FROM orders o, customers c, employees e, offices of
WHERE o.customerNumber = c.customerNumber
	AND c.salesRepEmployeeNumber = e.employeeNumber
    AND e.officeCode = of.officeCode
GROUP BY of.city
ORDER BY COUNT(o.customerNumber) DESC
LIMIT 1
