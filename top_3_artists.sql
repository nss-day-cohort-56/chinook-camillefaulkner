SELECT
    a.name,
    SUM(il.InvoiceId)
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN Album al
    ON t.AlbumId = al.AlbumId
JOIN Artist a
    ON a.ArtistId = al.ArtistId
GROUP BY a.name
ORDER BY SUM(il.InvoiceId) DESC
LIMIT 3