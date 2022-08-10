SELECT
    il.InvoiceId,
    COUNT(il.InvoiceId)
FROM InvoiceLine il
GROUP BY il.InvoiceId


