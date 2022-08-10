SELECT 
    e.FirstName,
    COUNT(i.InvoiceId)
FROM Invoice i
JOIN Customer c
    ON i.CustomerId = c.CustomerId
JOIN Employee e
    ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
ORDER BY COUNT(i.InvoiceId) DESC
LIMIT 1