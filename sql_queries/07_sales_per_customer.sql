SELECT customerid, Round(SUM(quantity*unitprice),2) AS sales FROM online_retail_2001 
WHERE customerid IS NOT NULL 
GROUP BY customerid;