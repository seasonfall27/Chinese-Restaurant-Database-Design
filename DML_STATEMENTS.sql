/*
*********************************************************************
Name: CECS 323 Term Project: Miming's Resturant
Authors: Autumn Nguyen, Bryan Vu, Rachel Pai, Saurav Chhapawala, Marjorie Balaoro
Group 4, Spring 2020
DML Statements
*********************************************************************
*/

-- CUSTOMERS DML

-- #1-12 are Private Customers
#13-22 are Corporation Accounts --
INSERT INTO Customers (CustomerID, CustomerName)
VALUES (1, 'Autumn Nguyen'),
(2, 'Bryan Vu'),
(3, 'Rachel Pai'),
(4, 'Saurav Chhapawala'),
(5, 'Marjorie Balaoro'),
(6, 'Red Johnson'),
(7, 'David Brown'), -- Anonymous Customer --
(8, 'Mila Duong'),
(9, 'Mimi Opkins'),
(10, 'Neal Terrel'),
(11, 'Chris Hopkins'), -- Anonymous Customer --
(12, 'Doja Cat'), -- Anonymous Customer --
(13, 'Steve Jobs'),
(14, 'Hamlet Hammie'),
(15, 'Ruby Rose'),
(16, 'Snoop Dog'),
(17, 'Sally Strawberry'),
(18, 'Polly Pear'),
(19, 'Chris Hansen'),
(20, 'Robert Downey'),
(21, 'Red Johnson'), 
(22, 'Mila Duong');


INSERT INTO CustomerAccounts (CustomerID, CustomerName, PhysicalAddress, CustomerType, CorporationName, DepartmentName, Email, MimingsMoneyAmount)
VALUES (1, 'Autumn Nguyen', '80 Linden Avenue Groton, CT 06340', 'Private', NULL, NULL, 'autumnnguyen@gmail.com', 10),
(2, 'Bryan Vu', '253 Gartner Rd. Oak Ridge, TN 37830', 'Private', NULL, NULL, 'bryanvu@gmail.com', 2),
(3, 'Rachel Pai', '66 E. Pennington Rd. Vernon Hills, IL 60061', 'Private', NULL, NULL, 'rachelpai@gmail.com', 13),
(4, 'Saurav Chhapawala', '35 Laurel Street Brownsburg, IN 46112', 'Private', NULL, NULL, 'sauravc@gmail.com', 5),
(5, 'Marjorie Balaoro', '79 Temple Dr. Sheboygan, WI 53081', 'Private', NULL, NULL, 'marjoriebalaoro@gmail.com', 0),
(6, 'Red Johnson', '82 Wee Ave. Los Angeles, CA 92081', 'Private', NULL, NULL, 'redjohnson@gmail.com', 11),
(8, 'Mila Duong', '804 Old Monroe Rd. Lawndale, CA 90260', 'Private', NULL, NULL, 'miladuong@gmail.com', 8),
(9, 'Mimi Opkins', '226 Golf Ave. Mcallen, TX 78501', 'Private', NULL, NULL, 'mimiopkins@gmail.com', 20),
(10, 'Neal Terrel', '553 Creek Avenue Ames, IA 50010', 'Private', NULL, NULL, 'nealterrel@gmail.com', 12),
(13, 'Steve Jobs', '9917 Spruce Dr. Orange, NJ 07050', 'Corporation', 'Apple Inc.', 'CEO Office', NULL, 15),
(14, 'Hamlet Hammie', '9807 Stillwater St. Clinton Township, MI 48035', 'Corporation', 'Banana Co.', 'Marketing', NULL, 8),
(15, 'Ruby Rose', '92 N. Railroad Street Hampton, VA 23666', 'Corporation', 'Grapes Galore', 'Maintenance', NULL, 3),
(16, 'Snoop Dog', '104 Church Rd. Smyrna, GA 30080', 'Corporation', 'Mango Express', 'Planning', NULL, 21),
(17, 'Sally Strawberry', '437 Columbia Dr. Knoxville, TN 37918', 'Corporation', 'Strawberry Farms', 'Agriculture', NULL, 0),
(18, 'Polly Pear', '853 Circle Drive Urbandale, IA 50322', 'Corporation', 'Pear LLC', 'Accounting', NULL, 20),
(19, 'Chris Hansen', '104 Church Rd. Smyrna, GA 30080', 'Corporation', 'IBM', 'IT', NULL, 21),
(20, 'Robert Downey', '437 Columbia Dr. Knoxville, TN 37918', 'Corporation', 'Samsung', 'Design', NULL, 0),
(21, 'Red Johnson', '437 Columbia Dr. Knoxville, TN 37918', 'Corporation', 'Samsung', 'Support', NULL, 0),
(22, 'Mila Duong', '104 Church Rd. Smyrna, GA 30080', 'Corporation', 'IBM', 'Customer Service', NULL, 0);


INSERT INTO MimingsMoneyTransactionLogs (CustomerID, TransactionDate, TransactionAmount)
VALUES (1, '2020-04-20', 10),
(3, '2020-04-20', 5),
(5, '2020-04-20', 9),
(9, '2020-04-22', 10),
(10, '2020-04-22', 7),
(1, '2020-04-22', 10),
(6, '2020-04-22', 5),
(4, '2020-04-22', 10),
(18, '2020-04-24', 10),
(14, '2020-04-24', 10),
(13, '2020-04-25', 15),
(20, '2020-04-25', 10);


INSERT INTO CorporationContactInfo (CustomerID, DepartmentName, ContactInfoType, ContactInfo)
VALUES (13, 'CEO Office', 'Email', 'support@apple.com'),
	(14, 'Marketing', 'MobilePhoneNumber', '920-129-1235'),
	(15, 'Maintenance', 'WorkPhoneNumber', '124-456-9824'),
	(16, 'Planning', 'Email', 'mangoexpress@snoop.com'),
	(17, 'Agriculture', 'MobilePhoneNumber', '823-234-4982'),
(18, 'Accounting', 'WorkPhoneNumber', '192-189-3251'),
(19, 'IT', 'Email', 'ibm@support.com'),
(20, 'Design', 'WorkPhoneNumber', '122-129-3261');



-- STAFF DML

-- #1-3 Managers
#4-16 Chefs
#17-28 Part Time --
INSERT INTO STAFF (STAFFID, FIRSTNAME, LASTNAME, PAYRATE)
VALUES (1, 'Sydney', 'Koch', '$32'),
(2, 'Chaya', 'Estrada', '$32'),
(3, 'Cordell', 'Hanna', '$32'),
(4, 'Jovani', 'Hunt', '$27'),
(5, 'Daphne', 'Blair', '$27'),
(6, 'Adison', 'Valentine', '$27'),
(7, 'Wendy', 'Barrera', '$22'),
(8, 'Mya', 'Gray', '$22'),
(9, 'Jonathon', 'Callahan', '$22'),
(10, 'Marco', 'Stein', '$22'),
(11, 'Cannon', 'Lyons', '$22'),
(12, 'Khloe', 'Cardenas', '$17'),
(13, 'Skylar', 'Williams', '$17'),
(14, 'Adrienne', 'Ortiz', '$17'),
(15, 'Thomas', 'Mcbride', '$17'),
(16, 'Aria', 'Vaughn', '$17'),
(17, 'Blaze', 'Schmidt', '$14'),
(18, 'Thalia', 'Hodges', '$14'),
(19, 'Brodie', 'Castro', '$14'),
(20, 'Mario', 'Davis', '$14'),
(21, 'Jacob', 'Ewing', '$13'),
(22, 'Beau', 'Vaughn', '$13'),
(23, 'Peter', 'Huerta', '$13'),
(24, 'Shayna', 'Yates', '$13'),
(25, 'Mina', 'Norman', '$13'),
(26, 'Marvin', 'Nguyen', '$13'),
(27, 'London', 'Trevino', '$13'),
(28, 'Issac', 'Jones', '$13');


INSERT INTO SALARYSTAFF (STAFFID, HEALTHCAREBENEFITS)
VALUES (1, 'Dental'),
(2, 'Dental & Health'),
(3, 'Dental'),
(4, 'Health'),
(5, 'Vision & Dental'),
(6, 'Health'),
(7, 'Dental & Vision'),
(8, 'Life'),
(9, 'Life & Health'),
(10, 'Life & Vision'),
(11, 'Dental & Health'),
(12, 'Dental'),
(13, 'Health'),
(14, 'Vision & Dental'),
(15, 'Vision & Dental'), 
(16, 'Dental');


-- #4-11 Head Chefs & Sous Chefs
#12-16 Line Chefs --
INSERT INTO CHEF (STAFFID)
VALUES (4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16);

INSERT INTO MANAGER (STAFFID)
VALUES (1),
(2),
(3);

INSERT INTO LINECHEF (STAFFID)
VALUES (12),
(13),
(14),
(15),
(16);

INSERT INTO HEADCHEF (STAFFID)
VALUES (4),
(5),
(6);

INSERT INTO SOUSCHEF (STAFFID)
VALUES (7),
(8),
(9),
(10),
(11);

INSERT INTO EXPERTISE (SOUSCHEFMENTEEID, MENUITEMID, MENUITEMNAME)
VALUES (8, 1, 'Chow Mein'),
(8, 6, 'Chow Mein'),
(8, 26, 'Egg Foo Young'),
(8, 41, 'Egg Foo Young'),
(8, 67, 'Chop Suey'),
(9, 1, 'Chow Mein'),
(9, 6, 'Chow Mein'),
(9, 27, 'Egg Foo Young'),
(9, 42, 'Egg Foo Young'),
(9, 68, 'Chop Suey'),
(9, 70, 'Chop Suey'),
(9, 76, 'Chicken Noodle Soup'),
(10, 1, 'Chow Mein'),
(10, 6, 'Chow Mein'),
(10, 28, 'Egg Foo Young'),
(10, 45, 'Egg Foo Young'),
(10, 51, 'Chop Suey'),
(11, 81, 'Tofu Soup'),
(11, 86, 'Wonton Soup'),
(11, 95, 'Egg Drop Soup');



INSERT INTO MENTORSHIP (SOUSCHEFMENTORID, SOUSCHEFMENTEEID, MENUITEMID, MENUITEMNAME, STARTDATE, ENDDATE)
VALUES (8, 7, 1, 'Chow Mein', '2020-04-01', '2020-04-03'),
(8, 7, 6, 'Chow Mein', '2020-04-04', '2020-04-05'),
(8, 7, 26, 'Egg Foo Young', '2020-04-06', '2020-04-08'),
(8, 7, 41, 'Egg Foo Young', '2020-04-09', '2020-04-11'),
(8, 7, 67, 'Chop Suey', '2020-04-12', '2020-04-13'),
(9, 7, 1, 'Chow Mein', '2020-04-14', '2020-04-16'),
(9, 7, 6, 'Chow Mein', '2020-04-14', '2020-04-16'),
(9, 8, 27, 'Egg Foo Young', '2020-04-15', '2020-04-16'),
(9, 8, 42, 'Egg Foo Young', '2020-04-17', '2020-04-19'),
(9, 8, 68, 'Egg Foo Young', '2020-04-20', '2020-04-21'),
(9, 8, 70, 'Chop Suey', '2020-04-22', '2020-04-23'),
(9, 8, 76, 'Chop Suey', '2020-04-24', '2020-04-25'),
(10, 8, 1, 'Chow Mein', '2020-04-24', '2020-04-25'),
(10, 8, 6, 'Chow Mein', '2020-04-26', '2020-04-27'),
(10, 9, 28, 'Egg Foo Young', '2020-04-27', '2020-04-28'),
(10, 9, 45, 'Egg Foo Young', '2020-04-29', '2020-04-30'),
(10, 9, 51, 'Chop Suey', '2020-05-01', '2020-05-02'),
(11, 10, 81, 'Tofu Soup', '2020-05-01', '2020-05-02'),
(11, 10, 86, 'Wonton Soup', '2020-05-03', '2020-05-04'),
(11, 10, 95, 'Egg Drop Soup', '2020-05-05', '2020-05-06');



INSERT INTO PARTTIMESTAFF (STAFFID, HOURSWORKEDPERWEEK)
VALUES (17, 30),
(18, 30),
(19, 28),
(20, 26),
(21, 26),
(22, 26),
(23, 20),
(24, 20),
(25, 26),
(26, 26),
(27, 20),
(28, 20);

INSERT INTO MAITRED (STAFFID)
VALUES (17),
(18),
(19);

INSERT INTO DISHWASHER (STAFFID)
VALUES (20),
(21),
(22);

INSERT INTO WAITINGSTAFF (STAFFID)
VALUES (23),
(24),
(25),
(26),
(27),
(28);



-- SHIFT DML

-- Opening Date: 2020-04-20
-- Managers: 1, 2, 3
-- HeadChefs: 4, 5, 6 --
INSERT INTO GENERALSHIFT (SHIFTDATE, SHIFTMANAGERID, SHIFTID, SHIFTTYPE, HEADCHEFID)
VALUES ('2020-04-20', 1, 1, 'AM', 4),
('2020-04-20', 2, 2, 'PM', 5),
('2020-04-21', 1, 3, 'AM', 6),
('2020-04-21', 3, 4, 'PM', 4),
('2020-04-22', 2, 5, 'AM', 5),
('2020-04-22', 1, 6, 'PM', 6),
('2020-04-23', 2, 7, 'AM', 4),
('2020-04-23', 3, 8, 'PM', 5),
('2020-04-24', 1, 9, 'AM', 4),
('2020-04-24', 2, 10, 'PM', 5),
('2020-04-25', 3, 11, 'AM', 6),
('2020-04-25', 2, 12, 'PM', 4),
('2020-04-26', 3, 13, 'AM', 5),
('2020-04-26', 1, 14, 'PM', 6),
('2020-04-27', 2, 15, 'AM', 4),
('2020-04-27', 3, 16, 'PM', 5),
('2020-04-28', 1, 17, 'AM', 4),
('2020-04-28', 2, 18, 'PM', 5);


-- Line Chefs (#12-16) are assigned to stations in a shift. --
INSERT INTO STATIONASSIGNMENT (STAFFID, SHIFTID, STATIONROLE)
VALUES (12, 1, 'Butcher'),
(12, 1, 'FryChef'),
(12, 1, 'GrillChef'),
(12, 1, 'PantryChef'),
(13, 1, 'PastryChef'),
(13, 1, 'RoastChef'),
(13, 1, 'SauteChef'),
(13, 1, 'VegetableChef'),
(14, 2, 'Butcher'),
(14, 2, 'FryChef'),
(14, 2, 'GrillChef'),
(14, 2, 'PantryChef'),
(15, 2, 'PastryChef'),
(15, 2, 'RoastChef'),
(15, 2, 'SauteChef'),
(15, 2, 'VegetableChef'),
(16, 3, 'Butcher'),
(16, 3, 'FryChef'),
(16, 3, 'GrillChef'),
(16, 3, 'PantryChef'),
(12, 3, 'PastryChef'),
(12, 3, 'RoastChef'),
(12, 3, 'SauteChef'),
(12, 3, 'VegetableChef');



-- MENU DML

-- #1-75 Meat Entrees
-- #76-95 Soups
-- #96-120 Appetizers --

INSERT INTO MENUITEM (MENUITEMID, MENUITEMNAME, CATEGORY, SPICELEVEL)
VALUES 
-- Chow Mein with Chef Special --
(1, 'Chow Mein', 'MeatEntree', 'Mild'),
(2, 'Chow Mein', 'MeatEntree', 'Tangy'),
(3, 'Chow Mein', 'MeatEntree', 'Piquant'),
(4, 'Chow Mein', 'MeatEntree', 'Hot'),
(5, 'Chow Mein', 'MeatEntree', 'OhMyGod'),
-- Chow Mein with Pork --
(6, 'Chow Mein', 'MeatEntree', 'Mild'),
(7, 'Chow Mein', 'MeatEntree', 'Tangy'),
(8, 'Chow Mein', 'MeatEntree', 'Piquant'),
(9, 'Chow Mein', 'MeatEntree', 'Hot'),
(10, 'Chow Mein', 'MeatEntree', 'OhMyGod'),
-- Chow Mein with Beef --
(11, 'Chow Mein', 'MeatEntree', 'Mild'),
(12, 'Chow Mein', 'MeatEntree', 'Tangy'),
(13, 'Chow Mein', 'MeatEntree', 'Piquant'),
(14, 'Chow Mein', 'MeatEntree', 'Hot'),
(15, 'Chow Mein', 'MeatEntree', 'OhMyGod'),
-- Chow Mein with Seafood --
(16, 'Chow Mein', 'MeatEntree', 'Mild'),
(17, 'Chow Mein', 'MeatEntree', 'Tangy'),
(18, 'Chow Mein', 'MeatEntree', 'Piquant'),
(19, 'Chow Mein', 'MeatEntree', 'Hot'),
(20, 'Chow Mein', 'MeatEntree', 'OhMyGod'),
-- Chow Mein with Vegetables --
(21, 'Chow Mein', 'MeatEntree', 'Mild'),
(22, 'Chow Mein', 'MeatEntree', 'Tangy'),
(23, 'Chow Mein', 'MeatEntree', 'Piquant'),
(24, 'Chow Mein', 'MeatEntree', 'Hot'),
(25, 'Chow Mein', 'MeatEntree', 'OhMyGod'),
-- Egg Foo Young with Chef Special --
(26, 'Egg Foo Young', 'MeatEntree', 'Mild'),
(27, 'Egg Foo Young', 'MeatEntree', 'Tangy'),
(28, 'Egg Foo Young', 'MeatEntree', 'Piquant'),
(29, 'Egg Foo Young', 'MeatEntree', 'Hot'),
(30, 'Egg Foo Young', 'MeatEntree', 'OhMyGod'),
-- Egg Foo Young with Pork --
(31, 'Egg Foo Young', 'MeatEntree', 'Mild'),
(32, 'Egg Foo Young', 'MeatEntree', 'Tangy'),
(33, 'Egg Foo Young', 'MeatEntree', 'Piquant'),
(34, 'Egg Foo Young', 'MeatEntree', 'Hot'),
(35, 'Egg Foo Young', 'MeatEntree', 'OhMyGod'),
-- Egg Foo Young with Beef --
(36, 'Egg Foo Young', 'MeatEntree', 'Mild'),
(37, 'Egg Foo Young', 'MeatEntree', 'Tangy'),
(38, 'Egg Foo Young', 'MeatEntree', 'Piquant'),
(39, 'Egg Foo Young', 'MeatEntree', 'Hot'),
(40, 'Egg Foo Young', 'MeatEntree', 'OhMyGod'),
-- Egg Foo Young with Seafood --
(41, 'Egg Foo Young', 'MeatEntree', 'Mild'),
(42, 'Egg Foo Young', 'MeatEntree', 'Tangy'),
(43, 'Egg Foo Young', 'MeatEntree', 'Piquant'),
(44, 'Egg Foo Young', 'MeatEntree', 'Hot'),
(45, 'Egg Foo Young', 'MeatEntree', 'OhMyGod'),
-- Egg Foo Young with Vegetable --
(46, 'Egg Foo Young', 'MeatEntree', 'Mild'),
(47, 'Egg Foo Young', 'MeatEntree', 'Tangy'),
(48, 'Egg Foo Young', 'MeatEntree', 'Piquant'),
(49, 'Egg Foo Young', 'MeatEntree', 'Hot'),
(50, 'Egg Foo Young', 'MeatEntree', 'OhMyGod'),
-- Chop Suey with Chef Special--
(51, 'Chop Suey', 'MeatEntree', 'Mild'),
(52, 'Chop Suey', 'MeatEntree', 'Tangy'),
(53, 'Chop Suey', 'MeatEntree', 'Piquant'),
(54, 'Chop Suey', 'MeatEntree', 'Hot'),
(55, 'Chop Suey', 'MeatEntree', 'OhMyGod'),
-- Chop Suey with Pork--
(56, 'Chop Suey', 'MeatEntree', 'Mild'),
(57, 'Chop Suey', 'MeatEntree', 'Tangy'),
(58, 'Chop Suey', 'MeatEntree', 'Piquant'),
(59, 'Chop Suey', 'MeatEntree', 'Hot'),
(60, 'Chop Suey', 'MeatEntree', 'OhMyGod'),
-- Chop Suey with Beef--
(61, 'Chop Suey', 'MeatEntree', 'Mild'),
(62, 'Chop Suey', 'MeatEntree', 'Tangy'),
(63, 'Chop Suey', 'MeatEntree', 'Piquant'),
(64, 'Chop Suey', 'MeatEntree', 'Hot'),
(65, 'Chop Suey', 'MeatEntree', 'OhMyGod'),
-- Chop Suey with Seafood--
(66, 'Chop Suey', 'MeatEntree', 'Mild'),
(67, 'Chop Suey', 'MeatEntree', 'Tangy'),
(68, 'Chop Suey', 'MeatEntree', 'Piquant'),
(69, 'Chop Suey', 'MeatEntree', 'Hot'),
(70, 'Chop Suey', 'MeatEntree', 'OhMyGod'),
-- Chop Suey with Vegetable--
(71, 'Chop Suey', 'MeatEntree', 'Mild'),
(72, 'Chop Suey', 'MeatEntree', 'Tangy'),
(73, 'Chop Suey', 'MeatEntree', 'Piquant'),
(74, 'Chop Suey', 'MeatEntree', 'Hot'),
(75, 'Chop Suey', 'MeatEntree', 'OhMyGod'),
(76, 'Chicken Noodle Soup', 'Soup', 'Mild'),
(77, 'Chicken Noodle Soup', 'Soup', 'Tangy'),
(78, 'Chicken Noodle Soup', 'Soup', 'Piquant'),
(79, 'Chicken Noodle Soup', 'Soup', 'Hot'),
(80, 'Chicken Noodle Soup', 'Soup', 'OhMyGod'),
(81, 'Tofu Soup', 'Soup', 'Mild'),
(82, 'Tofu Soup', 'Soup', 'Tangy'),
(83, 'Tofu Soup', 'Soup', 'Piquant'),
(84, 'Tofu Soup', 'Soup', 'Hot'),
(85, 'Tofu Soup', 'Soup', 'OhMyGod'),
(86, 'Wonton Soup', 'Soup', 'Mild'),
(87, 'Wonton Soup', 'Soup', 'Tangy'),
(88, 'Wonton Soup', 'Soup', 'Piquant'),
(89, 'Wonton Soup', 'Soup', 'Hot'),
(90, 'Wonton Soup', 'Soup', 'OhMyGod'),
(91, 'Egg Drop Soup', 'Soup', 'Mild'),
(92, 'Egg Drop Soup', 'Soup', 'Tangy'),
(93, 'Egg Drop Soup', 'Soup', 'Piquant'),
(94, 'Egg Drop Soup', 'Soup', 'Hot'),
(95, 'Egg Drop Soup', 'Soup', 'OhMyGod'),
(96, 'Shrimp Balls', 'Appetizer', 'Mild'),
(97, 'Shrimp Balls', 'Appetizer', 'Tangy'),
(98, 'Shrimp Balls', 'Appetizer', 'Piquant'),
(99, 'Shrimp Balls', 'Appetizer', 'Hot'),
(100, 'Shrimp Balls', 'Appetizer', 'OhMyGod'),
(101, 'Dumplings', 'Appetizer', 'Mild'),
(102, 'Dumplings', 'Appetizer', 'Tangy'),
(103, 'Dumplings', 'Appetizer', 'Piquant'),
(104, 'Dumplings', 'Appetizer', 'Hot'),
(105, 'Dumplings', 'Appetizer', 'OhMyGod'),
(106, 'Egg Rolls', 'Appetizer', 'Mild'),
(107, 'Egg Rolls', 'Appetizer', 'Tangy'),
(108, 'Egg Rolls', 'Appetizer', 'Piquant'),
(109, 'Egg Rolls', 'Appetizer', 'Hot'),
(110, 'Egg Rolls', 'Appetizer', 'OhMyGod'),
(111, 'Lettuce Wraps', 'Appetizer', 'Mild'),
(112, 'Lettuce Wraps', 'Appetizer', 'Tangy'),
(113, 'Lettuce Wraps', 'Appetizer', 'Piquant'),
(114, 'Lettuce Wraps', 'Appetizer', 'Hot'),
(115, 'Lettuce Wraps', 'Appetizer', 'OhMyGod'),
(116, 'Pork Buns', 'Appetizer', 'Mild'),
(117, 'Pork Buns', 'Appetizer', 'Tangy'),
(118, 'Pork Buns', 'Appetizer', 'Piquant'),
(119, 'Pork Buns', 'Appetizer', 'Hot'),
(120, 'Pork Buns', 'Appetizer', 'OhMyGod');


INSERT INTO MEATENTREE (MENUITEMID, MENUITEMNAME, MEATOPTION)
VALUES 
-- Chow Mein with Chef Special --
(1, 'Chow Mein', 'ChefSpecial'),
(2, 'Chow Mein', 'ChefSpecial'),
(3, 'Chow Mein', 'ChefSpecial'),
(4, 'Chow Mein', 'ChefSpecial'),
(5, 'Chow Mein', 'ChefSpecial'),

-- Chow Mein with Pork --
(6, 'Chow Mein', 'Pork'),
(7, 'Chow Mein', 'Pork'),
(8, 'Chow Mein', 'Pork'),
(9, 'Chow Mein', 'Pork'),
(10, 'Chow Mein', 'Pork'),

-- Chow Mein with Beef --
(11, 'Chow Mein', 'Beef'),
(12, 'Chow Mein', 'Beef'),
(13, 'Chow Mein', 'Beef'),
(14, 'Chow Mein', 'Beef'),
(15, 'Chow Mein', 'Beef'),

-- Chow Mein with Seafood --
(16, 'Chow Mein', 'Seafood'),
(17, 'Chow Mein', 'Seafood'),
(18, 'Chow Mein', 'Seafood'),
(19, 'Chow Mein', 'Seafood'),
(20, 'Chow Mein', 'Seafood'),

-- Chow Mein with Vegetable --
(21, 'Chow Mein', 'Vegetable'),
(22, 'Chow Mein', 'Vegetable'),
(23, 'Chow Mein', 'Vegetable'),
(24, 'Chow Mein', 'Vegetable'),
(25, 'Chow Mein', 'Vegetable'),

-- Egg Foo Young with Chef Special --
(26, 'Egg Foo Young', 'ChefSpecial'),
(27, 'Egg Foo Young', 'ChefSpecial'),
(28, 'Egg Foo Young', 'ChefSpecial'),
(29, 'Egg Foo Young', 'ChefSpecial'),
(30, 'Egg Foo Young', 'ChefSpecial'),

-- Egg Foo Young with Pork --
(31, 'Egg Foo Young', 'Pork'),
(32, 'Egg Foo Young', 'Pork'),
(33, 'Egg Foo Young', 'Pork'),
(34, 'Egg Foo Young', 'Pork'),
(35, 'Egg Foo Young', 'Pork'),

-- Egg Foo Young with Beef --
(36, 'Egg Foo Young', 'Beef'),
(37, 'Egg Foo Young', 'Beef'),
(38, 'Egg Foo Young', 'Beef'),
(39, 'Egg Foo Young', 'Beef'),
(40, 'Egg Foo Young', 'Beef'),

-- Egg Foo Young with Seafood --
(41, 'Egg Foo Young', 'Seafood'),
(42, 'Egg Foo Young', 'Seafood'),
(43, 'Egg Foo Young', 'Seafood'),
(44, 'Egg Foo Young', 'Seafood'),
(45, 'Egg Foo Young', 'Seafood'),

-- Egg Foo Young with Vegetable --
(46, 'Egg Foo Young', 'Vegetable'),
(47, 'Egg Foo Young', 'Vegetable'),
(48, 'Egg Foo Young', 'Vegetable'),
(49, 'Egg Foo Young', 'Vegetable'),
(50, 'Egg Foo Young', 'Vegetable'),

-- Chop Suey with Chef Special --
(51, 'Chop Suey', 'ChefSpecial'),
(52, 'Chop Suey', 'ChefSpecial'),
(53, 'Chop Suey', 'ChefSpecial'),
(54, 'Chop Suey', 'ChefSpecial'),
(55, 'Chop Suey', 'ChefSpecial'),

-- Chop Suey with Pork --
(56, 'Chop Suey', 'Pork'),
(57, 'Chop Suey', 'Pork'),
(58, 'Chop Suey', 'Pork'),
(59, 'Chop Suey', 'Pork'),
(60, 'Chop Suey', 'Pork'),

-- Chop Suey with Beef --
(61, 'Chop Suey', 'Beef'),
(62, 'Chop Suey', 'Beef'),
(63, 'Chop Suey', 'Beef'),
(64, 'Chop Suey', 'Beef'),
(65, 'Chop Suey', 'Beef'),

-- Chop Suey with Seafood --
(66, 'Chop Suey', 'Seafood'),
(67, 'Chop Suey', 'Seafood'),
(68, 'Chop Suey', 'Seafood'),
(69, 'Chop Suey', 'Seafood'),
(70, 'Chop Suey', 'Seafood'),

-- Chop Suey with Vegetable --
(71, 'Chop Suey', 'Vegetable'),
(72, 'Chop Suey', 'Vegetable'),
(73, 'Chop Suey', 'Vegetable'),
(74, 'Chop Suey', 'Vegetable'),
(75, 'Chop Suey', 'Vegetable');



INSERT INTO MENU (MENUID, AGEGROUP)
VALUES (1, 'Children'), -- Lunch--
(2, 'Children'), -- Dinner--
(3, 'Children'), -- Buffet--
(4, 'Adult'), -- Lunch--
(5, 'Adult'), -- Dinner--
(6, 'Adult'); -- Buffet--


INSERT INTO ALACARTE (MENUID, AGEGROUP, MENUTYPE)
VALUES (1, 'Children', 'Lunch'),
(2, 'Children', 'Dinner'),
(4, 'Adult', 'Lunch'),
(5, 'Adult', 'Dinner');

INSERT INTO BUFFET (MENUID, AGEGROUP, BUFFETPRICE)
VALUES (3, 'Children', '14'),
(6, 'Adult', '20');



-- ORDER DML

INSERT INTO PARTY (CUSTOMERID, CUSTOMERNAME, PARTYSIZE)
VALUES (1, 'Autumn Nguyen', 1), -- To Go--
(2, 'Bryan Vu', 2),
(3, 'Rachel Pai', 4),
(4, 'Saurav Chhapawala', 1), -- To Go--
(5, 'Marjorie Balaoro', 3),
(6, 'Red Johnson', 5),
(8, 'Mila Duong', 10),
(9, 'Mimi Opkins', 6),
(10, 'Neal Terrel', 8),
(13, 'Steve Jobs', 1), -- To Go--
(14, 'Hamlet Hammie', 4),
(15, 'Ruby Rose', 9),
(16, 'Snoop Dog', 1), -- To Go --
(17, 'Sally Strawberry', 2),
(18, 'Polly Pear', 8),
(19, 'Chris Hansen', 3),
(20, 'Robert Downey', 1); -- To Go --

-- Mimings Money Orders: #1, 3, 5, 8, 9, 10, 11, 12, 18, 19, 20, 22 --
-- To Go Orders: 1, 4, 10, 13, 16, 20 All are paid with card--
-- Eat In Orders: 2, 3, 5, 6, 7, 8, 9*, 11, 12, 14, 15*, 17, 18*, 19, 21, 22 --
-- Card: 2, 4, 6, 13, 16, 21 --
-- Cash Orders: 7, 14, 15, 17 --
INSERT INTO CUSTOMERORDER (CUSTOMERID, CUSTOMERNAME, PARTYSIZE, ORDERID, ORDERDATE, ORDERTIME, AMOUNTTOTAL)
VALUES (1, 'Autumn Nguyen', 1, 1, '2020-04-20', '09:00:00', 10), -- To Go & Mimings--
(2, 'Bryan Vu', 2, 2, '2020-04-20', '10:10:00', 10),
(3, 'Rachel Pai', 4, 3, '2020-04-20', '11:20:00', 30), -- Mimings--
(4, 'Saurav Chhapawala', 1, 4, '2020-04-20', '13:30:00', 100), -- To Go--
(5, 'Marjorie Balaoro', 3, 5, '2020-04-20', '16:40:00', 20), -- Mimings --
(6, 'Red Johnson', 5, 6, '2020-04-21', '09:10:00', 50),
(8, 'Mila Duong', 10, 7, '2020-04-21', '15:40:00', 10),
(9, 'Mimi Opkins', 6, 8, '2020-04-22', '09:10:00', 20), -- Mimings --
(10, 'Neal Terrel', 8, 9, '2020-04-22', '11:16:00', 30), -- Mimings --
(1, 'Autumn Nguyen', 1, 10, '2020-04-22', '09:00:00', 10), -- To Go & Mimings --
(6, 'Red Johnson', 5, 11, '2020-04-22', '09:10:00', 20), -- Mimings --
(4, 'Saurav Chhapawala', 1, 12, '2020-04-22', '13:30:00', 20), -- Mimings --
(13, 'Steve Jobs', 1, 13, '2020-04-22', '15:20:00', 130), -- To Go --
(14, 'Hamlet Hammie', 4, 14, '2020-04-23', '09:40:00', 90),
(15, 'Ruby Rose', 9, 15, '2020-04-23', '11:45:00', 40),
(16, 'Snoop Dog', 1, 16, '2020-04-24', '09:45:00', 20), -- To Go --
(17, 'Sally Strawberry', 2, 17, '2020-04-24', '13:05:00', 20),
(18, 'Polly Pear', 8, 18, '2020-04-24', '09:23:00', 20), -- Mimings --
(14, 'Hamlet Hammie', 4, 19, '2020-04-24', '09:40:00', 20), -- Mimings --
(13, 'Steve Jobs', 1, 20, '2020-04-25', '15:20:00', 20), -- Mimings --
(19, 'Chris Hansen', 3, 21, '2020-04-25', '13:07:00', 20),
(20, 'Robert Downey', 1, 22, '2020-04-25', '14:10:00', 10); -- To Go & Mimings --


INSERT INTO PAYMENT (ORDERID)
VALUES (1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22);


INSERT INTO MIMINGSMONEY (ORDERID)
VALUES (1),
(3),
(5),
(8),
(9),
(10),
(11),
(12),
(18),
(19),
(20),
(22);

INSERT INTO CARD (ORDERID, CARDTYPE)
VALUES (2, 'DebitCard'),
(4, 'DebitCard'),
(6, 'CreditCard'),
(13, 'CreditCard'),
(16, 'DebitCard'),
(21, 'CreditCard');

INSERT INTO CASH (ORDERID)
VALUES (7),
(14),
(15),
(17);

INSERT INTO TOGOORDER (ORDERID, PICKUPTIME, TIMECOOKED)
VALUES (1, '09:30:00', '09:15:00'),
(4, '13:50:00', '13:35:00'),
(10, '09:33:00', '09:20:00'),
(13, '15:50:00', '15:30:00'),
(16, '10:10:00', '10:00:00'),
(20, '14:45:00', '14:20:00');

----------------------------------

-- Mimings Money Orders: #1, 3, 5, 8, 9, 10, 11, 12, 18, 19, 20, 22 --
-- To Go Orders: 1, 4, 10, 13, 16, 20 All are paid with card--
-- Eat In Orders: 2, 3, 5, 6, 7, 8, 9*, 11, 12, 14, 15*, 17, 18*, 19, 21, 22 --
-- Card: 2, 4, 6, 13, 16, 21 --
-- Cash Orders: 7, 14, 15, 17 --
INSERT INTO EATINORDER (ORDERID, GRATUITYCHARGE)
VALUES (2, 0),
(3, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 6),
(11, 0),
(12, 0),
(14, 0),
(15, 8),
(17, 0),
(18, 4),
(19, 0),
(21, 0),
(22, 0);


--------------------------------

INSERT INTO ITEMSPECIFICATION (MENUITEMID, MENUITEMNAME, PORTIONSIZE, ITEMPRICE, MENUID, AGEGROUP)
VALUES 
-- Children's Lunch: Chow Mein with Chef Special --
(1, 'Chow Mein', 'Small', 5, 1, 'Children'),
(2, 'Chow Mein', 'Small', 5, 1, 'Children'),
(3, 'Chow Mein', 'Small', 5, 1, 'Children'),
(4, 'Chow Mein', 'Small', 5, 1, 'Children'),
(5, 'Chow Mein', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chow Mein with Chef Special --
(1, 'Chow Mein', 'Small', 10, 2, 'Children'),
(2, 'Chow Mein', 'Small', 10, 2, 'Children'),
(3, 'Chow Mein', 'Small', 10, 2, 'Children'),
(4, 'Chow Mein', 'Small', 10, 2, 'Children'),
(5, 'Chow Mein', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chow Mein with Chef Special --
(1, 'Chow Mein', 'Small', 0, 3, 'Children'),
(2, 'Chow Mein', 'Small', 0, 3, 'Children'),
(3, 'Chow Mein', 'Small', 0, 3, 'Children'),
(4, 'Chow Mein', 'Small', 0, 3, 'Children'),
(5, 'Chow Mein', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chow Mein with Chef Special --
(1, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(2, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(3, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(4, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(5, 'Chow Mein', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chow Mein with Chef Special --
(1, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(2, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(3, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(4, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(5, 'Chow Mein', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chow Mein with Chef Special --
(1, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(2, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(3, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(4, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(5, 'Chow Mein', 'Large', 0, 6, 'Adult'),



-- Children's Lunch: Chow Mein with Pork --
(6, 'Chow Mein', 'Small', 5, 1, 'Children'),
(7, 'Chow Mein', 'Small', 5, 1, 'Children'),
(8, 'Chow Mein', 'Small', 5, 1, 'Children'),
(9, 'Chow Mein', 'Small', 5, 1, 'Children'),
(10, 'Chow Mein', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chow Mein with Pork --
(6, 'Chow Mein', 'Small', 10, 2, 'Children'),
(7, 'Chow Mein', 'Small', 10, 2, 'Children'),
(8, 'Chow Mein', 'Small', 10, 2, 'Children'),
(9, 'Chow Mein', 'Small', 10, 2, 'Children'),
(10, 'Chow Mein', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chow Mein with Pork --
(6, 'Chow Mein', 'Small', 0, 3, 'Children'),
(7, 'Chow Mein', 'Small', 0, 3, 'Children'),
(8, 'Chow Mein', 'Small', 0, 3, 'Children'),
(9, 'Chow Mein', 'Small', 0, 3, 'Children'),
(10, 'Chow Mein', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chow Mein with Pork --
(6, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(7, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(8, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(9, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(10, 'Chow Mein', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chow Mein with Pork --
(6, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(7, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(8, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(9, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(10, 'Chow Mein', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chow Mein with Pork --
(6, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(7, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(8, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(9, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(10, 'Chow Mein', 'Large', 0, 6, 'Adult'),



-- Children's Lunch: Chow Mein with Beef --
(11, 'Chow Mein', 'Small', 5, 1, 'Children'),
(12, 'Chow Mein', 'Small', 5, 1, 'Children'),
(13, 'Chow Mein', 'Small', 5, 1, 'Children'),
(14, 'Chow Mein', 'Small', 5, 1, 'Children'),
(15, 'Chow Mein', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chow Mein with Beef --
(11, 'Chow Mein', 'Small', 10, 2, 'Children'),
(12, 'Chow Mein', 'Small', 10, 2, 'Children'),
(13, 'Chow Mein', 'Small', 10, 2, 'Children'),
(14, 'Chow Mein', 'Small', 10, 2, 'Children'),
(15, 'Chow Mein', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chow Mein with Beef --
(11, 'Chow Mein', 'Small', 0, 3, 'Children'),
(12, 'Chow Mein', 'Small', 0, 3, 'Children'),
(13, 'Chow Mein', 'Small', 0, 3, 'Children'),
(14, 'Chow Mein', 'Small', 0, 3, 'Children'),
(15, 'Chow Mein', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chow Mein with Beef --
(11, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(12, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(13, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(14, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(15, 'Chow Mein', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chow Mein with Beef --
(11, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(12, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(13, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(14, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(15, 'Chow Mein', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chow Mein with Beef --
(11, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(12, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(13, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(14, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(15, 'Chow Mein', 'Large', 0, 6, 'Adult'),


-- Children's Lunch: Chow Mein with Seafood --
(16, 'Chow Mein', 'Small', 5, 1, 'Children'),
(17, 'Chow Mein', 'Small', 5, 1, 'Children'),
(18, 'Chow Mein', 'Small', 5, 1, 'Children'),
(19, 'Chow Mein', 'Small', 5, 1, 'Children'),
(20, 'Chow Mein', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chow Mein with Seafood --
(16, 'Chow Mein', 'Small', 10, 2, 'Children'),
(17, 'Chow Mein', 'Small', 10, 2, 'Children'),
(18, 'Chow Mein', 'Small', 10, 2, 'Children'),
(19, 'Chow Mein', 'Small', 10, 2, 'Children'),
(20, 'Chow Mein', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chow Mein with Seafood --
(16, 'Chow Mein', 'Small', 0, 3, 'Children'),
(17, 'Chow Mein', 'Small', 0, 3, 'Children'),
(18, 'Chow Mein', 'Small', 0, 3, 'Children'),
(19, 'Chow Mein', 'Small', 0, 3, 'Children'),
(20, 'Chow Mein', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chow Mein with Seafood --
(16, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(17, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(18, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(19, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(20, 'Chow Mein', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chow Mein with Seafood --
(16, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(17, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(18, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(19, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(20, 'Chow Mein', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chow Mein with Seafood --
(16, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(17, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(18, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(19, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(20, 'Chow Mein', 'Large', 0, 6, 'Adult'),


	-- Children's Lunch: Chow Mein with Vegetables --
(21, 'Chow Mein', 'Small', 5, 1, 'Children'),
(22, 'Chow Mein', 'Small', 5, 1, 'Children'),
(23, 'Chow Mein', 'Small', 5, 1, 'Children'),
(24, 'Chow Mein', 'Small', 5, 1, 'Children'),
(25, 'Chow Mein', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chow Mein with Vegetables --
(21, 'Chow Mein', 'Small', 10, 2, 'Children'),
(22, 'Chow Mein', 'Small', 10, 2, 'Children'),
(23, 'Chow Mein', 'Small', 10, 2, 'Children'),
(24, 'Chow Mein', 'Small', 10, 2, 'Children'),
(25, 'Chow Mein', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chow Mein with Vegetables --
(21, 'Chow Mein', 'Small', 0, 3, 'Children'),
(22, 'Chow Mein', 'Small', 0, 3, 'Children'),
(23, 'Chow Mein', 'Small', 0, 3, 'Children'),
(24, 'Chow Mein', 'Small', 0, 3, 'Children'),
(25, 'Chow Mein', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chow Mein with Vegetables --
(21, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(22, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(23, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(24, 'Chow Mein', 'Large', 10, 4, 'Adult'),
(25, 'Chow Mein', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chow Mein with Vegetables --
(21, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(22, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(23, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(24, 'Chow Mein', 'Large', 15, 5, 'Adult'),
(25, 'Chow Mein', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chow Mein with Vegetables --
(21, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(22, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(23, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(24, 'Chow Mein', 'Large', 0, 6, 'Adult'),
(25, 'Chow Mein', 'Large', 0, 6, 'Adult'),

	-- Children's Lunch: Egg Foo Young with Chef's Special --
(26, 'Chow Mein', 'Small', 5, 1, 'Children'),
(27, 'Chow Mein', 'Small', 5, 1, 'Children'),
(28, 'Chow Mein', 'Small', 5, 1, 'Children'),
(29, 'Chow Mein', 'Small', 5, 1, 'Children'),
(30, 'Chow Mein', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Egg Foo Young with Chef's Special --
(26, 'Chow Mein', 'Small', 10, 2, 'Children'),
(27, 'Chow Mein', 'Small', 10, 2, 'Children'),
(28, 'Chow Mein', 'Small', 10, 2, 'Children'),
(29, 'Chow Mein', 'Small', 10, 2, 'Children'),
(30, 'Chow Mein', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Egg Foo Young with Chef's Special --
(26, 'Chow Mein', 'Small', 0, 3, 'Children'),
(27, 'Chow Mein', 'Small', 0, 3, 'Children'),
(28, 'Chow Mein', 'Small', 0, 3, 'Children'),
(29, 'Chow Mein', 'Small', 0, 3, 'Children'),
(30, 'Chow Mein', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Egg Foo Young with Chef's Special --
(26, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(27, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(28, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(29, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(30, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Egg Foo Young with Chef's Special --
(26, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(27, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(28, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(29, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(30, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Egg Foo Young with Chef's Special --
(26, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(27, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(28, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(29, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(30, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),


-- Children's Lunch: Egg Foo Young with Pork --
(31, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(32, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(33, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(34, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(35, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Egg Foo Young with Pork --
(31, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(32, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(33, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(34, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(35, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Egg Foo Young with Pork --
(31, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(32, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(33, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(34, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(35, 'Egg Foo Young', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Egg Foo Young with Pork --
(31, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(32, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(33, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(34, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(35, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Egg Foo Young with Pork --
(31, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(32, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(33, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(34, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(35, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Egg Foo Young with Pork --
(31, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(32, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(33, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(34, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(35, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Egg Foo Young with Beef--
(36, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(37, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(38, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(39, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(40, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Egg Foo Young with Beef--
(36, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(37, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(38, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(39, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(40, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Egg Foo Young with Beef--
(36, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(37, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(38, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(39, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(40, 'Egg Foo Young', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Egg Foo Young with Beef--
(36, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(37, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(38, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(39, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(40, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Egg Foo Young with Beef--
(36, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(37, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(38, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(39, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(40, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Egg Foo Young with Beef--
(36, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(37, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(38, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(39, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(40, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Egg Foo Young with Seafood--
(41, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(42, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(43, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(44, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(45, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Egg Foo Young with Seafood--
(41, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(42, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(43, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(44, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(45, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Egg Foo Young with Seafood--
(41, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(42, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(43, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(44, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(45, 'Egg Foo Young', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Egg Foo Young with Seafood--
(41, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(42, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(43, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(44, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(45, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Egg Foo Young with Seafood--
(41, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(42, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(43, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(44, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(45, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Egg Foo Young with Seafood--
(41, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(42, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(43, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(44, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(45, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Egg Foo Young with Vegetable --
(46, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(47, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(48, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(49, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
(50, 'Egg Foo Young', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Egg Foo Young with Vegetable --
(46, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(47, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(48, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(49, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
(50, 'Egg Foo Young', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Egg Foo Young with Vegetable --
(46, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(47, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(48, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(49, 'Egg Foo Young', 'Small', 0, 3, 'Children'),
(50, 'Egg Foo Young', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Egg Foo Young with Vegetable --
(46, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(47, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(48, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(49, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
(50, 'Egg Foo Young', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Egg Foo Young with Vegetable --
(46, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(47, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(48, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(49, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
(50, 'Egg Foo Young', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Egg Foo Young with Vegetable --
(46, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(47, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(48, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(49, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),
(50, 'Egg Foo Young', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Chop Suey with Chef Special --
(51, 'Chop Suey', 'Small', 5, 1, 'Children'),
(52, 'Chop Suey', 'Small', 5, 1, 'Children'),
(53, 'Chop Suey', 'Small', 5, 1, 'Children'),
(54, 'Chop Suey', 'Small', 5, 1, 'Children'),
(55, 'Chop Suey', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chop Suey with Chef Special --
(51, 'Chop Suey', 'Small', 10, 2, 'Children'),
(52, 'Chop Suey', 'Small', 10, 2, 'Children'),
(53, 'Chop Suey', 'Small', 10, 2, 'Children'),
(54, 'Chop Suey', 'Small', 10, 2, 'Children'),
(55, 'Chop Suey', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chop Suey with Chef Special --
(51, 'Chop Suey', 'Small', 0, 3, 'Children'),
(52, 'Chop Suey', 'Small', 0, 3, 'Children'),
(53, 'Chop Suey', 'Small', 0, 3, 'Children'),
(54, 'Chop Suey', 'Small', 0, 3, 'Children'),
(55, 'Chop Suey', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chop Suey with Chef Special --
(51, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(52, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(53, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(54, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(55, 'Chop Suey', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chop Suey with Chef Special --
(51, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(52, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(53, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(54, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(55, 'Chop Suey', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chop Suey with Chef Special --
(51, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(52, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(53, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(54, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(55, 'Chop Suey', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Chop Suey with Pork --
(56, 'Chop Suey', 'Small', 5, 1, 'Children'),
(57, 'Chop Suey', 'Small', 5, 1, 'Children'),
(58, 'Chop Suey', 'Small', 5, 1, 'Children'),
(59, 'Chop Suey', 'Small', 5, 1, 'Children'),
(60, 'Chop Suey', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chop Suey with Pork --
(56, 'Chop Suey', 'Small', 10, 2, 'Children'),
(57, 'Chop Suey', 'Small', 10, 2, 'Children'),
(58, 'Chop Suey', 'Small', 10, 2, 'Children'),
(59, 'Chop Suey', 'Small', 10, 2, 'Children'),
(60, 'Chop Suey', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chop Suey with Pork --
(56, 'Chop Suey', 'Small', 0, 3, 'Children'),
(57, 'Chop Suey', 'Small', 0, 3, 'Children'),
(58, 'Chop Suey', 'Small', 0, 3, 'Children'),
(59, 'Chop Suey', 'Small', 0, 3, 'Children'),
(60, 'Chop Suey', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chop Suey with Pork --
(56, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(57, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(58, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(59, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(60, 'Chop Suey', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chop Suey with Pork --
(56, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(57, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(58, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(59, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(60, 'Chop Suey', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chop Suey with Pork --
(56, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(57, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(58, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(59, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(60, 'Chop Suey', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Chop Suey with Beef --
(61, 'Chop Suey', 'Small', 5, 1, 'Children'),
(62, 'Chop Suey', 'Small', 5, 1, 'Children'),
(63, 'Chop Suey', 'Small', 5, 1, 'Children'),
(64, 'Chop Suey', 'Small', 5, 1, 'Children'),
(65, 'Chop Suey', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chop Suey with Beef --
(61, 'Chop Suey', 'Small', 10, 2, 'Children'),
(62, 'Chop Suey', 'Small', 10, 2, 'Children'),
(63, 'Chop Suey', 'Small', 10, 2, 'Children'),
(64, 'Chop Suey', 'Small', 10, 2, 'Children'),
(65, 'Chop Suey', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chop Suey with Beef --
(61, 'Chop Suey', 'Small', 0, 3, 'Children'),
(62, 'Chop Suey', 'Small', 0, 3, 'Children'),
(63, 'Chop Suey', 'Small', 0, 3, 'Children'),
(64, 'Chop Suey', 'Small', 0, 3, 'Children'),
(65, 'Chop Suey', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chop Suey with Beef --
(61, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(62, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(63, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(64, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(65, 'Chop Suey', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chop Suey with Beef --
(61, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(62, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(63, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(64, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(65, 'Chop Suey', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chop Suey with Beef --
(61, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(62, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(63, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(64, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(65, 'Chop Suey', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Chop Suey with Seafood --
(66, 'Chop Suey', 'Small', 5, 1, 'Children'),
(67, 'Chop Suey', 'Small', 5, 1, 'Children'),
(68, 'Chop Suey', 'Small', 5, 1, 'Children'),
(69, 'Chop Suey', 'Small', 5, 1, 'Children'),
(70, 'Chop Suey', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chop Suey with Seafood --
(66, 'Chop Suey', 'Small', 10, 2, 'Children'),
(67, 'Chop Suey', 'Small', 10, 2, 'Children'),
(68, 'Chop Suey', 'Small', 10, 2, 'Children'),
(69, 'Chop Suey', 'Small', 10, 2, 'Children'),
(70, 'Chop Suey', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chop Suey with Seafood --
(66, 'Chop Suey', 'Small', 0, 3, 'Children'),
(67, 'Chop Suey', 'Small', 0, 3, 'Children'),
(68, 'Chop Suey', 'Small', 0, 3, 'Children'),
(69, 'Chop Suey', 'Small', 0, 3, 'Children'),
(70, 'Chop Suey', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chop Suey with Seafood --
(66, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(67, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(68, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(69, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(70, 'Chop Suey', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chop Suey with Seafood --
(66, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(67, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(68, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(69, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(70, 'Chop Suey', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chop Suey with Seafood --
(66, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(67, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(68, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(69, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(70, 'Chop Suey', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Chop Suey with Vegetable --
(71, 'Chop Suey', 'Small', 5, 1, 'Children'),
(72, 'Chop Suey', 'Small', 5, 1, 'Children'),
(73, 'Chop Suey', 'Small', 5, 1, 'Children'),
(74, 'Chop Suey', 'Small', 5, 1, 'Children'),
(75, 'Chop Suey', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chop Suey with Vegetable --
(71, 'Chop Suey', 'Small', 10, 2, 'Children'),
(72, 'Chop Suey', 'Small', 10, 2, 'Children'),
(73, 'Chop Suey', 'Small', 10, 2, 'Children'),
(74, 'Chop Suey', 'Small', 10, 2, 'Children'),
(75, 'Chop Suey', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chop Suey with Vegetable --
(71, 'Chop Suey', 'Small', 0, 3, 'Children'),
(72, 'Chop Suey', 'Small', 0, 3, 'Children'),
(73, 'Chop Suey', 'Small', 0, 3, 'Children'),
(74, 'Chop Suey', 'Small', 0, 3, 'Children'),
(75, 'Chop Suey', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chop Suey with Vegetable --
(71, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(72, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(73, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(74, 'Chop Suey', 'Large', 10, 4, 'Adult'),
(75, 'Chop Suey', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chop Suey with Vegetable --
(71, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(72, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(73, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(74, 'Chop Suey', 'Large', 15, 5, 'Adult'),
(75, 'Chop Suey', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chop Suey with Vegetable --
(71, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(72, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(73, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(74, 'Chop Suey', 'Large', 0, 6, 'Adult'),
(75, 'Chop Suey', 'Large', 0, 6, 'Adult'),

-- -----------------------------------------------------------------

-- Children's Lunch: Chicken Noodle Soup --
(76, 'Chicken Noodle Soup', 'Small', 5, 1, 'Children'),
(77, 'Chicken Noodle Soup', 'Small', 5, 1, 'Children'),
(78, 'Chicken Noodle Soup', 'Small', 5, 1, 'Children'),
(79, 'Chicken Noodle Soup', 'Small', 5, 1, 'Children'),
(80, 'Chicken Noodle Soup', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Chicken Noodle Soup --
(76, 'Chicken Noodle Soup', 'Small', 10, 2, 'Children'),
(77, 'Chicken Noodle Soup', 'Small', 10, 2, 'Children'),
(78, 'Chicken Noodle Soup', 'Small', 10, 2, 'Children'),
(79, 'Chicken Noodle Soup', 'Small', 10, 2, 'Children'),
(80, 'Chicken Noodle Soup', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Chicken Noodle Soup --
(76, 'Chicken Noodle Soup', 'Small', 0, 3, 'Children'),
(77, 'Chicken Noodle Soup', 'Small', 0, 3, 'Children'),
(78, 'Chicken Noodle Soup', 'Small', 0, 3, 'Children'),
(79, 'Chicken Noodle Soup', 'Small', 0, 3, 'Children'),
(80, 'Chicken Noodle Soup', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Chicken Noodle Soup --
(76, 'Chicken Noodle Soup', 'Large', 10, 4, 'Adult'),
(77, 'Chicken Noodle Soup', 'Large', 10, 4, 'Adult'),
(78, 'Chicken Noodle Soup', 'Large', 10, 4, 'Adult'),
(79, 'Chicken Noodle Soup', 'Large', 10, 4, 'Adult'),
(80, 'Chicken Noodle Soup', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Chicken Noodle Soup --
(76, 'Chicken Noodle Soup', 'Large', 15, 5, 'Adult'),
(77, 'Chicken Noodle Soup', 'Large', 15, 5, 'Adult'),
(78, 'Chicken Noodle Soup', 'Large', 15, 5, 'Adult'),
(79, 'Chicken Noodle Soup', 'Large', 15, 5, 'Adult'),
(80, 'Chicken Noodle Soup', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Chicken Noodle Soup --
(76, 'Chicken Noodle Soup', 'Large', 0, 6, 'Adult'),
(77, 'Chicken Noodle Soup', 'Large', 0, 6, 'Adult'),
(78, 'Chicken Noodle Soup', 'Large', 0, 6, 'Adult'),
(79, 'Chicken Noodle Soup', 'Large', 0, 6, 'Adult'),
(80, 'Chicken Noodle Soup', 'Large', 0, 6, 'Adult'),

	-- Children's Lunch: Tofu Soup --
(81, 'Tofu Soup', 'Small', 5, 1, 'Children'),
(82, 'Tofu Soup', 'Small', 5, 1, 'Children'),
(83, 'Tofu Soup', 'Small', 5, 1, 'Children'),
(84, 'Tofu Soup', 'Small', 5, 1, 'Children'),
(85, 'Tofu Soup', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Tofu Soup --
(81, 'Tofu Soup', 'Small', 10, 2, 'Children'),
(82, 'Tofu Soup', 'Small', 10, 2, 'Children'),
(83, 'Tofu Soup', 'Small', 10, 2, 'Children'),
(84, 'Tofu Soup', 'Small', 10, 2, 'Children'),
(85, 'Tofu Soup', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Tofu Soup --
(81, 'Tofu Soup', 'Small', 0, 3, 'Children'),
(82, 'Tofu Soup', 'Small', 0, 3, 'Children'),
(83, 'Tofu Soup', 'Small', 0, 3, 'Children'),
(84, 'Tofu Soup', 'Small', 0, 3, 'Children'),
(85, 'Tofu Soup', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Tofu Soup --
(81, 'Tofu Soup', 'Large', 10, 4, 'Adult'),
(82, 'Tofu Soup', 'Large', 10, 4, 'Adult'),
(83, 'Tofu Soup', 'Large', 10, 4, 'Adult'),
(84, 'Tofu Soup', 'Large', 10, 4, 'Adult'),
(85, 'Tofu Soup', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Tofu Soup --
(81, 'Tofu Soup', 'Large', 15, 5, 'Adult'),
(82, 'Tofu Soup', 'Large', 15, 5, 'Adult'),
(83, 'Tofu Soup', 'Large', 15, 5, 'Adult'),
(84, 'Tofu Soup', 'Large', 15, 5, 'Adult'),
(85, 'Tofu Soup', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Tofu Soup --
(81, 'Tofu Soup', 'Large', 0, 6, 'Adult'),
(82, 'Tofu Soup', 'Large', 0, 6, 'Adult'),
(83, 'Tofu Soup', 'Large', 0, 6, 'Adult'),
(84, 'Tofu Soup', 'Large', 0, 6, 'Adult'),
(85, 'Tofu Soup', 'Large', 0, 6, 'Adult'),


-- Children's Lunch: Wonton Soup --
(86, 'Wonton Soup', 'Small', 5, 1, 'Children'),
(87, 'Wonton Soup', 'Small', 5, 1, 'Children'),
(88, 'Wonton Soup', 'Small', 5, 1, 'Children'),
(89, 'Wonton Soup', 'Small', 5, 1, 'Children'),
(90, 'Wonton Soup', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Wonton Soup --
(86, 'Wonton Soup', 'Small', 10, 2, 'Children'),
(87, 'Wonton Soup', 'Small', 10, 2, 'Children'),
(88, 'Wonton Soup', 'Small', 10, 2, 'Children'),
(89, 'Wonton Soup', 'Small', 10, 2, 'Children'),
(90, 'Wonton Soup', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Wonton Soup --
(86, 'Wonton Soup', 'Small', 0, 3, 'Children'),
(87, 'Wonton Soup', 'Small', 0, 3, 'Children'),
(88, 'Wonton Soup', 'Small', 0, 3, 'Children'),
(89, 'Wonton Soup', 'Small', 0, 3, 'Children'),
(90, 'Wonton Soup', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Wonton Soup --
(86, 'Wonton Soup', 'Large', 10, 4, 'Adult'),
(87, 'Wonton Soup', 'Large', 10, 4, 'Adult'),
(88, 'Wonton Soup', 'Large', 10, 4, 'Adult'),
(89, 'Wonton Soup', 'Large', 10, 4, 'Adult'),
(90, 'Wonton Soup', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Wonton Soup --
(86, 'Wonton Soup', 'Large', 15, 5, 'Adult'),
(87, 'Wonton Soup', 'Large', 15, 5, 'Adult'),
(88, 'Wonton Soup', 'Large', 15, 5, 'Adult'),
(89, 'Wonton Soup', 'Large', 15, 5, 'Adult'),
(90, 'Wonton Soup', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Wonton Soup --
(86, 'Wonton Soup', 'Large', 0, 6, 'Adult'),
(87, 'Wonton Soup', 'Large', 0, 6, 'Adult'),
(88, 'Wonton Soup', 'Large', 0, 6, 'Adult'),
(89, 'Wonton Soup', 'Large', 0, 6, 'Adult'),
(90, 'Wonton Soup', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Egg Drop Soup --
(91, 'Egg Drop Soup', 'Small', 5, 1, 'Children'),
(92, 'Egg Drop Soup', 'Small', 5, 1, 'Children'),
(93, 'Egg Drop Soup', 'Small', 5, 1, 'Children'),
(94, 'Egg Drop Soup', 'Small', 5, 1, 'Children'),
(95, 'Egg Drop Soup', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Egg Drop Soup --
(91, 'Egg Drop Soup', 'Small', 10, 2, 'Children'),
(92, 'Egg Drop Soup', 'Small', 10, 2, 'Children'),
(93, 'Egg Drop Soup', 'Small', 10, 2, 'Children'),
(94, 'Egg Drop Soup', 'Small', 10, 2, 'Children'),
(95, 'Egg Drop Soup', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Egg Drop Soup --
(91, 'Egg Drop Soup', 'Small', 0, 3, 'Children'),
(92, 'Egg Drop Soup', 'Small', 0, 3, 'Children'),
(93, 'Egg Drop Soup', 'Small', 0, 3, 'Children'),
(94, 'Egg Drop Soup', 'Small', 0, 3, 'Children'),
(95, 'Egg Drop Soup', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Egg Drop Soup --
(91, 'Egg Drop Soup', 'Large', 10, 4, 'Adult'),
(92, 'Egg Drop Soup', 'Large', 10, 4, 'Adult'),
(93, 'Egg Drop Soup', 'Large', 10, 4, 'Adult'),
(94, 'Egg Drop Soup', 'Large', 10, 4, 'Adult'),
(95, 'Egg Drop Soup', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Egg Drop Soup --
(91, 'Egg Drop Soup', 'Large', 15, 5, 'Adult'),
(92, 'Egg Drop Soup', 'Large', 15, 5, 'Adult'),
(93, 'Egg Drop Soup', 'Large', 15, 5, 'Adult'),
(94, 'Egg Drop Soup', 'Large', 15, 5, 'Adult'),
(95, 'Egg Drop Soup', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Egg Drop Soup --
(91, 'Egg Drop Soup', 'Large', 0, 6, 'Adult'),
(92, 'Egg Drop Soup', 'Large', 0, 6, 'Adult'),
(93, 'Egg Drop Soup', 'Large', 0, 6, 'Adult'),
(94, 'Egg Drop Soup', 'Large', 0, 6, 'Adult'),
(95, 'Egg Drop Soup', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Shrimp Balls --
(96, 'Shrimp Balls', 'Small', 5, 1, 'Children'),
(97, 'Shrimp Balls', 'Small', 5, 1, 'Children'),
(98, 'Shrimp Balls', 'Small', 5, 1, 'Children'),
(99, 'Shrimp Balls', 'Small', 5, 1, 'Children'),
(100, 'Shrimp Balls', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Shrimp Balls --
(96, 'Shrimp Balls', 'Small', 10, 2, 'Children'),
(97, 'Shrimp Balls', 'Small', 10, 2, 'Children'),
(98, 'Shrimp Balls', 'Small', 10, 2, 'Children'),
(99, 'Shrimp Balls', 'Small', 10, 2, 'Children'),
(100, 'Shrimp Balls', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Shrimp Balls --
(96, 'Shrimp Balls', 'Small', 0, 3, 'Children'),
(97, 'Shrimp Balls', 'Small', 0, 3, 'Children'),
(98, 'Shrimp Balls', 'Small', 0, 3, 'Children'),
(99, 'Shrimp Balls', 'Small', 0, 3, 'Children'),
(100, 'Shrimp Balls', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Shrimp Balls --
(96, 'Shrimp Balls', 'Large', 10, 4, 'Adult'),
(97, 'Shrimp Balls', 'Large', 10, 4, 'Adult'),
(98, 'Shrimp Balls', 'Large', 10, 4, 'Adult'),
(99, 'Shrimp Balls', 'Large', 10, 4, 'Adult'),
(100, 'Shrimp Balls', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Shrimp Balls --
(96, 'Shrimp Balls', 'Large', 15, 5, 'Adult'),
(97, 'Shrimp Balls', 'Large', 15, 5, 'Adult'),
(98, 'Shrimp Balls', 'Large', 15, 5, 'Adult'),
(99, 'Shrimp Balls', 'Large', 15, 5, 'Adult'),
(100, 'Shrimp Balls', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Shrimp Balls --
(96, 'Shrimp Balls', 'Large', 0, 6, 'Adult'),
(97, 'Shrimp Balls', 'Large', 0, 6, 'Adult'),
(98, 'Shrimp Balls', 'Large', 0, 6, 'Adult'),
(99, 'Shrimp Balls', 'Large', 0, 6, 'Adult'),
(100, 'Shrimp Balls', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Dumplings --
(101, 'Dumplings', 'Small', 5, 1, 'Children'),
(102, 'Dumplings', 'Small', 5, 1, 'Children'),
(103, 'Dumplings', 'Small', 5, 1, 'Children'),
(104, 'Dumplings', 'Small', 5, 1, 'Children'),
(105, 'Dumplings', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Dumplings --
(101, 'Dumplings', 'Small', 10, 2, 'Children'),
(102, 'Dumplings', 'Small', 10, 2, 'Children'),
(103, 'Dumplings', 'Small', 10, 2, 'Children'),
(104, 'Dumplings', 'Small', 10, 2, 'Children'),
(105, 'Dumplings', 'Small', 10, 2, 'Children'),

-- Children's Buffet: Dumplings --
(101, 'Dumplings', 'Small', 0, 3, 'Children'),
(102, 'Dumplings', 'Small', 0, 3, 'Children'),
(103, 'Dumplings', 'Small', 0, 3, 'Children'),
(104, 'Dumplings', 'Small', 0, 3, 'Children'),
(105, 'Dumplings', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Dumplings --
(101, 'Dumplings', 'Large', 10, 4, 'Adult'),
(102, 'Dumplings', 'Large', 10, 4, 'Adult'),
(103, 'Dumplings', 'Large', 10, 4, 'Adult'),
(104, 'Dumplings', 'Large', 10, 4, 'Adult'),
(105, 'Dumplings', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Dumplings --
(101, 'Dumplings', 'Large', 15, 5, 'Adult'),
(102, 'Dumplings', 'Large', 15, 5, 'Adult'),
(103, 'Dumplings', 'Large', 15, 5, 'Adult'),
(104, 'Dumplings', 'Large', 15, 5, 'Adult'),
(105, 'Dumplings', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Dumplings --
(101, 'Dumplings', 'Large', 0, 6, 'Adult'),
(102, 'Dumplings', 'Large', 0, 6, 'Adult'),
(103, 'Dumplings', 'Large', 0, 6, 'Adult'),
(104, 'Dumplings', 'Large', 0, 6, 'Adult'),
(105, 'Dumplings', 'Large', 0, 6, 'Adult'),

-- Children's Lunch: Egg Rolls --
(106, 'Egg Rolls', 'Small', 5, 1, 'Children'),
(107, 'Egg Rolls', 'Small', 5, 1, 'Children'),
(108, 'Egg Rolls', 'Small', 5, 1, 'Children'),
(109, 'Egg Rolls', 'Small', 5, 1, 'Children'),
(110, 'Egg Rolls', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Egg Rolls --
(106, 'Egg Rolls', 'Small', 10, 2, 'Children'),
(107, 'Egg Rolls', 'Small', 10, 2, 'Children'),
(108, 'Egg Rolls', 'Small', 10, 2, 'Children'),
(109, 'Egg Rolls', 'Small', 10, 2, 'Children'),
(110, 'Egg Rolls', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Egg Rolls --
(106, 'Egg Rolls', 'Small', 0, 3, 'Children'),
(107, 'Egg Rolls', 'Small', 0, 3, 'Children'),
(108, 'Egg Rolls', 'Small', 0, 3, 'Children'),
(109, 'Egg Rolls', 'Small', 0, 3, 'Children'),
(110, 'Egg Rolls', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Egg Rolls --
(106, 'Egg Rolls', 'Large', 10, 4, 'Adult'),
(107, 'Egg Rolls', 'Large', 10, 4, 'Adult'),
(108, 'Egg Rolls', 'Large', 10, 4, 'Adult'),
(109, 'Egg Rolls', 'Large', 10, 4, 'Adult'),
(110, 'Egg Rolls', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Egg Rolls --
(106, 'Egg Rolls', 'Large', 15, 5, 'Adult'),
(107, 'Egg Rolls', 'Large', 15, 5, 'Adult'),
(108, 'Egg Rolls', 'Large', 15, 5, 'Adult'),
(109, 'Egg Rolls', 'Large', 15, 5, 'Adult'),
(110, 'Egg Rolls', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Egg Rolls --
(106, 'Egg Rolls', 'Large', 0, 6, 'Adult'),
(107, 'Egg Rolls', 'Large', 0, 6, 'Adult'),
(108, 'Egg Rolls', 'Large', 0, 6, 'Adult'),
(109, 'Egg Rolls', 'Large', 0, 6, 'Adult'),
(110, 'Egg Rolls', 'Large', 0, 6, 'Adult'),


-- Children's Lunch: Lettuce Wraps --
(111, 'Lettuce Wraps', 'Small', 5, 1, 'Children'),
(112, 'Lettuce Wraps', 'Small', 5, 1, 'Children'),
(113, 'Lettuce Wraps', 'Small', 5, 1, 'Children'),
(114, 'Lettuce Wraps', 'Small', 5, 1, 'Children'),
(115, 'Lettuce Wraps', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Lettuce Wraps --
(111, 'Lettuce Wraps', 'Small', 10, 2, 'Children'),
(112, 'Lettuce Wraps', 'Small', 10, 2, 'Children'),
(113, 'Lettuce Wraps', 'Small', 10, 2, 'Children'),
(114, 'Lettuce Wraps', 'Small', 10, 2, 'Children'),
(115, 'Lettuce Wraps', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Lettuce Wraps --
(111, 'Lettuce Wraps', 'Small', 0, 3, 'Children'),
(112, 'Lettuce Wraps', 'Small', 0, 3, 'Children'),
(113, 'Lettuce Wraps', 'Small', 0, 3, 'Children'),
(114, 'Lettuce Wraps', 'Small', 0, 3, 'Children'),
(115, 'Lettuce Wraps', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Lettuce Wraps --
(111, 'Lettuce Wraps', 'Large', 10, 4, 'Adult'),
(112, 'Lettuce Wraps', 'Large', 10, 4, 'Adult'),
(113, 'Lettuce Wraps', 'Large', 10, 4, 'Adult'),
(114, 'Lettuce Wraps', 'Large', 10, 4, 'Adult'),
(115, 'Lettuce Wraps', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Lettuce Wraps --
(111, 'Lettuce Wraps', 'Large', 15, 5, 'Adult'),
(112, 'Lettuce Wraps', 'Large', 15, 5, 'Adult'),
(113, 'Lettuce Wraps', 'Large', 15, 5, 'Adult'),
(114, 'Lettuce Wraps', 'Large', 15, 5, 'Adult'),
(115, 'Lettuce Wraps', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Lettuce Wraps --
(111, 'Lettuce Wraps', 'Large', 0, 6, 'Adult'),
(112, 'Lettuce Wraps', 'Large', 0, 6, 'Adult'),
(113, 'Lettuce Wraps', 'Large', 0, 6, 'Adult'),
(114, 'Lettuce Wraps', 'Large', 0, 6, 'Adult'),
(115, 'Lettuce Wraps', 'Large', 0, 6, 'Adult'),


-- Children's Lunch: Pork Buns --
(116, 'Pork Buns', 'Small', 5, 1, 'Children'),
(117, 'Pork Buns', 'Small', 5, 1, 'Children'),
(118, 'Pork Buns', 'Small', 5, 1, 'Children'),
(119, 'Pork Buns', 'Small', 5, 1, 'Children'),
(120, 'Pork Buns', 'Small', 5, 1, 'Children'),
-- Children's Dinner: Pork Buns --
(116, 'Pork Buns', 'Small', 10, 2, 'Children'),
(117, 'Pork Buns', 'Small', 10, 2, 'Children'),
(118, 'Pork Buns', 'Small', 10, 2, 'Children'),
(119, 'Pork Buns', 'Small', 10, 2, 'Children'),
(120, 'Pork Buns', 'Small', 10, 2, 'Children'),
-- Children's Buffet: Pork Buns --
(116, 'Pork Buns', 'Small', 0, 3, 'Children'),
(117, 'Pork Buns', 'Small', 0, 3, 'Children'),
(118, 'Pork Buns', 'Small', 0, 3, 'Children'),
(119, 'Pork Buns', 'Small', 0, 3, 'Children'),
(120, 'Pork Buns', 'Small', 0, 3, 'Children'),

-- Adults's Lunch: Pork Buns --
(116, 'Pork Buns', 'Large', 10, 4, 'Adult'),
(117, 'Pork Buns', 'Large', 10, 4, 'Adult'),
(118, 'Pork Buns', 'Large', 10, 4, 'Adult'),
(119, 'Pork Buns', 'Large', 10, 4, 'Adult'),
(120, 'Pork Buns', 'Large', 10, 4, 'Adult'),
-- Adults's Dinner: Pork Buns --
(116, 'Pork Buns', 'Large', 15, 5, 'Adult'),
(117, 'Pork Buns', 'Large', 15, 5, 'Adult'),
(118, 'Pork Buns', 'Large', 15, 5, 'Adult'),
(119, 'Pork Buns', 'Large', 15, 5, 'Adult'),
(120, 'Pork Buns', 'Large', 15, 5, 'Adult'),
-- Adults's Buffet: Pork Buns --
(116, 'Pork Buns', 'Large', 0, 6, 'Adult'),
(117, 'Pork Buns', 'Large', 0, 6, 'Adult'),
(118, 'Pork Buns', 'Large', 0, 6, 'Adult'),
(119, 'Pork Buns', 'Large', 0, 6, 'Adult'),
(120, 'Pork Buns', 'Large', 0, 6, 'Adult');

-- Waiting staff: 23, 24, 25, 26, 27, 28 --
-- Table number: 1-17 --
INSERT INTO DININGTABLE (TABLENUMBER, TABLECAPACITY)
VALUES (1, 2),
(2, 4),
(3, 6),
(4, 4),
(5, 8),
(6, 2),
(7, 6),
(8, 1),
(9, 2),
(10, 4),
(11, 2),
(12, 4),
(13, 2),
(14, 2),
(15, 4),
(16, 1),
(17, 2);

-- Table number: 1-17
-- Table 1, 2 seats
-- Table 2, 4 seats
-- Table 3, 6 seats
-- Table 4, 4 seats
-- Table 5, 8 seats
-- Table 6, 2 seats
-- Table 7, 6 seats
-- Table 8, 1 seat
-- Table 9, 2 seat
-- Table 10, 4 seat
-- Table 11, 2 seat
-- Table 12, 4 seat
-- Table 13, 2 seat
-- Table 14, 2 seat
-- Table 15, 4 seat
-- Table 16, 1 seat
-- Table 17, 2 seat 

INSERT INTO SEAT(TABLENUMBER, SEATNUMBER, SEATID)
VALUES(1, 1, 1),
	(1, 2, 2),
	(2, 1, 3),
	(2, 2, 4),
	(2, 3, 5),
	(2, 4, 6),
	(3, 1, 7),
	(3, 2, 8), 
	(3, 3, 9),
	(3, 4, 10),
	(3, 5, 11),
	(3, 6, 12),
	(4, 1, 13),
(4, 2, 14),
(4, 3, 15),
(4, 4, 16),
(5, 1, 17),
(5, 2, 18),
(5, 3, 19),
(5, 4, 20),
(5, 5, 21),
(5, 6, 22),
(5, 7, 23),
(5, 8, 24),
(6, 1, 25),
(6, 2, 26),
(7, 1, 27),
(7, 2, 28),
(7, 3, 29),
(7, 4, 30),
(7, 5, 31),
(7, 6, 32),
(8, 1, 33),
(9, 1, 34),
(9, 2, 35),
(10, 1, 36),
(10, 2, 37),
(10, 3, 38),
(10, 4, 39),
(11, 1, 40),
(11, 2, 41),
(12, 1, 42),
(12, 2, 43),
(12, 3, 44),
(12, 4, 45),
(13, 1, 46),
(13, 2, 47),
(14, 1, 48),
(14, 2, 49),
(15, 1, 50),
(15, 2, 51),
(15, 3, 52),
(15, 4, 53),
(16, 1, 54),
(17, 1, 55),
(17, 2, 56);



-- CONSTRAINT PK_STAFFASSIGNMENT PRIMARY KEY (STAFFID,SHIFTID), --
-- CONSTRAINT FK1_STAFFASSIGNMENT FOREIGN KEY (STAFFID) REFERENCES STAFF(STAFFID), --
-- CONSTRAINT FK2_STAFFASSIGNMENT FOREIGN KEY (SHIFTID) REFERENCES GENERALSHIFT(SHIFTID) --
-- Staff IDs available: 1-28 
	-- 1-3, managers
	-- 4-16, chef
	-- 17-28, part time
-- Shift IDs available: 1-18

----------------------------------------------------------------------------------

INSERT INTO STAFFASSIGNMENT(STAFFID, SHIFTID)
-- # 1 - 6
-- shift managers first
VALUES(1, 1),
(2, 2),
(1, 3),
(3, 4),
(2, 5),
(1, 6),
(2, 7),
(3, 8),
(1, 9),
(2, 10),
(3, 11),
(2, 12),
(3, 13),
(1, 14),
(2, 15),
(3, 16),
(1, 17),
(2, 18),

-- head chefs 
(4, 1),
(4, 4),
(4, 7),
(4, 9),
(4, 12),
(4, 15),
(4, 17),
(5, 2),
(5, 5),
(5, 8),
(5, 10),
(5, 13),
(5, 16),
(5, 18),
(6, 3),
(6, 6),
(6, 11),
(6, 14);

INSERT INTO STAFFASSIGNMENT (STAFFID, SHIFTID)
-- souschef --
VALUES 
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 5),
(8, 6),
(8, 7),
(9, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(10, 13),
(10, 14),
(10, 15),
(10, 16),
(11, 17),
(11, 1), 

-- line chef
(12, 2),
(13, 3),
(14, 4),
(14, 5),
(15, 6),
(16, 7),
(12, 8),
(13, 9),
(14, 10),
(15, 11),
(16, 12),
(12, 13),
(13, 14),
(14, 15),
(15, 16),
(16, 17),
(12, 1),
(13, 2),
(14, 3),
(15, 4),
(16, 5),
(12, 6),
(13, 7),
(14, 8),
(15, 9),
(16, 10),
(12, 11),
(13, 12),
(14, 13),
(15, 14),
(16, 15), 
(12, 16),
(13, 17),
(14, 1),
(15, 2),
(15, 3),
(16, 4),
(12, 5),
(13, 6), 
(14, 7),
(15, 8), 
(16, 9),
(12, 10), 
(13, 11),
(14, 12),
(15, 13),
(16, 14),
(12, 15),
(13, 16),
(14, 17),
(15, 1),
(16, 2),
(12, 3),

-- maitre’d
(17, 5),
(17, 6),
(17, 7),
(17, 8),
(17, 9),
(17, 10),
(18, 11),
(18, 12),
(18, 13),
(18, 14),
(18, 15),
(18, 16),
(19, 17),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5), 

-- dishwasher 
(20, 6),
(21, 7),
(20, 9),
(21, 10), 
(22, 11),
(23, 12),
(20, 13),
(21, 14),
(22, 15),
(23, 16),
(20, 17),
(21, 1),
(22, 2),
(20, 4), 
(21, 5),
(22, 6),
(23, 7),
(20, 8),
(21, 9),
(22, 10),
(23, 11),
(20, 12),
(21, 13),
(22, 14),
(23, 15),
(20, 16),
(21, 17),
(22, 1),
(20, 3),
(21, 4),
(22, 5),
(23, 6),
(20, 7),

-- waiting staff
(23, 8),
(24, 9),
(25, 10),
(26, 11),
(28, 13),
(23, 14),
(24, 15),
(25, 16),
(26, 17),
(27, 1),
(28, 2),
(25, 5),
(26, 6),
(27, 7),
(28, 8),
(23, 9),
(24, 10),
(25, 11),
(26, 12),
(24, 16),
(25, 17),
(26, 1),
(27, 2),
(28, 3),
(23, 4),
(26, 7),
(27, 8),
(28, 9),
(23, 10),
(24, 11),
(25, 12),
(26, 13),
(27, 14),
(24, 17),
(25, 1),
(26, 2),
(27, 3),
(28, 4),
(23, 5),
(24, 6),
(26, 8),
(27, 9),
(28, 10);



INSERT INTO STAFFASSIGNMENT (STAFFID, SHIFTID)
VALUES (23, 1),
(23, 2),
(23, 3),
(24, 4),
(24, 5),
(25, 6),
(25, 7),
(25, 8),
(26, 9),
(26, 10),
(27, 11),
(27, 12),
(27, 13),
(28, 14),
(28, 15),
(28, 16),
(28, 17);

INSERT INTO TABLEASSIGNMENT (STAFFID, SHIFTID, TABLENUMBER)
VALUES
-- waiting staff
(23, 1, 1),
(23, 2, 2),
(23, 3, 3),
(24, 4, 4),
(24, 5, 5),
(25, 6, 6),
(25, 7, 7),
(25, 8, 8),
(26, 9, 9),
(26, 10, 10),
(27, 11, 11),
(27, 12, 12),
(27, 13, 13),
(28, 14, 14),
(28, 15, 15),
(28, 16, 16),
(28, 17, 17);



-- 22 Orders --
-- 56 SeatIds --
-- To Go Orders: 1, 4, 10, 13, 16, 20 All are paid with card--
-- Eat In Orders: 2, 3, 5, 6, 7, 8, 9*, 11, 12, 14, 15*, 17, 18*, 19, 21, 22 --
INSERT INTO ORDERDETAIL(ORDERID, SEATID, MENUITEMID, MENUITEMNAME, QUANTITY)
VALUE (1, 1, 36, 'Egg Foo Young', 1),
(2, 25, 41, 'Egg Foo Young', 1),
(2, 26, 76, 'Chicken Noodle Soup', 1),
(3, 3, $5, 1),
(3, 4, $5, 1),
(3, 5, $10, 1),
(3, 6, $10, 1),
(4, 1, $10, 10),
(5, 13, $10, 1),
(5, 14, $10, 1),
(6, 7, $10, 1),
(6, 8, $10, 1),
(6, 9, $10, 1),
(6, 10, $10, 1),
(6, 11, $10, 1),
(7, 33, $10, 1),
(8, 27, $10, 1),
(8, 28, $10, 1),
(9, 17, $5, 1),
(9, 18, $5, 1),
(9, 19, $5, 1),
(9, 20, $5, 1),
(9, 21, $5, 1),
(9, 22, $5, 1),
(10, 1, $10, 1),
(11, 36, $5, 1),
(11, 37, $5, 1),
(11, 38, $5, 1),
(11, 39, $5, 1),
(12, 54, $10, 2),
(13, 1, $10, 13),
(14, 50, $10, 2),
(14, 51, $10, 3),
(14, 52, $10, 2),
(14, 53, $10, 2),
(15, 17, $10, 1),
(15, 18, $10, 1),
(15, 19, $10, 1),
(15, 20, $10, 1),
(17, 1, $10, 2),
(18, 17, $10, 1),
(18, 18, $10, 1),
(19, 13, $5, 1),
(19, 14, $5, 1),
(19, 15, $5, 1),
(19, 16, $5, 1),
(20, 33, $10, 2),
(21, 50, $10, 1),
(21, 51, $5, 1),
(21, 52, $5, 1),
(22, 1, $10, 1);

-- 22 Orders --
-- 56 SeatIds --
-- To Go Orders: 1, 4, 10, 13, 16, 20 All are paid with card--
-- Eat In Orders: 2, 3, 5, 6, 7, 8, 9*, 11, 12, 14, 15*, 17, 18*, 19, 21, 22 --
INSERT INTO ORDERDETAIL(ORDERID, SEATID, MENUITEMID, MENUITEMNAME, QUANTITY)
VALUE (1, 1, 36, 'Egg Foo Young', 1),
(2, 25, 41, 'Egg Foo Young', 1),
(2, 26, 76, 'Chicken Noodle Soup', 1),
(3, 3, 6, 'Chow Mein', 1),
(3, 4, 7, 'Chow Mein', 1),
(3, 5, 56, 'Chop Suey', 1),
(3, 6, 40, 'Egg Foo Young', 1),
(4, 1, 21, 'Chow Mein', 10),
(5, 13, 51, 'Chop Suey', 1),
(5, 14, 24, 'Chow Mein', 1),
(6, 7, 30, 'Egg Foo Young', 1),
(6, 8, 17, 'Chow Mein', 1),
(6, 9, 36, 'Egg Foo Young', 1),
(6, 10, 60, 'Chop Suey', 1),
(6, 11, 40, 'Egg Foo Young', 1),
(7, 33, 24, 'Chow Mein', 1),
(8, 27, 25, 'Chow Mein', 1),
(8, 28, 54, 'Chop Suey', 1),
(9, 17, 81, 'Tofu Soup', 1),
(9, 18, 87, 'Wonton Soup', 1),
(9, 19, 77, 'Chicken Noodle Soup', 1),
(9, 20, 92, 'Egg Drop Soup', 1),
(9, 21, 99, 'Shrimp Balls', 1),
(9, 22, 104, 'Dumplings', 1),
(10, 1, 53, 'Chop Suey', 1),
(11, 36, 89, 'Wonton Soup', 1),
(11, 37, 53, 'Chop Suey', 1),
(11, 38, 109, 'Egg Rolls', 1),
(11, 39, 102, 'Dumplings', 1),
(12, 54, 22, 'Chow Mein', 2),
(13, 1, 16, 'Chow Mein', 13),
(14, 50, 31, 'Egg Foo Young', 2),
(14, 51, 16, 'Chow Mein', 3),
(14, 52, 105, 'Dumplings', 2),
(14, 53, 58, 'Chop Suey', 2),
(15, 17, 88, 'Wonton Soup', 1),
(15, 18, 92, 'Egg Drop Soup', 1),
(15, 19, 32, 'Egg Foo Young', 1),
(15, 20, 97, 'Shrimp Balls', 1),
(17, 1, 17, 'Chow Mein', 2),
(18, 17, 57, 'Chop Suey', 1),
(18, 18, 'Egg Foo Young', 1),
(19, 13, 'Dumplings', 1),
(19, 14, 87, 'Wonton Soup', 1),
(19, 15, 106, 'Egg Rolls', 1),
(19, 16, 7, 'Chow Mein', 1),
(20, 33, 41, 'Egg Foo Young', 2),
(21, 50, 66, 'Chop Suey', 1),
(21, 51, 88, 'Wonton Soup', 1),
(21, 52, 101, 'Dumplings', 1),
(22, 1, 10, 'Chow Mein', 1);