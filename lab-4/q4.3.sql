SELECT pl.productLine, textDescription, COUNT(o.quantityOrdered) AS Total
FROM productlines pl, products p, orderdetails o
WHERE p.productLine = pl.productLine AND p.productCode = o.productCode
GROUP BY pl.productLine
ORDER BY Total DESC
LIMIT 3
