SELECT invoiceno,
       invoicedate
FROM online_retail_2001
WHERE strftime('%Y', invoicedate) < '2023';
