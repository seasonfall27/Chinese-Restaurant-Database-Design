USE `cecs323sec07bg04`;

INSERT INTO Customers (CustomerID, CustomerName)
VALUES (23, 'Hugh Oink');

-- Trigger #1 Sample Code --
-- Error--
INSERT INTO CustomerAccounts (CustomerID, CustomerName, PhysicalAddress, CustomerType, CorporationName, DepartmentName, Email, MimingsMoneyAmount)
VALUES (23, 'Bianca Glimmer', '437 Columbia Dr. Knoxville, TN 37918', 'Private', 'Samsung', 'Support', NULL, 0);

-- Error--
INSERT INTO CustomerAccounts (CustomerID, CustomerName, PhysicalAddress, CustomerType, CorporationName, DepartmentName, Email, MimingsMoneyAmount)
VALUES 
(24, 'Hugh Oink', '104 Church Rd. Smyrna, GA 30080', 'Corporation', NULL, NULL, 'hughoink@gmail.com', 0);

-- Correct * Already deleted row before inserting for demo --
INSERT INTO CustomerAccounts (CustomerID, CustomerName, PhysicalAddress, CustomerType, CorporationName, DepartmentName, Email, MimingsMoneyAmount)
VALUES 
(23, 'Hugh Oink', '104 Church Rd. Smyrna, GA 30080', 'Private', NULL, NULL, 'hughoink@gmail.com', 0);

-- Trigger #2 Sample Code --
-- Error-
UPDATE CustomerAccounts
SET CustomerName = 'Autumn Moo', CorporationName= 'Palo Alto Networks'
WHERE CustomerID = 1;

-- Error-
UPDATE CustomerAccounts
SET CorporationName= 'Samsung+', Email= 'samsung@support.com'
WHERE CustomerID = 20;

-- Correct * Changed info back to normal before it was updated for demo--
UPDATE CustomerAccounts
SET CorporationName= 'Samsung', DepartmentName= 'Support'
WHERE CustomerID = 20;

-- Trigger #3 Sample Code --
-- Party of 1 * Already deleted these inserts for demos --
INSERT INTO CUSTOMERORDER (CUSTOMERID, CUSTOMERNAME, PARTYSIZE, ORDERID, ORDERDATE, ORDERTIME, AMOUNTTOTAL)
VALUES (1, 'Autumn Nguyen', 1, 25, '2020-05-06', '09:00:00', 10);

INSERT INTO EATINORDER (ORDERID, GRATUITYCHARGE)
VALUES (25, 0);

-- Party of 8 * Already deleted these inserts for demos--
INSERT INTO PARTY (CUSTOMERID, CUSTOMERNAME, PARTYSIZE)
VALUES (2, 'Bryan Vu', 8);

INSERT INTO CUSTOMERORDER (CUSTOMERID, CUSTOMERNAME, PARTYSIZE, ORDERID, ORDERDATE, ORDERTIME, AMOUNTTOTAL)
VALUES (2, 'Bryan Vu', 8, 26, '2020-05-06', '12:00:00', 80);

INSERT INTO EATINORDER (ORDERID, GRATUITYCHARGE)
VALUES (26, 0);

-- Trigger #4 Sample Code --
-- Error * Need to delete rows before demo-
INSERT INTO CUSTOMERORDER (CUSTOMERID, CUSTOMERNAME, PARTYSIZE, ORDERID, ORDERDATE, ORDERTIME, AMOUNTTOTAL)
VALUES (1, 'Autumn Nguyen', 1, 23, '2020-05-06', '09:00:00', 2);

INSERT INTO CARD (ORDERID, CARDTYPE)
VALUES (23, 'DebitCard');

-- Correct * Need to delete rows before demo --
INSERT INTO CUSTOMERORDER (CUSTOMERID, CUSTOMERNAME, PARTYSIZE, ORDERID, ORDERDATE, ORDERTIME, AMOUNTTOTAL)
VALUES (1, 'Autumn Nguyen', 1, 24, '2020-05-06', '09:00:00', 10);

INSERT INTO CARD (ORDERID, CARDTYPE)
VALUES (24, 'DebitCard');








