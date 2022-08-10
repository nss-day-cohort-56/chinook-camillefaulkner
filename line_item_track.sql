SELECT
    il.InvoiceLineId,
    t.name
FROM InvoiceLine il
JOIN Track t
WHERE t.TrackId = il.TrackId