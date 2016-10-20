SELECT c.customerName, c.customerNumber, SUM(p.amount) AS MyCount
FROM customers c, payments p

WHERE c.customerNumber = p.customerNumber AND ( SELECT SUM(amount) FROM payments) > (SELECT AVG(amount) FROM payments)
GROUP BY c.customerNumber
ORDER BY MyCount DESC LIMIT 10
