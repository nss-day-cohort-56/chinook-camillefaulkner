SELECT
    SUM(i.Total)
From Invoice i
WHERE STRFTIME('%Y', i.InvoiceDate) = '2009'

SELECT
    SUM(i.Total)
From Invoice i
WHERE STRFTIME('%Y', i.InvoiceDate) = '2011'