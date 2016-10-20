SELECT orderDate, status, p.amount
FROM orders o, payments p
WHERE o.customerNumber = p.customerNumber
ORDER BY p.amount DESC
