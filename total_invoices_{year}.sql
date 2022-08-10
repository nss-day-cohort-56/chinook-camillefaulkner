SELECT COUNT(*)
FROM Invoice i
WHERE STRFTIME('%Y', i.InvoiceDate) = '2009'

SELECT COUNT(*)
FROM Invoice i
WHERE STRFTIME('%Y', i.InvoiceDate) = '2011'
