SELECT e.firstName, e.lastName, k.MyCount
FROM (
 	SELECT e.reportsTo, COUNT(e.employeeNumber) AS MyCount
    From employees e, customers c
    WHERE e.employeeNumber = c.salesRepEmployeeNumber
    GROUP BY e.reportsTo
	) k, employees e
WHERE k.reportsTo = e.employeeNumber
	AND e.jobTitle LIKE "%Manager%"
