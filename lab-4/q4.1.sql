SELECT Language
FROM CountryLanguage l, Country C
WHERE l.CountryCode = C.Code AND (C.Population * (l.Percentage/100)) >= 1000000
ORDER BY (C.Population * (l.Percentage/100)) DESC
