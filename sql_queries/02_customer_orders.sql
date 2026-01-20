select customerid, count(distinct invoiceno) as total_order
from online_retail_2001
group by customerid;
