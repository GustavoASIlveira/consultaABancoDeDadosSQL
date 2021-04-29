SELECT distinct c.CustomerID, c.CustomerName FROM Customers c, Orders o, OrderDetails od where 
c.CustomerID = o.CustomerID and 
o.OrderID = od.OrderID and 
od.ProductID in (SELECT p.ProductID FROM Products p, Suppliers s where p.SupplierID = s.SupplierID and s.Country like 'Brazil');
