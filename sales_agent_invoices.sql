SELECT
    e.FirstName,
    e.LastName,
    i.InvoiceId
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.InvoiceId
JOIN Employee e
    ON c.SupportRepId = e.EmployeeId
