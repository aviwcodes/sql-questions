--Q. Find number of orders placed by each customer.

--Tables:
--Customers(CustomerID, CustomerName, City, Country)
--Orders(OrderID, CustomerID, OrderDate)

SELECT c.CustomerID, CustomerName, 
count(OrderID) as Number_of_Orders
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID;

