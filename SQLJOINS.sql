/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.Name, c.Name
FROM products AS p
JOIN categories AS c ON p.CategoryID = c.CategoryID
WHERE c.CategoryID = 1;
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.Name, p.Price, r.Rating
FROM products AS p
JOIN reviews AS r ON p.ProductID = r.ProductID 
WHERE r.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.EmployeeID, e.FirstName, e.LastName, e.Title, SUM(s.Quantity) AS QSold
FROM employees AS e
JOIN sales AS s ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Qsold DESC;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT c.Name AS CatName, d.Name AS DeptName 
FROM categories AS c 
JOIN departments AS d ON c.DepartmentID = d.DepartmentID 
WHERE c.Name = 'Appliances' OR c.Name = 'Games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT p.Name, SUM(s.Quantity) AS QtySold, SUM(s.Quantity*s.PricePerUnit) AS TotalSales 
 FROM products AS p
 JOIN sales AS s ON p.ProductID = s.ProductID 
 WHERE p.Name = "Eagles: Hotel California";
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select p.Name, r.Reviewer, r.Rating, r.Comment 
FROM products AS p
JOIN reviews AS r ON p.ProductID = r.ProductID 
WHERE p.Name = 'Visio TV' ORDER BY r.rating LIMIT 1;