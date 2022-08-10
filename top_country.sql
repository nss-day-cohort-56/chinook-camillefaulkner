SELECT
    i.BillingCountry,
    SUM(i.Total)
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY SUM(i.Total) DESC