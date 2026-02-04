SELECT country, ROUND(SUM(unitprice * quantity),2) AS total_sale
from online_retail_2001 
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_sale DESC;