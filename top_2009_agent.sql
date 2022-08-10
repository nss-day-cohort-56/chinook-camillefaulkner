with ESum as (
SELECT 
    e.FirstName || " " || e.LastName as "FullName",
    Sum(i.Total) as "TotalSales"
FROM Employee e
JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE STRFTIME('%Y', i.InvoiceDate) = '2009'
GROUP BY FullName
)
SELECT FullName, TotalSales
FROM ESum
WHERE TotalSales = (
    SELECT Max(TotalSales)
    FROM ESum
    )

SELECT 
    e.FirstName,
    SUM(i.Total) as "Total Sales"
FROM Invoice i
JOIN Customer c
    ON i.CustomerId = c.CustomerId
JOIN Employee e
    ON c.SupportRepId = e.EmployeeId
WHERE STRFTIME('%Y', i.InvoiceDate) = '2009'
GROUP BY e.EmployeeId
ORDER BY SUM(i.Total) DESC
LIMIT 1
