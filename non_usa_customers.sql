SELECT
    c.FirstName,
    c.LastName,
    c.CustomerId,
    c.Country
FROM Customer c
WHERE c.Country IS NOT "USA"

