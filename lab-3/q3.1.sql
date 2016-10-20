SELECT orderDate, status, c.customerName
FROM orders o, customers c
WHERE c.customerNumber = o.customerNumber
