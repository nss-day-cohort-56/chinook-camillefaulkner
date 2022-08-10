SELECT
    t.name,
    SUM(t.TrackId)
FROM Track t
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
GROUP BY t.TrackId
ORDER BY SUM(i.Total) DESC
LIMIT 5