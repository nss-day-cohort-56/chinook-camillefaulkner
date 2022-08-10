SELECT
    i.Total,
    c.FirstName CustomerFirstName,
    c.LastName CustomerLastName,
    c.Country,
    e.FirstName EmployeeFirstName,
    e.LastName EmployeeLastName
FROM Customer c
JOIN Employee e
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON i.CustomerId = c.CustomerId