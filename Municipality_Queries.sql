-- simple queries

-- Retrieve all donors' information
USE Municipality; 
SELECT * FROM Donor;

-- Get the details of all transactions
SELECT * FROM Transactions;

-- Display the information of all families
SELECT * FROM Family;

-- List all staff members
SELECT * FROM Staff;

-- Show the details of all equipment
SELECT * FROM Equipment;

-- Get the information of all warehouses
SELECT * FROM Warehouse;


-- practical queries

-- Retrieve the total quantity and cost of each type of goods
SELECT GNAME, SUM(GQuantity) AS TotalQuantity, SUM(COST * GQuantity) AS TotalCost 
FROM Good 
GROUP BY GNAME;

-- Display the total number of family members for each family
SELECT FID, COUNT(*) AS TotalFamilyMembers 
FROM Family_Member 
GROUP BY FID;

-- Show the average salary of all staff members
SELECT AVG(SALARY) AS AverageSalary 
FROM Staff;

-- Get the number of transactions made by each vendor:
SELECT VNAME, COUNT(*) AS NumberOfTransactions 
FROM Transactions 
JOIN Vendor ON Transactions.VID = Vendor.VID 
GROUP BY VNAME;


-- specific queries

-- Sort for top donors and their amount:
SELECT DNAME, SUM(Amount) AS TotalDonation
FROM Donor
JOIN Monetary_Donation ON Donor.DID = Monetary_Donation.DID
GROUP BY Donor.DNAME
ORDER BY TotalDonation DESC;

-- Available goods
SELECT 
    W.WID,
    W.WNAME AS Warehouse_Name,
    V.VNAME AS Vendor_Name,
    M.Mname AS Manager_Name,
    SUM(S.AMOUNT) AS Total_Goods_Available
FROM 
    Warehouse W
JOIN 
    Section S ON W.SECID = S.SECID
JOIN 
    Vendor V ON W.VID = V.VID
JOIN 
    Manager M ON W.ManID = M.ManID
GROUP BY 
    W.WID, W.WNAME, V.VNAME, M.Mname;


-- Get the total cost of goods stored in each warehouse
SELECT Warehouse.WID, SUM(Good.COST * Good.GQuantity) AS TotalCost
FROM Warehouse
JOIN Section ON Warehouse.SECID = Section.SECID
JOIN Good ON Section.GID = Good.GID
GROUP BY Warehouse.WID;


-- Retrieve the details of families with special needs
SELECT FID, FAddress AS Main_Address, FPhone_Number AS Phone_num
FROM Family
WHERE SpecialNeeds IS NOT NULL;

-- Retrieve the total number of transactions made by each donor
SELECT Donor.DNAME, COUNT(Transactions.TID) AS TotalTransactions
FROM Donor
LEFT JOIN Good ON Donor.DID = Good.DID
LEFT JOIN Transactions ON Good.GID = Transactions.GID
GROUP BY Donor.DID;

-- Calculate the total cost of goods donated by each donor
SELECT Good.GID, Good.GNAME, Good.COST, Good.GCONDITION, Good.Expiration_Date, Good.GDescription, Good.GQuantity
FROM Good
ORDER BY Good.GQuantity DESC;

-- Identify families with elderly members (age 50 and above) and their contact information
SELECT Family.FID, Family.FAddress AS Main_Address, Family.FPhone_Number AS Phone_num
FROM Family
JOIN Family_Member ON Family.FID = Family_Member.FID
WHERE TIMESTAMPDIFF(YEAR, Family_Member.Date_Of_Birth, CURDATE()) >= 50;