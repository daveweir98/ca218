SELECT c.Name, COUNT(DISTINCT t.District) AS MyCount
FROM Country c, City t
WHERE c.Code = t.countryCode
GROUP BY c.Name
ORDER BY MyCount DESC
