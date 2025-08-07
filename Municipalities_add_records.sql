USE Municipality;
-- hussien ayoub
-- abed al nabi koubaisi

-- data is added 2 times onece for testing and another time for the sake of having alot of data posibilities.

-- Donors
INSERT INTO Donor (DID, DNAME, DPhoneNumber, DEmail, DAddress) VALUES 
(1, 'Ali-Hassan', '+96170123456', 'ali.hassan@example.com', 'Beirut, Lebanon'), 
(2, 'Lina-Fawaz', '+96171234567', 'lina.fawaz@example.com', 'Tripoli, Lebanon'), 
(3, 'Karim-Najjar', '+96172345678', 'karim.najjar@example.com', 'Sidon, Lebanon'), 
(4, 'Hassan-Ali', '+96171234568', 'hassan.ali@example.com', 'Tyre, Lebanon'), 
(5, 'Layla-Nassif', '+96171234569', 'layla.nassif@example.com', 'Jounieh, Lebanon'),
(6, 'Hiba Abbas', '+96171234560', 'hiba.abbas@example.com', 'Beirut, Lebanon'), 
(7, 'Youssef Mansour', '+96171234561', 'youssef.mansour@example.com', 'Tripoli, Lebanon'), 
(8, 'Nour Salem', '+96171234562', 'nour.salem@example.com', 'Sidon, Lebanon'), 
(9, 'Rana Khoury', '+96171234563', 'rana.khoury@example.com', 'Tyre, Lebanon'), 
(10, 'Ahmad Nassar', '+96171234564', 'ahmad.nassar@example.com', 'Jounieh, Lebanon'),
(11, 'Sami Ahmed', '+96171234565', 'sami.ahmed@example.com', 'Beirut, Lebanon'), 
(12, 'Sara Khalil', '+96171234566', 'sara.khalil@example.com', 'Tripoli, Lebanon'), 
(13, 'Omar Farid', '+96171234567', 'omar.farid@example.com', 'Sidon, Lebanon'), 
(14, 'Leila Haddad', '+96171234568', 'leila.haddad@example.com', 'Tyre, Lebanon'), 
(15, 'Tarek Mansour', '+96171234569', 'tarek.mansour@example.com', 'Jounieh, Lebanon'), 
(16, 'Laila Salim', '+96171234570', 'laila.salim@example.com', 'Beirut, Lebanon'), 
(17, 'Hassan Abdel', '+96171234571', 'hassan.abdel@example.com', 'Tripoli, Lebanon'), 
(18, 'Nadia Fawzi', '+96171234572', 'nadia.fawzi@example.com', 'Sidon, Lebanon'), 
(19, 'Khaled Nassar', '+96171234573', 'khaled.nassar@example.com', 'Tyre, Lebanon'), 
(20, 'Rasha Ahmad', '+96171234574', 'rasha.ahmad@example.com', 'Jounieh, Lebanon'),
(21, 'Hani Ibrahim', '+96171234575', 'hani.ibrahim@example.com', 'Beirut, Lebanon'), 
(22, 'Amira Said', '+96171234576', 'amira.said@example.com', 'Tripoli, Lebanon');



-- Vendor
INSERT INTO Vendor (VID, VNAME, VPhoneNumber) VALUES
(1, 'Lebanon Trading Co.', '+9613123456'),
(2, 'Beirut Enterprises', '+9613123457'),
(3, 'Tripoli Suppliers', '+9613123458'),
(4, 'Sidon Distributors', '+9613123459'),
(5, 'Tyre Traders', '+9613123460');

INSERT INTO Vendor (VID, VNAME, VPhoneNumber) VALUES
(6, 'Hassan Enterprises', '+9613123461'),
(7, 'Sidon Traders', '+9613123462'),
(8, 'Beirut Suppliers', '+9613123463'),
(9, 'Jounieh Trading Co.', '+9613123464'),
(10, 'Tripoli Enterprises', '+9613123465');


-- GOODS
INSERT INTO Good (DID, GNAME, COST, GCONDITION, Expiration_Date, GCategory_ID, GDescription, GQuantity) VALUES
(1, 'Rice', 15.99, 'Good', '2024-12-31', 1, 'Long grain rice', 100),
(2, 'Canned Food', 5.99, 'Good', '2025-06-30', 1, 'Canned beans', 200),
(3, 'Wheat Flour', 8.99, 'Good', '2024-12-31', 1, 'White flour', 150),
(1, 'Pasta', 3.49, 'Good', '2024-10-31', 1, 'Spaghetti pasta', 120),
(2, 'Cooking Oil', 12.99, 'Good', '2025-03-31', 1, 'Vegetable oil', 80);

INSERT INTO Good (DID, GNAME, COST, GCONDITION, Expiration_Date, GCategory_ID, GDescription, GQuantity) VALUES
(3, 'Sugar', 3.99, 'Good', '2025-01-31', 1, 'White sugar', 150),
(4, 'Canned Vegetables', 6.49, 'Good', '2025-07-31', 1, 'Mixed vegetables', 120),
(5, 'Pasta Sauce', 4.99, 'Good', '2025-03-31', 1, 'Tomato sauce', 80),
(1, 'Milk', 2.99, 'Good', '2024-09-30', 1, 'Fresh milk', 100),
(2, 'Cereal', 7.99, 'Good', '2025-04-30', 1, 'Whole grain cereal', 200);


-- Transactions
INSERT INTO Transactions (TID, GID, VID, TQuantity, TCOST, TDATE) VALUES
(1, 1, 1, 50, 799.50, '2024-05-11'),
(2, 2, 2, 100, 1099.00, '2024-05-12'),
(3, 3, 3, 150, 1348.50, '2024-05-13'),
(4, 4, 1, 200, 1796.00, '2024-05-14'),
(5, 5, 2, 75, 1499.25, '2024-05-15');

INSERT INTO Transactions (TID, GID, VID, TQuantity, TCOST, TDATE) VALUES
(6, 6, 6, 50, 199.50, '2024-05-16'),
(7, 7, 7, 100, 649.00, '2024-05-17'),
(8, 8, 8, 150, 748.50, '2024-05-18'),
(9, 9, 9, 200, 1496.00, '2024-05-19'),
(10, 10, 10, 75, 374.25, '2024-05-20');



-- Families
INSERT INTO Family (FID, HealthInfo, Social_Support_Network, Housing_Condition, FEmail, FPhone_Number, FAddress, AltFAddress, FGuardian, SpecialNeeds) VALUES
(1, 'Good', 'Relatives', 'Comfortable', 'family1@example.com', '+96171234560', 'Beirut, Lebanon', 'Apartment 1A', 'Parent', NULL),
(2, 'Requires special care', 'Friends', 'Under renovation', 'family2@example.com', '+96171234561', 'Tripoli, Lebanon', 'House, 5th Street', 'Sibling', 'Autism'),
(3, 'Elderly grandparents', 'Family', 'Moderate', 'family3@example.com', '+96171234562', 'Sidon, Lebanon', NULL, 'Grandparent', 'Limited mobility'),
(4, 'Single parent', 'Church community', 'Decent', 'family4@example.com', '+96171234563', 'Tyre, Lebanon', 'Apartment 2B', 'Parent', 'Chronic illness'),
(5, 'Large family', 'Neighbors', 'Crowded', 'family5@example.com', '+96171234564', 'Jounieh, Lebanon', NULL, 'Parent', NULL);

INSERT INTO Family (FID, HealthInfo, Social_Support_Network, Housing_Condition, FEmail, FPhone_Number, FAddress, AltFAddress, FGuardian, SpecialNeeds) VALUES
(6, 'Requires medical assistance', 'Neighbors', 'Moderate', 'family6@example.com', '+96171234565', 'Beirut, Lebanon', NULL, 'Parent', 'Diabetes'),
(7, 'Single parent', 'Family', 'Decent', 'family7@example.com', '+96171234566', 'Tripoli, Lebanon', 'Apartment 1C', 'Parent', 'Visual impairment'),
(8, 'Elderly parents', 'Relatives', 'Comfortable', 'family8@example.com', '+96171234567', 'Sidon, Lebanon', 'Apartment 2D', 'Grandparent', 'Limited mobility'),
(9, 'Large family', 'Friends', 'Crowded', 'family9@example.com', '+96171234568', 'Tyre, Lebanon', 'House, 10th Street', 'Parent', NULL),
(10, 'Requires special care', 'Neighbors', 'Under renovation', 'family10@example.com', '+96171234569', 'Jounieh, Lebanon', 'House, 3rd Street', 'Sibling', 'Autism');



-- Family_Members
INSERT INTO Family_Member (MID, FID, Date_Of_Birth, Phone_num, Gender, Health_Needs) VALUES
(1, 1, '2010-05-15', '+961712345600', 'M', 'None'),
(2, 1, '2015-08-20', '+961712345601', 'F', 'None'),
(3, 2, '2008-03-10', '+961712345611', 'M', 'Epilepsy'),
(4, 2, '2012-06-25', '+961712345612', 'F', 'None'),
(5, 3, '1945-10-05', '+961712345622', 'M', 'Arthritis'),
(6, 3, '1948-12-12', '+961712345623', 'F', 'None'),
(7, 4, '2005-06-30', '+961712345633', 'F', 'Asthma'),
(8, 4, '2008-09-18', '+961712345634', 'M', 'None'),
(9, 5, '2012-11-20', '+961712345644', 'F', 'None'),
(10, 5, '2015-03-15', '+961712345645', 'M', 'None');

INSERT INTO Family_Member (MID, FID, Date_Of_Birth, Phone_num, Gender, Health_Needs) VALUES
(11, 6, '2010-05-15', '+96171234565', 'M', 'None'),
(12, 6, '2015-08-20', '+96171234565', 'F', 'None'),
(13, 7, '2008-03-10', '+96171234566', 'M', 'None'),
(14, 7, '2012-06-25', '+96171234566', 'F', 'None'),
(15, 8, '1945-10-05', '+96171234567', 'M', 'Arthritis'),
(16, 8, '1948-12-12', '+96171234567', 'F', 'None'),
(17, 9, '2005-06-30', '+96171234568', 'F', 'Asthma'),
(18, 9, '2008-09-18', '+96171234568', 'M', 'None'),
(19, 10, '2012-11-20', '+96171234569', 'F', 'None'),
(20, 10, '2015-03-15', '+96171234569', 'M', 'None');



-- Sections
INSERT INTO Section (SECID, GID, AMOUNT) VALUES
(1, 1, 100),
(2, 2, 150),
(3, 3, 200),
(4, 4, 120),
(5, 5, 80),
(6, 1, 110),
(7, 2, 170),
(8, 3, 190),
(9, 4, 130),
(10, 5, 90),
(11, 1, 105),
(12, 2, 160),
(13, 3, 180),
(14, 4, 140),
(15, 5, 95),
(16, 1, 125),
(17, 2, 165),
(18, 3, 195),
(19, 4, 135),
(20, 5, 85),
(21, 1, 115),
(22, 2, 175),
(23, 3, 185),
(24, 4, 145),
(25, 5, 100),
(26, 1, 130),
(27, 2, 200),
(28, 3, 140),
(29, 4, 70),
(30, 5, 110);

INSERT INTO Section (SECID, GID, AMOUNT) VALUES
(31, 1, 100),
(32, 2, 150),
(33, 3, 200),
(34, 4, 120),
(35, 5, 80),
(36, 1, 110),
(37, 2, 170),
(38, 3, 190),
(39, 4, 130),
(40, 5, 90);





-- STAFF
INSERT INTO STAFF (SID, SNAME, SRole, SALARY, Working_Hours) VALUES
(1, 'Elias Khalil', 'Manager', 50000.00, '2024-05-12 08:00:00'),
(2, 'Rita Abi-Saad', 'Assistant Manager', 40000.00, '2024-05-12 09:00:00'),
(3, 'Nadia Fakhoury', 'Sales Representative', 30000.00, '2024-05-12 10:00:00'),
(4, 'George Ghanem', 'Accountant', 45000.00, '2024-05-12 11:00:00'),
(5, 'Layla Khoury', 'Manager', 35000.00, '2024-05-12 12:00:00'),
(6, 'Karim Haddad', 'Customer Support', 32000.00, '2024-05-12 13:00:00'),
(7, 'Maya Nassar', 'HR Coordinator', 38000.00, '2024-05-12 14:00:00'),
(8, 'Ali Ibrahim', 'Delivery Worker', 32000.00, '2024-05-12 08:00:00'),
(9, 'Leila Abou Jaoude', 'Maintenance Worker', 42000.00, '2024-05-12 09:00:00'),
(10, 'Hassan Fawaz', 'Worker', 35000.00, '2024-05-12 10:00:00'),
(11, 'Rana Maalouf', 'Delivery Worker', 30000.00, '2024-05-12 11:00:00'),
(12, 'Ziad Nassif', 'Manager', 38000.00, '2024-05-12 12:00:00'),
(13, 'Lina Khoury', 'Worker', 52000.00, '2024-05-12 13:00:00'),
(14, 'Nasser Harb', 'Delivery Worker', 45000.00, '2024-05-12 14:00:00'),
(15, 'Rima Salameh', 'Maintenance Worker', 33000.00, '2024-05-12 08:00:00'),
(16, 'Wael Haddad', 'Worker', 43000.00, '2024-05-12 09:00:00'),
(17, 'Dana Abi Nader', 'Delivery Worker', 36000.00, '2024-05-12 10:00:00'),
(18, 'Hussein Maalouf', 'Maintenance Worker', 31000.00, '2024-05-12 11:00:00'),
(19, 'Yara Khalifeh', 'Worker', 39000.00, '2024-05-12 12:00:00'),
(20, 'Rami Haddad', 'Delivery Worker', 53000.00, '2024-05-12 13:00:00'),
(21, 'Lara Fares', 'Maintenance Worker', 46000.00, '2024-05-12 14:00:00'),
(22, 'Farid Salem', 'Worker', 34000.00, '2024-05-12 08:00:00');

INSERT INTO STAFF (SID, SNAME, SRole, SALARY, Working_Hours) VALUES
(23, 'Ahmad Khalil', 'Manager', 50000.00, '2024-05-13 08:00:00'),
(24, 'Layla Abi-Saad', 'Assistant Manager', 40000.00, '2024-05-13 09:00:00'),
(25, 'Nassim Fakhoury', 'Sales Representative', 30000.00, '2024-05-13 10:00:00'),
(26, 'Georges Ghanem', 'Accountant', 45000.00, '2024-05-13 11:00:00'),
(27, 'Lina Khoury', 'Manager', 35000.00, '2024-05-13 12:00:00'),
(28, 'Karim Haddad', 'Customer Support', 32000.00, '2024-05-13 13:00:00'),
(29, 'Maya Nassar', 'HR Coordinator', 38000.00, '2024-05-13 14:00:00'),
(30, 'Ali Ibrahim', 'Delivery Worker', 32000.00, '2024-05-13 08:00:00');


-- MANAGER
INSERT INTO MANAGER (Mname, SID)VALUES 
('Elias Khalil', 2),
('Elias Khalil', 3),
('Lina Khoury', 4),
('Lina Khoury', 22),
('Lina Khoury', 6),
('Lina Khoury', 7),
('Lina Khoury', 8),
('Lina Khoury', 9),
('Lina Khoury', 10),
('Rami Haddad', 11),
('Rami Haddad', 21),
('Rami Haddad', 13),
('Rami Haddad', 14),
('Rami Haddad', 15),
('Rami Haddad', 16),
('Rami Haddad', 17),
('Rami Haddad', 18),
('Rami Haddad', 19);


-- Equipments
INSERT INTO Equipment (EID, QUANTITY, Last_Maintained, ETYPE) VALUES
(1, 2, '2024-05-12 08:00:00', 'Forklift'),
(2, 4, '2024-05-10 09:30:00', 'Delivery Car'),
(3, 3, '2024-05-11 11:45:00', 'Scanner'),
(5, 6, '2024-05-08 15:20:00', 'Phone');

INSERT INTO Equipment (EID, QUANTITY, Last_Maintained, ETYPE) VALUES
(6, 2, '2024-05-20 08:00:00', 'Forklift'),
(7, 4, '2024-05-05 09:30:00', 'Delivery Car'),
(8, 3, '2024-05-10 11:45:00', 'Scanner');
-- Monotery Don
INSERT INTO Monetary_Donation (DID, FID, Amount) VALUES
(1, 1, 100),
(2, 2, 200),
(3, 3, 150),
(4, 4, 300),
(5, 5, 250);

-- Uses
INSERT INTO Uses (SID, EID, Start_Time, End_Time) VALUES
(8, 2, '2024-05-12 08:00:00', '2024-05-12 10:00:00'), -- Ali Ibrahim uses Forklift
(11, 2, '2024-05-12 11:00:00', '2024-05-12 13:00:00'), -- Rana Maalouf uses Delivery Car
(13, 3, '2024-05-12 13:00:00', '2024-05-12 15:00:00'); -- Lina Khoury uses Scanner

-- Inserting data into Warehouse table
INSERT INTO Warehouse (SID, VID, DID, ManID, SECID, WNAME, WLOCATION, WCapacity, Security_Measures, Climate_Control, CAPACITY) 
VALUES
-- Warehouse 1
(1, 1, 1, 1, 1, 'Warehouse A', 'Nabatieh', 'Small', 'Security Cameras', 'Controlled', 2000.00),
(2, 2, 2, 2, 2, 'Warehouse A', 'Nabatieh', 'Small', 'Security Cameras', 'Controlled', 2000.00),
(3, 3, 5, 3, 3, 'Warehouse A', 'Nabatieh', 'Small', 'Security Cameras', 'Controlled', 2000.00),
-- Warehouse 2
(4, 1, 3, 4, 4, 'Warehouse B', 'Beqaa', 'Small', 'Security Cameras', 'Controlled', 3000.00),
(5, 5, 6, 5, 5, 'Warehouse B', 'Beqaa', 'Small', 'Security Cameras', 'Controlled', 3000.00),
(6, 1, 4, 6, 6, 'Warehouse B', 'Beqaa', 'Small', 'Security Cameras', 'Controlled', 3000.00),
(7, 1, 8, 7, 7, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 3000.00),
(8, 1, 7, 8, 8, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 3000.00),
(9, 3, 9, 9, 9, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled',3000.00),
-- Warehouse 3

(10, 3, 10, 10, 10, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(11, 3, 11, 11, 11, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(12, 2, 12, 12, 12, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(13, 3, 13, 1, 1, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled',2000.00),
(14, 4, 14, 2, 2, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled',2000.00),
(15, 2, 15, 3, 3, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(16, 4, 16, 4, 4, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(17, 3, 17, 5, 5, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(18, 2, 18, 6, 6, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(19, 1, 19, 7, 7, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(20, 3, 20, 8, 8, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(21, 4, 21, 9, 9, 'Warehouse C', 'Saida', 'Large', 'Security Guards', 'Controlled', 2000.00),
(22, 5, 22, 10, 10, 'Warehouse ', 'Saida', 'Large', 'Security Guards', 'Controlled',2000.00);
