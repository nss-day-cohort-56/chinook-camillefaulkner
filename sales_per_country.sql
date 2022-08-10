SELECT
    i.BillingCountry,
    COUNT(i.InvoiceId)
FROM Invoice i
GROUP BY i.BillingCountry