select t.invoiceno,
       sum(t.line_total) as total_price
from (
    select invoiceno,
           (unitprice * quantity) as line_total
    from online_retail_2001
    where invoiceno not like 'C%'
) t
group by t.invoiceno
order by t.total_price desc
limit 5;
