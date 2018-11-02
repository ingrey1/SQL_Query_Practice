-- display the first name, last name and hire date of all the employees with the title of sales rep --
/*
SELECT FirstName, LastName, HireDate
FROM Employees
WHERE Title='Sales Representative'
;
*/
-- display the first name, last name and hire date of all the employees with the title of sales rep in us --
/*
SELECT FirstName, LastName, HireDate, Country
FROM Employees
WHERE Title='Sales Representative' AND Country='USA'
; 

*/

-- show all orders placed by the Employee with EmployeeID 5 --

/*

SELECT OrderID, OrderDate
FROM Orders
WHERE EmployeeID=5;

*/

-- show the SupplierID, ContactName, and ContactTitle for Suppliers who are not MarketingManagers --

/*

SELECT SupplierID, ContactName, ContactTitle
FROM Suppliers
WHERE ContactTitle != 'Marketing Manager'; 

*/

-- show the ProductID and ProductName for all products that contain queso --

/*
SELECT ProductID, ProductName
FROM Products
WHERE ProductName LIKE '%queso%';
*/

-- show the OrderID, CustomerID, and ShipCountry for orders from France or Belgium --

/*
SELECT OrderID, CustomerID, ShipCountry
FROM Orders
WHERE ShipCountry='Belgium' OR ShipCountry='France'; 
*/

-- show the OrderID, CustomerID, ShipCountry for all orders from Brazil, Mexico, Argentina --

/*
SELECT OrderID, CustomerID, ShipCountry
FROM Orders
WHERE ShipCountry IN ('Brazil', 'Mexico', 'Argentina');
*/

-- show the FirstName, LastName, Title, and BirthDate of Employees ordered by birthday, oldest to youngest --


/*
SELECT FirstName, LastName, Title, BirthDate
FROM Employees
ORDER BY BirthDate DESC; 
*/

-- show the FirstName, LastName, Title, and BirthDate of Employees ordered by birthday as a date, oldest to youngest -- 

/*
SELECT FirstName, LastName, Title, Convert(Date, BirthDate) AS Birthday
FROM Employees
ORDER BY BirthDate DESC; 
*/

-- show the FirstName, LastName, FullName for all Employees --

/*
SELECT FirstName, LastName, CONCAT(FirstName + ' ', LastName) as FullName
FROM Employees
*/

-- show the OrderID, ProductID, UnitPrice and Quantity for Orders along with a new TotalPrice column --

/*
SELECT OrderID, ProductID, UnitPrice, Quantity, (UnitPrice * Quantity) AS TotalPrice
FROM OrderDetails
*/

-- show the total number of customers --

/*
SELECT COUNT(*) as TotalCustomers
FROM Customers
*/


-- show the date of the first order made in orders table --


/*
SELECT Min(OrderDate) AS FirstOrder
FROM Orders
*/ 

-- show a list of countries where the northwind company has customers --

/*
SELECT Country
FROM Customers
GROUP BY Country
*/

-- show the contactTitles for Customers with an additional column for the count of those titles --

/*
SELECT ContactTitle, Count(*) as TitleCount
FROM Customers
GROUP BY ContactTitle 
ORDER BY TitleCount DESC
*/

-- show the ProductID, ProductName, Supplier for products --

/*
SELECT Products.ProductID, Products.ProductName, Suppliers.CompanyName
FROM Products, Suppliers
WHERE Products.SupplierID = Suppliers.SupplierID
*/

-- show the orderID, OrderDate, and Shipper --

/*
SELECT OrderID, Convert(DATE, OrderDate) As OrderDate, Shippers.CompanyName as Shipper
FROM Orders, Shippers
WHERE Orders.ShipVia = Shippers.ShipperID AND OrderID < 10279;
ORDER BY OrderID DESC
*/

--

 
















