/*
*********************************************************************
Name: CECS 323 Term Project: Miming's Resturant
Authors: Autumn Nguyen, Bryan Vu, Rachel Pai, Saurav Chhapawala, Marjorie Balaoro
Group 4, Spring 2020
DDL Statements
*********************************************************************
*/


USE `cecs323sec07bg04`;
/*
*********************************************************************
NOTE: Tables, Enumerated Tables, Association Class / Look up Tables

Order of the DDL: 

Customers: 
Customers
CustomerAccounts
MimingsMoneyTransactionLogs
ContactInfoType <<enum>>
CorporationContactInfo

Staff: 
STAFF
SALARYSTAFF
CHEF
MANAGER
LINECHEF
HEADCHEF
SOUSCHEF
PARTTIMESTAFF
MAITRED
DISHWASHER
WAITINGSTAFF

Menu: 
MENUITEM
SPICELEVEL <<ENUM>>
CATEGORY <<ENUM>>
MEATENTREETYPE <<ENUM>>
MEATOPTION <<ENUM>>
MEATENTREE
MENU
MENUTYPE <<ENUM>>
ALACARTE
BUFFET

Expertise/Mentorships:
EXPERTISE
MENTORSHIP

Shift: 
GENERALSHIFT
ALTER
SHIFTTYPES <<ENUM>> 
STAFFASSIGNMENT
STATIONASSIGNMENT <<ENUM>>
STATION <<ENUM>>

Order: 
PARTY
CUSTOMERORDER
PAYMENT
MIMINGSMONEY
CARDTYPE <<ENUM>>
CARD
CASH
TOGOORDER
EATINORDER
ITEMSPECIFICATION
DININGTABLE
SEAT
TABLEASSIGNMENT
STAFFASSIGNMENT 
ORDERDETAIL
*********************************************************************
*/


/* CUSTOMERS DDL */

-- A Customer is a person or representative of an organization who has done business with and who may do business with us again in the future. --
CREATE TABLE Customers (
CustomerID int NOT NULL, -- This is a unique number representation of the customer. --
	CustomerName VARCHAR(30) NOT NULL, -- This is the name of the contact. --
CONSTRAINT PK_Customers PRIMARY KEY (CustomerID, CustomerName)
);

-- A CustomerAccount is the record of a Customer that has made an account with Miming’s. --
CREATE TABLE CustomerAccounts (
CustomerID int NOT NULL, -- This is a unique number representation of the customer. --
CustomerName VARCHAR(30) NOT NULL, -- This is the name of the contact. --
PhysicalAddress VARCHAR(60) NOT NULL, -- This is the location that the customer lives; this is in the case the bill will need to be billed to the customer’s home. --
CustomerType VARCHAR(30) NOT NULL, -- This is the type of customer account: either Private or Corporation. --
CorporationName VARCHAR(30), -- This is the name of the corporation that is ordering the food.--
DepartmentName VARCHAR(30), -- This is the name of the department that is ordering the food. --
Email VARCHAR(60), -- This is the mode of contact that the restaurant will have with the private customer. --
MimingsMoneyAmount INT NOT NULL, -- Mimings’s Money is a reward scheme implemented by the restaurant. --
CONSTRAINT PK_CustomerAccounts PRIMARY KEY (CustomerID),
CONSTRAINT FK_CustomerAccounts FOREIGN KEY (CustomerID, CustomerName) REFERENCES
Customers(CustomerID, CustomerName)
);



-- A record holder for which customers made which orders. This will act like a receipt and logging system --
CREATE TABLE MimingsMoneyTransactionLogs (
	CustomerID int NOT NULL, -- This is a unique number representation of the customer --
	TransactionDate DATE NOT NULL, -- This is the date that the Order was made--
	TransactionAmount int NOT NULL, -- This is the amount of money that the Order cost for the Customer --
CONSTRAINT PK_MMTL PRIMARY KEY (CustomerID, TransactionDate),
CONSTRAINT FK_CustomerAccountMMTL FOREIGN KEY (CustomerID) REFERENCES CustomerAccounts(CustomerID)
);

-- This is an enumerated table that lists the specific mode of contact that the corporation can be contacted by. (email, mobilePhoneNumber, workPhoneNumber) -- 
CREATE TABLE ContactInfoType (
	ContactInfoType VARCHAR(30) NOT NULL,
PRIMARY KEY (ContactInfoType)
);

INSERT INTO ContactInfoType (ContactInfoType)
VALUES ('Email'),
('MobilePhoneNumber'),
('WorkPhoneNumber');


-- This is a table that will further store the contact information of a corporation --
CREATE TABLE CorporationContactInfo (
CustomerID int NOT NULL,
DepartmentName VARCHAR(30) NOT NULL,
ContactInfoType VARCHAR(30) NOT NULL,
ContactInfo VARCHAR(60) NOT NULL, -- This section can be filled by either an email, work number, or cell phone number --
CONSTRAINT PK_CorporationContactInfo PRIMARY KEY (CustomerID, DepartmentName, ContactInfoType),
CONSTRAINT FK1_CorporationContactAccount FOREIGN KEY (CustomerID) REFERENCES CustomerAccounts(CustomerID),
CONSTRAINT FK2_CorporationContactInfoType FOREIGN KEY (ContactInfoType) REFERENCES ContactInfoType(ContactInfoType)
);

/* STAFF DDL */

/** an individual who will provide labor in exchange for compensation.
 A staff person will have a job title that will carry its own set of responsibilities. 
Staff will gain compensation either through hourly wages or salary based on their job title. 
Staff who are eligible for tips will also get tips. 
Some staff roles are essential, so there will always be one person assigned to those roles. **/
CREATE TABLE STAFF
(
STAFFID INT NOT NULL, -- This is a unique number representation of a staff member. --
FIRSTNAME VARCHAR(255) NOT NULL, --  This is the first name of the staff. --
LASTNAME VARCHAR(255) NOT NULL, -- This is the last name of the staff. -- 
PAYRATE VARCHAR(255) NOT NULL, --  If applicable, this will represent the hourly pay rate that a staff has. If the staff is full time, the rate will be divided from the salary. --
CONSTRAINT PK_STAFF PRIMARY KEY (STAFFID)
);

/** A staff who will receive a weekly rate compensation in exchange for their labor.
 They will also qualify for health benefits. **/
CREATE TABLE SALARYSTAFF
(
STAFFID INT NOT NULL,
HEALTHCAREBENEFITS VARCHAR(255) NOT NULL, -- This will represent the kind of health coverage they will receive in exchange for being someone who receives weekly rates of compensation --
CONSTRAINT PK_SALARYSTAFF PRIMARY KEY (STAFFID),
CONSTRAINT FK_SALARYSTAFF FOREIGN KEY (STAFFID) REFERENCES STAFF(STAFFID)
);


/** a staff who is responsible for making the food that is served to the customers.
 The chef roll has three sub roles including head chef, sous chef, and line chef.  **/
CREATE TABLE CHEF
(
STAFFID INT NOT NULL,
CONSTRAINT PK_CHEF PRIMARY KEY (STAFFID),
CONSTRAINT FK_CHEF FOREIGN KEY (STAFFID) REFERENCES SALARYSTAFF(STAFFID)
);


/**  A SalaryStaff that will supervise those who are working GeneralShifts. **/
CREATE TABLE MANAGER
(
STAFFID INT NOT NULL,
CONSTRAINT PK_MANAGER PRIMARY KEY (STAFFID),
CONSTRAINT FK_MANAGER FOREIGN KEY (STAFFID) REFERENCES SALARYSTAFF(STAFFID)
);


/**  a Chef who is responsible for preparing the kitchen so the other chefs can work.
 This can include dishwashing, butchering, soups, etc. They are the lowest in the chef hierarchy.  **/
CREATE TABLE LINECHEF
(
STAFFID INT NOT NULL,
CONSTRAINT PK_LINECHEF PRIMARY KEY (STAFFID),
CONSTRAINT FK_LINECHEF FOREIGN KEY (STAFFID) REFERENCES CHEF(STAFFID)
);


/**   the Chef who is in charge of the other chef roles.
 The head chef is responsible for creating the items on the menu and for creating new menu items.
 The head chef is also responsible for teaching new recipes to the sous chef.   **/
CREATE TABLE HEADCHEF
(
STAFFID INT NOT NULL,
CONSTRAINT PK_HEADCHEF PRIMARY KEY (STAFFID),
CONSTRAINT FK_HEADCHEF FOREIGN KEY (STAFFID) REFERENCES CHEF(STAFFID)
);


/** the Chef who is second in command in terms of chef roles. 
This person is responsible for helping the head chef and learning new recipes from a mentorship by the head chef.
**/
CREATE TABLE SOUSCHEF
(
STAFFID INT NOT NULL,
CONSTRAINT PK_SOUSCHEF PRIMARY KEY (STAFFID),
CONSTRAINT FK_SOUSCHEF FOREIGN KEY (STAFFID) REFERENCES CHEF(STAFFID)
);


/** A staff who will receive hourly compensation in exchange for their labor. **/
CREATE TABLE PARTTIMESTAFF
(
STAFFID INT NOT NULL,
HOURSWORKEDPERWEEK INT NOT NULL,-- This is the set number of hours a part time staff works at Miming’s restaurant.
CONSTRAINT PK_PARTTIMESTAFF PRIMARY KEY (STAFFID),
CONSTRAINT FK_PARTTIMESTAFF FOREIGN KEY (STAFFID) REFERENCES STAFF(STAFFID)
);


/** A PartTimeStaff who oversees the front house of a restaurant.
 They are responsible for making sure that the customers are comfortable and resolve disputes or grievances. **/
CREATE TABLE MAITRED
(
STAFFID INT NOT NULL,
CONSTRAINT PK_MAITRED PRIMARY KEY (STAFFID),
CONSTRAINT FK_MAITRED FOREIGN KEY (STAFFID) REFERENCES PARTTIMESTAFF(STAFFID)
);


/**  a PartTimeStaff who washes dishes. **/
CREATE TABLE DISHWASHER
(
STAFFID INT NOT NULL,
CONSTRAINT PK_DISHWASHER PRIMARY KEY (STAFFID),
CONSTRAINT FK_DISHWASHER FOREIGN KEY (STAFFID) REFERENCES PARTTIMESTAFF(STAFFID)
);


/**  A PartTimeStaff who provides services focused on the front house of the restaurant.
 This includes all of the duties that do not involve the kitchen.
 The waiting staff will be the majority of the employees who collect tips and have a table assignment. **/
CREATE TABLE WAITINGSTAFF
(
STAFFID INT NOT NULL,
CONSTRAINT PK_WAITINGSTAFF PRIMARY KEY (STAFFID),
CONSTRAINT FK_WAITINGSTAFF FOREIGN KEY (STAFFID) REFERENCES PARTTIMESTAFF(STAFFID)
);


/* MENU DDL */

/**  a line in the menu that represents a food item. 
It is something that a customer can order and we can provide it to them. 
A menu item has a spicy level, a category, and the ID of the chef who cooked it. 
Each menu item is on at least one menu, but does not need to be in all menus. **/
CREATE TABLE MENUITEM
(
MENUITEMID INT NOT NULL,
MENUITEMNAME VARCHAR(60) NOT NULL, -- This is the name of the dish on the menu.-- 
CATEGORY VARCHAR(30) NOT NULL, --  This is an enumerated table to indicate which type of food the dish is on the menu (appetizer, soup, meatEntree)-- 
SPICELEVEL VARCHAR(30) NOT NULL, -- The amount of spice that a certain dish can have. This will be an enumerated table that will contain all spiciness levels. (mild, tangy, piquant, hot, ohMyGod) -- 
CONSTRAINT PK_MENUITEM PRIMARY KEY (MENUITEMID,MENUITEMNAME),
CONSTRAINT FK1_MENUITEM FOREIGN KEY (CATEGORY) REFERENCES CATEGORY(CATEGORYOFFOOD),
CONSTRAINT FK2_MENUITEM FOREIGN KEY (SPICELEVEL) REFERENCES SPICELEVEL(LEVELOFSPICE)
);


/** The amount of spice that a certain dish can have.
 This will be an enumerated table that will contain all spiciness levels. (mild, tangy, piquant, hot, ohMyGod)**/
CREATE TABLE SPICELEVEL
(
LEVELOFSPICE VARCHAR(30) NOT NULL,
CONSTRAINT PK_SPICELEVEL PRIMARY KEY (LEVELOFSPICE)
);

INSERT INTO SPICELEVEL (LEVELOFSPICE)
VALUES ('Mild'),
('Tangy'),
('Piquant'),
('Hot'),
('OhMyGod');

/** This is an enumerated table to indicate which type of food the dish is on the menu (appetizer, soup, meatEntree) **/
CREATE TABLE CATEGORY
(
CATEGORYOFFOOD VARCHAR(30) NOT NULL,
CONSTRAINT PK_CATEGORY PRIMARY KEY (CATEGORYOFFOOD)
);

INSERT INTO CATEGORY (CATEGORYOFFOOD)
VALUES ('Appetizer'),
('Soup'),
('MeatEntree');

/** This is an enumerated table to indicate which type of meat dish is on the menu (Chow Mein, Egg Foo Young, and Chop Suey) **/
CREATE TABLE MEATENTREETYPE
(
TYPEOFENTREE VARCHAR(60) NOT NULL,
CONSTRAINT PK_MEATENTREETYPE PRIMARY KEY (TYPEOFENTREE)
);


INSERT INTO MEATENTREETYPE (TYPEOFENTREE)
VALUES ('Chow Mein'),
('Egg Foo Young'),
('Chop Suey');

/** This is an enumerated table to indicate which type of meat is in each dish (Pork, Beef, Seafood, Vegetable) **/
CREATE TABLE MEATOPTION
(
TYPEOFMEAT VARCHAR(60) NOT NULL,
CONSTRAINT PK_MENUOPTION PRIMARY KEY (TYPEOFMEAT)
);

INSERT INTO MEATOPTION (TYPEOFMEAT)
VALUES ('ChefSpecial'),
('Pork'),
('Beef'),
('Seafood'),
('Vegetable');

/**  Is a food item that contains meat.**/
CREATE TABLE MEATENTREE
(
MENUITEMID INT NOT NULL,
MENUITEMNAME VARCHAR(60) NOT NULL,
MEATOPTION VARCHAR(30) NOT NULL, --  This is an enumerated table that will contain the types of meat that a customer can choose from. One and only one meat choice can be made. (chefSpecial, pork, beef, seafood, vegetable) -- 
CONSTRAINT PK_MEATENTREE PRIMARY KEY (MENUITEMID, MENUITEMNAME),
CONSTRAINT FK1_MEATENTREE FOREIGN KEY (MENUITEMID,MENUITEMNAME) REFERENCES MENUITEM(MENUITEMID,MENUITEMNAME),
CONSTRAINT FK2_MEATENTREE FOREIGN KEY (MENUITEMNAME) REFERENCES MEATENTREETYPE(TYPEOFENTREE),
CONSTRAINT FK3_MEATENTREE FOREIGN KEY (MEATOPTION) REFERENCES MEATOPTION(TYPEOFMEAT)
);

 /** a collection of food items that are related to each other in some way. **/
CREATE TABLE MENU 
(
MENUID INT NOT NULL,
AGEGROUP VARCHAR(30) NOT NULL,
CONSTRAINT PK_MENU PRIMARY KEY (MENUID,AGEGROUP)
);

/** This is an enumerated table to indicate which type of menu the dish is in (Lunch, Dinner) **/
CREATE TABLE MENUTYPE
(
TYPEOFMENU VARCHAR(30) NOT NULL,
CONSTRAINT PK_MENUTYPE PRIMARY KEY (TYPEOFMENU)
);

INSERT INTO MENUTYPE (TYPEOFMENU)
VALUES ('Lunch'),
('Dinner');


/** A type of Menu that is not a Buffet 
and only consists of individual items that the customer picks to eat. **/
CREATE TABLE ALACARTE
(
MENUID INT NOT NULL,
AGEGROUP VARCHAR(30) NOT NULL,
MENUTYPE VARCHAR(30) NOT NULL, -- This will indicate whether the customer is dining for lunch or dinner-- 
CONSTRAINT PK_ALACARTE PRIMARY KEY (MENUID, AGEGROUP),
CONSTRAINT FK1_ALACARTE FOREIGN KEY (MENUID,AGEGROUP) REFERENCES MENU(MENUID,AGEGROUP),
CONSTRAINT FK2_ALACARTE FOREIGN KEY (MENUTYPE) REFERENCES MENUTYPE(TYPEOFMENU)
);

/** A type of Menu that has a fixed price for any amount of food 
that is considered Buffet and is between the times of. **/
CREATE TABLE BUFFET
(
MENUID INT NOT NULL,
AGEGROUP VARCHAR(30) NOT NULL,
BUFFETPRICE INT NOT NULL, -- This will indicate how much the buffet will cost depending on the customer’s age group.
CONSTRAINT PK_BUFFET PRIMARY KEY (MENUID,AGEGROUP),
CONSTRAINT FK_BUFFUET FOREIGN KEY (MENUID,AGEGROUP) REFERENCES MENU(MENUID,AGEGROUP)
);


/* EXPERTISE/MENTORSHIPS DDL */
/** This association class is in between SousChef and MenuItem as a SousChef 
can master many MenuItems and many MenuItems can have SousChefs that have mastered it. **/
CREATE TABLE EXPERTISE
(
SOUSCHEFMENTEEID INT NOT NULL,
MENUITEMID INT NOT NULL,
MENUITEMNAME VARCHAR(60) NOT NULL,
CONSTRAINT PK_EXPERTISE PRIMARY KEY (SOUSCHEFMENTEEID,MENUITEMID,MENUITEMNAME),
CONSTRAINT FK1_EXPERTISE FOREIGN KEY (SOUSCHEFMENTEEID) REFERENCES SOUSCHEF(STAFFID),
CONSTRAINT FK2_EXPERTISE FOREIGN KEY (MENUITEMID,MENUITEMNAME) REFERENCES MENUITEM(MENUITEMID,MENUITEMNAME)
);

/** a lookup table between SousChef and MenuItem that
 holds information about when the sous chef started learning a recipe and finished learning it. **/
CREATE TABLE MENTORSHIP
(
SOUSCHEFMENTORID INT NOT NULL,
SOUSCHEFMENTEEID INT NOT NULL,
MENUITEMID INT NOT NULL,
MENUITEMNAME VARCHAR(60) NOT NULL,
STARTDATE DATE NOT NULL, -- The date that the SousChef started the mentoring of a dish. -- 
ENDDATE DATE, -- The date that the SousChef mastered a dish.  -- 
CONSTRAINT PK_MENTORSHIP PRIMARY KEY (SOUSCHEFMENTORID,SOUSCHEFMENTEEID,MENUITEMID,MENUITEMNAME, STARTDATE),
CONSTRAINT FK1_MENTORSHIP FOREIGN KEY (SOUSCHEFMENTORID) REFERENCES SOUSCHEF(STAFFID),
CONSTRAINT FK2_MENTORSHIP FOREIGN KEY (SOUSCHEFMENTEEID,MENUITEMID,MENUITEMNAME) REFERENCES EXPERTISE(SOUSCHEFMENTEEID,MENUITEMID,MENUITEMNAME)
);


/* SHIFT DDL */
/** a period of time where an employee will provide labor in exchange for monetary compensation.
 There is a morning shift and an evening shift; each employee is required to work a full shift. 
The shifts will have each position that is available and the employee scheduled to work that station during that shift. **/
CREATE TABLE GENERALSHIFT
(
SHIFTDATE DATE NOT NULL, -- This will indicate which day of the week this shift is on. -- 
SHIFTMANAGERID INT NOT NULL, -- This enumerated table will contain 2 types of shifts (AM or PM) --
SHIFTID INT NOT NULL, 
SHIFTTYPE VARCHAR(2) NOT NULL,
HEADCHEFID INT NOT NULL,
CONSTRAINT PK_GENERALSHIFT PRIMARY KEY (SHIFTID),
CONSTRAINT FK1_GENERALSHIFT FOREIGN KEY (SHIFTMANAGERID) REFERENCES MANAGER(STAFFID),
CONSTRAINT FK3_GENERALSHIFT FOREIGN KEY (HEADCHEFID) REFERENCES HEADCHEF(STAFFID),
CONSTRAINT FK4_GENERALSHIFT FOREIGN KEY (SHIFTTYPE) REFERENCES SHIFTTYPES(SHIFTTYPE)
);

/** This is an enumerated table to indicate which type of shift the staff is working (AM, PM) **/
CREATE TABLE SHIFTTYPES
(
SHIFTTYPE VARCHAR(2) NOT NULL,
CONSTRAINT PK_SHIFTTYPES PRIMARY KEY (SHIFTTYPE)
);

INSERT INTO SHIFTTYPES (SHIFTTYPE)
VALUES ('AM'),
       ('PM');

/**An association class between GeneralShift and Staff. This will hold the specific assignments that Staff will have given a GeneralShift.**/
CREATE TABLE STAFFASSIGNMENT
(
STAFFID INT NOT NULL,
SHIFTID INT NOT NULL,
CONSTRAINT PK_STAFFASSIGNMENT PRIMARY KEY (STAFFID,SHIFTID),
CONSTRAINT FK1_STAFFASSIGNMENT FOREIGN KEY (STAFFID) REFERENCES STAFF(STAFFID),
CONSTRAINT FK2_STAFFASSIGNMENT FOREIGN KEY (SHIFTID) REFERENCES GENERALSHIFT(SHIFTID)
);

/** A line chef works on one of the 8 different stations.
 This is an enum class to hold the details of the different stations.  **/
CREATE TABLE STATIONASSIGNMENT
(
STAFFID INT NOT NULL,
SHIFTID INT NOT NULL,
STATIONROLE VARCHAR(30) NOT NULL,
CONSTRAINT PK_STATIONASSIGNMENT PRIMARY KEY (STAFFID,SHIFTID,STATIONROLE),
CONSTRAINT FK1_STATIONASSIGNMENT FOREIGN KEY (STAFFID,SHIFTID) REFERENCES STAFFASSIGNMENT (STAFFID,SHIFTID),
CONSTRAINT FK2_STATIONASSIGNMENT FOREIGN KEY (STATIONROLE) REFERENCES STATION(STATIONROLE)
);


/** This is an enumerated table to indicate which type of station the line staff will be working (Butcher, FryChef, GrillChef, PantryChef, PastryChef, RoastChef, SauteChef, VegetableChef) **/
CREATE TABLE STATION
(
STATIONROLE VARCHAR(30) NOT NULL,
CONSTRAINT PK_STATION PRIMARY KEY (STATIONROLE)
);

INSERT INTO STATION (STATIONROLE)
VALUES ('Butcher'),
('FryChef'),
('GrillChef'),
('PantryChef'),
('PastryChef'),
('RoastChef'),
('SauteChef'),
('VegetableChef');


/* ORDER DDL */

/** A party consists of a Customer that makes an Order. **/
CREATE TABLE PARTY
(
CUSTOMERID INT NOT NULL,
CUSTOMERNAME VARCHAR(60) NOT NULL,
PARTYSIZE INT NOT NULL, -- This is the amount of Customers within a given group dining in at the restaurant. 
CONSTRAINT PK_PARTY PRIMARY KEY (CUSTOMERID,CUSTOMERNAME,PARTYSIZE),
CONSTRAINT FK_PARTY FOREIGN KEY (CUSTOMERID,CUSTOMERNAME) REFERENCES Customers (CUSTOMERID,CUSTOMERNAME)
);

/** a request to the restaurant to make food and provide service. 
An order can be created by an individual or an organization.
We will collect some information about the order such as the seat(s) it 
applies to, the customer name, number of customers, and payment method. **/

CREATE TABLE CUSTOMERORDER 
(
CUSTOMERID INT NOT NULL,
CUSTOMERNAME VARCHAR(60) NOT NULL,
PARTYSIZE INT NOT NULL,
ORDERID INT NOT NULL,
ORDERDATE DATE NOT NULL, -- This is the date that the order was made. --
ORDERTIME TIME NOT NULL, -- This is the time that the order was made.--
AMOUNTTOTAL INT NOT NULL,
CONSTRAINT PK_CUSTOMERORDER PRIMARY KEY (ORDERID),
CONSTRAINT FK_CUSTOMERORDER FOREIGN KEY (CUSTOMERID,CUSTOMERNAME,PARTYSIZE) REFERENCES PARTY(CUSTOMERID,CUSTOMERNAME,PARTYSIZE)
);


/**This is the amount of money that would be given in exchange for food and services at the restaurant. **/
CREATE TABLE PAYMENT
(
ORDERID INT NOT NULL,
CONSTRAINT PK_PAYMENT PRIMARY KEY (ORDERID),
CONSTRAINT FK_PAYMENT FOREIGN KEY (ORDERID) REFERENCES CUSTOMERORDER(ORDERID)
);


/**A type of payment that is used by those who have eaten at Miming’s Restaurant before. This can also help indicate whether a customer is a frequent goer or not. **/
CREATE TABLE MIMINGSMONEY
(
ORDERID INT NOT NULL,
CONSTRAINT PK_MIMINGSMONEY PRIMARY KEY (ORDERID),
CONSTRAINT FK_MIMINGSMONEY FOREIGN KEY (ORDERID) REFERENCES PAYMENT(ORDERID)
);


/** This is an enumerated table to indicate which type of card the Customer will be paying with(CreditCard, DebitCard) **/
CREATE TABLE CARDTYPE
(
TYPEOFCARD VARCHAR(30) NOT NULL,
CONSTRAINT PK_CARDTYPE PRIMARY KEY (TYPEOFCARD)
);

INSERT INTO CARDTYPE (TYPEOFCARD)
VALUES ('CreditCard'),
('DebitCard');

/**This type of Payment is one that involves using a valid credit or debit card that is linked to a bank account with money in order to use to pay in exchange for food and services at the restaurant. **/
CREATE TABLE CARD
(
ORDERID INT NOT NULL,
CARDTYPE VARCHAR(30) NOT NULL,
CONSTRAINT PK_CARD PRIMARY KEY (ORDERID),
CONSTRAINT PK_CARD FOREIGN KEY (CARDTYPE) REFERENCES CARDTYPE(TYPEOFCARD)
);


/**This type of Payment is one that involves giving physical currency in exchange for food and services at the restaurant.**/
CREATE TABLE CASH
(
ORDERID INT NOT NULL,
CONSTRAINT PK_CASH PRIMARY KEY (ORDERID),
CONSTRAINT FK_CASH FOREIGN KEY (ORDERID) REFERENCES PAYMENT(ORDERID)
);

/**an Order that requests food which the customer will then take to eat elsewhere. We will collect the same information as a normal order, but the seats will not apply. A time ready will be indicated which will contain when the customer can come to claim the food.**/
CREATE TABLE TOGOORDER
(
ORDERID INT NOT NULL,
PICKUPTIME TIME NOT NULL, -- This is the time that the order is ready for pick up.
TIMECOOKED TIME NOT NULL, -- This is the time that the order started to be prepared.
CONSTRAINT PK_TOGOORDER PRIMARY KEY (ORDERID),
CONSTRAINT FK_TOGOORDER FOREIGN KEY (ORDERID) REFERENCES CUSTOMERORDER(ORDERID)
);

/**an Order eaten while still in the restaurant. **/
CREATE TABLE EATINORDER
(
ORDERID INT NOT NULL,
GRATUITYCHARGE INT NOT NULL, -- The amount of automatic tip that the party will need to pay at the end of their meal. 
CONSTRAINT PK_EATINORDER PRIMARY KEY (ORDERID),
CONSTRAINT FK1_EATINORDER FOREIGN KEY (ORDERID) REFERENCES CUSTOMERORDER(ORDERID)
);

/**An association class that contains information like the pricing and portion size of that specific item on the menu.**/
CREATE TABLE ITEMSPECIFICATION 
(
MENUITEMID INT NOT NULL,
MENUITEMNAME VARCHAR(60) NOT NULL,
PORTIONSIZE VARCHAR(30) NOT NULL, -- This is the size of the given dish. 
ITEMPRICE FLOAT(2) NOT NULL, -- a numerical number that represents the amount of US Dollars that the restaurant will take in exchange for providing service to the customer. Each menu has a different price per item associated with it.
MENUID INT NOT NULL,
AGEGROUP VARCHAR(30) NOT NULL,
CONSTRAINT PK_ITEMSPECIFICATION PRIMARY KEY (MENUITEMID,MENUITEMNAME,MENUID,AGEGROUP),
CONSTRAINT FK1_ITEMSPECIFICATION FOREIGN KEY (MENUITEMID, MENUITEMNAME) REFERENCES MENUITEM(MENUITEMID, MENUITEMNAME),
CONSTRAINT FK2_ITEMSPECIFCATION FOREIGN KEY (MENUID,AGEGROUP) REFERENCES ALACARTE(MENUID,AGEGROUP)
);

/**A dining table is a table on which meals are served to customers in the dining room of Miming’s restaurant.**/
CREATE TABLE DININGTABLE
(
TABLENUMBER INT NOT NULL, -- This indicates which table number that the customers will be seated at. 
TABLECAPACITY INT NOT NULL,-- This indicates how many seats the table can accommodate. 
CONSTRAINT PK_DININGTABLE PRIMARY KEY (TABLENUMBER)
);


/**A seat is an individual chair that is placed at a dining table at the restaurant.**/
CREATE TABLE SEAT
(
TABLENUMBER INT NOT NULL,
SEATNUMBER INT NOT NULL, -- This number representation of a single seat in a table.
SEATID INT NOT NULL,
CONSTRAINT PK_SEAT PRIMARY KEY (SEATID),
CONSTRAINT FK_SEAT FOREIGN KEY (TABLENUMBER) REFERENCES DININGTABLE(TABLENUMBER)
);

/**an enum association class which holds all of the detailed information about which tables are the responsibility of which employee. They will also hold the given tableCapacity and the amount of gratuityGiven.**/
CREATE TABLE TABLEASSIGNMENT
(
STAFFID INT NOT NULL,
SHIFTID INT NOT NULL,
TABLENUMBER INT NOT NULL,
CONSTRAINT PK_TABLEASSIGNMENT PRIMARY KEY (STAFFID,SHIFTID,TABLENUMBER),
CONSTRAINT FK1_TABLEASSIGNMENT FOREIGN KEY (STAFFID,SHIFTID) REFERENCES STAFFASSIGNMENT(STAFFID,SHIFTID),
CONSTRAINT FK2_TABLEASSIGNMENT FOREIGN KEY (TABLENUMBER) REFERENCES DININGTABLE(TABLENUMBER)
);

/**An association class between GeneralShift and Staff. This will hold the specific assignments that Staff will have given a GeneralShift.**/
CREATE TABLE STAFFASSIGNMENT
(
STAFFID INT NOT NULL,
SHIFTID INT NOT NULL,
CONSTRAINT PK_STAFFASSIGNMENT PRIMARY KEY (STAFFID,SHIFTID),
CONSTRAINT FK1_STAFFASSIGNMENT FOREIGN KEY (STAFFID) REFERENCES STAFF(STAFFID),
CONSTRAINT FK2_STAFFASSIGNMENT FOREIGN KEY (SHIFTID) REFERENCES GENERALSHIFT(SHIFTID)
);

/**This will indicate how many of each item is ordered.**/
CREATE TABLE ORDERDETAIL
(
ORDERID INT NOT NULL,
SEATID INT NOT NULL,
MENUITEMID INT NOT NULL,
MENUITEMNAME VARCHAR(60) NOT NULL,
QUANTITY INT NOT NULL, -- This is the number of items that a customer ordered
CONSTRAINT PK_ORDERDETAIL PRIMARY KEY (ORDERID, SEATID, MENUITEMID, MENUITEMNAME),
CONSTRAINT FK_ORDERDETAIL FOREIGN KEY (ORDERID) REFERENCES CUSTOMERORDER(ORDERID),
CONSTRAINT FK3_ORDERDETAIL FOREIGN KEY (SEATID) REFERENCES SEAT(SEATID),
CONSTRAINT FK2_ORDERDETAIL FOREIGN KEY (MENUITEMID, MENUITEMNAME) REFERENCES ITEMSPECIFICATION(MENUITEMID, MENUITEMNAME)
);

