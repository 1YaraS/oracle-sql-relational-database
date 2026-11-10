-- Question 3
SELECT customerName, customerAddress, orderCost
FROM Customer JOIN Orders 
ON Customer.CID = Orders.CID
WHERE orderCost > 8000;
-- Question 4
SELECT supplierName, supplierPhone, SUM(orderCost) AS Total_Cost
FROM Orders
RIGHT JOIN Supplier ON Orders.SID = Supplier.SID
GROUP BY supplierName, supplierPhone;

-- Question 5 
SELECT customerName, customerAddress
FROM Customer
LEFT JOIN Orders ON Customer.CID = Orders.CID
WHERE Orders.CID IS NULL;
-- Question 6
SELECT customerName, SUM(orderCost) AS Total_Cost
FROM Customer
JOIN Orders ON Customer.CID = Orders.CID
GROUP BY customerName
HAVING SUM(orderCost) < 2000;
-- Question 7
SELECT customerAddress, COUNT(*) AS Num_Orders
FROM Customer
JOIN Orders ON Customer.CID = Orders.CID
GROUP BY customerAddress;
-- Question 8
SELECT customerName,
       customerDOB,
       supplierName,
       orderDate,
       orderCost
FROM Customer
JOIN Orders ON Customer.CID = Orders.CID
JOIN Supplier ON Orders.SID = Supplier.SID
WHERE orderDate > TO_DATE('2015-03-19','YYYY-MM-DD');