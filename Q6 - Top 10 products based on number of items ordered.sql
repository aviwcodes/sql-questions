--Q. Top 10 products based on number of items ordered.

--Tables:
--OrderDetails(OrderDetailID, OrderID, ProductID,	Quantity)
--Products(ProductID, ProductName, SupplierID, CategoryID, Unit, Price)

SELECT  od.ProductID, ProductName ,
SUM(od.Quantity) AS TotalOrderedQty
FROM OrderDetails od INNER JOIN Products p
ON od.ProductID = p.ProductID
GROUP BY od.ProductID
ORDER BY TotalOrderedQty DESC
LIMIT 10;
