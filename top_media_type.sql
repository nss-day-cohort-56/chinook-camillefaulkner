SELECT
    m.name,
    SUM(il.InvoiceId)
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN MediaType m
    ON m.MediaTypeId = t.MediaTypeId
GROUP BY m.name
ORDER BY SUM(il.InvoiceId) DESC
LIMIT 1

