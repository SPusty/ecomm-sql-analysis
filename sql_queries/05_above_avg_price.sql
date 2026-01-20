SELECT *
FROM online_retail_2001
WHERE unitprice > (
    SELECT AVG(unitprice)
    FROM online_retail_2001
);
