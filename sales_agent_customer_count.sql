SELECT
    e.FirstName,
    e.LastName,
    COUNT(c.CustomerId)
FROM Employee e
JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId