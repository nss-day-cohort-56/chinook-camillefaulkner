SELECT
    p.name,
    COUNT(pt.trackId)
FROM Playlist p
JOIN PlaylistTrack pt
    ON pt.PlaylistId = p.PlaylistId
JOIN Track t
    ON pt.TrackId = t.TrackId
GROUP BY pt.PlaylistId



