SELECT
    t.name,
    SUM(t.TrackId)
FROM Track t
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
WHERE STRFTIME('%Y', i.InvoiceDate) = '2013'
GROUP BY t.TrackId
ORDER BY SUM(i.Total) DESC
LIMIT 1
