SELECT c.customerName, o.orderNumber, SUM(od.quantityOrdered * od.priceEach) AS Total
FROM customers c, orders o, orderdetails od

WHERE c.customerNumber = o.customerNumber
  AND o.orderNumber = od.orderNumber
  AND od.priceEach * od.quantityOrdered > (SELECT AVG(priceEach) FROM orderdetails)
  AND o.status = 'shipped'

GROUP BY o.orderNumber
