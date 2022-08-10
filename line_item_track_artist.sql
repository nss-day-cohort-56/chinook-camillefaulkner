SELECT
    il.InvoiceLineId,
    t.name trackname,
    a.name artistname
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN Album al
    ON t.AlbumId = al.AlbumId
JOIN Artist a
    ON a.ArtistId = al.ArtistId