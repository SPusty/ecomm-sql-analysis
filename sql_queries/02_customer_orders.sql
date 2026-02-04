SELECT customerid, count(DISTINCT invoiceno) AS total_order
FROM online_retail_2001
GROUP BY customerid;
