SELECT Prices.product_id, IFNULL(ROUND(SUM(units*price)/ SUM(units), 2), 0) AS average_price
FROM Prices LEFT JOIN UnitsSold
ON Prices.product_id = UnitsSold.product_id
WHERE purchase_date BETWEEN start_date AND end_date OR purchase_date IS NULL
GROUP BY Prices.product_id;
