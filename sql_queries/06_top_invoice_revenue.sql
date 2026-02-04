SELECT t.invoiceno,
       sum(t.line_total) as total_price
FROM (
    SELECT invoiceno,
           (unitprice * quantity) as line_total
    FROM online_retail_2001
    WHERE invoiceno NOT LIKE 'C%'
) t
GROUP BY t.invoiceno
ORDER BY t.total_price DESC
LIMIT 5;
