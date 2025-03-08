SELECT 
	o.Date AS order_date,
	pc.CategoryName AS category_name,
	p.ProdName AS product_name,
	p.Price AS product_price,
	o.Quantity AS order_qty,
	ROUND(SUM(o.Quantity * p.Price),2) AS total_sales,
	c.CustomerEmail AS cust_email,
	c.CustomerCity AS cust_city
FROM
	rakamin-bank-muamalat-pbi.FinalTask.Customers c
	JOIN rakamin-bank-muamalat-pbi.FinalTask.Orders o ON c.CustomerID = o.CustomerID
	JOIN rakamin-bank-muamalat-pbi.FinalTask.Products p ON o.ProdNumber = p.ProdNumber
	JOIN rakamin-bank-muamalat-pbi.FinalTask.ProductCategory pc ON p.Category = pc.CategoryID

GROUP BY 1,2,3,4,5,7,8
ORDER BY 1