/**MenuItem_v – For each menu item, give it’s spiciness, and all of the different costs for
that item. If a given item is not on a particular menu, then report “N/A” for that particular
item for that particular menu. Also, if an item only appears as a single serving portion,
put in “N/A” into the report for the gallon, … prices.
**/
CREATE VIEW MENUITEM_V AS 
SELECT ITS.MENUITEMNAME, ITS.MENUID, ITEMPRICE, SPICELEVEL, PORTIONSIZE, ITS.AGEGROUP
FROM ITEMSPECIFICATION ITS
INNER JOIN MENU
INNER JOIN MENUITEM
WHERE ITS.MENUID = '1'
UNION
SELECT ITS.MENUITEMNAME, ITS.MENUID, ITEMPRICE, SPICELEVEL, PORTIONSIZE, ITS.AGEGROUP
FROM ITEMSPECIFICATION ITS
INNER JOIN MENU
INNER JOIN MENUITEM
WHERE ITS.MENUID = '2'
UNION
SELECT ITS.MENUITEMNAME, ITS.MENUID, ITEMPRICE, SPICELEVEL, PORTIONSIZE, ITS.AGEGROUP
FROM ITEMSPECIFICATION ITS
INNER JOIN MENU
INNER JOIN MENUITEM
WHERE ITS.MENUID = '3'
UNION
SELECT ITS.MENUITEMNAME, ITS.MENUID, ITEMPRICE, SPICELEVEL, PORTIONSIZE, ITS.AGEGROUP
FROM ITEMSPECIFICATION ITS
INNER JOIN MENU
INNER JOIN MENUITEM
WHERE ITS.MENUID = '4'
UNION
SELECT ITS.MENUITEMNAME, ITS.MENUID, ITEMPRICE, SPICELEVEL, PORTIONSIZE, ITS.AGEGROUP
FROM ITEMSPECIFICATION ITS
INNER JOIN MENU
INNER JOIN MENUITEM
WHERE ITS.MENUID = '5'
UNION
SELECT ITS.MENUITEMNAME, ITS.MENUID, ITEMPRICE, SPICELEVEL, PORTIONSIZE, ITS.AGEGROUP
FROM ITEMSPECIFICATION ITS
INNER JOIN MENU
INNER JOIN MENUITEM
WHERE ITS.MENUID = '6';

SELECT * FROM MENUITEM_V;

/** Customer_addresses_v – for each customer, indicate whether they are an individual or a
corporate account, and display all of the information that we are managing for that
customer. **/ 
CREATE VIEW CUSTOMER_ADDRESSES_V AS
SELECT P.CustomerID, P. CustomerType, P.CustomerName, IF(P.CustomerType = 'Private','Email','N/A')  AS 'ContactInfoType',P.Email AS 'Contact Info', P.PhysicalAddress,IF(P.CustomerType = 'Private','N/A','N/A') AS 'Corportation Name', IF(P.CustomerType = 'Private','N/A','N/A') AS 'DepartmentName',P.MimingsMoneyAmount
FROM CustomerAccounts AS P
WHERE P.CustomerType = 'Private'
UNION 
SELECT C.CustomerID, C. CustomerType, C.CustomerName,C.ContactInfoType, C.ContactInfo, C.PhysicalAddress,C.CorporationName,C.DepartmentName,C.MimingsMoneyAmount
FROM (SELECT * FROM CustomerAccounts NATURAL JOIN  CorporationContactInfo
		WHERE CustomerAccounts.CustomerID = CorporationContactInfo.CustomerID) AS C
WHERE C.CustomerType = 'Corporation';

SELECT * FROM CUSTOMER_ADDRESSES_V;

/** Sous_mentor_v – reports all the mentor/mentee relationships at Miming’s, sorted by the
name of the mentor, then the name of the mentee. Show the skill that the mentorship
passes, as well as the start date.**/
CREATE VIEW SOUS_MENTOR_V AS 
SELECT P1.LASTNAME AS 'MENTOR LAST NAME', P1.FIRSTNAME AS 'MENTOR FIRST NAME', P2.LASTNAME AS 'MENTEE LAST NAMNE', P2.FIRSTNAME AS 'MENTEE LAST NAME', MENUITEMNAME, STARTDATE
FROM MENTORSHIP
INNER JOIN STAFF P1
ON P1.STAFFID = MENTORSHIP.SOUSCHEFMENTORID
INNER JOIN STAFF P2
ON MENTORSHIP.SOUSCHEFMENTEEID = P2.STAFFID
ORDER BY P1.LASTNAME, P1.FIRSTNAME, P2.LASTNAME, P2.FIRSTNAME;

SELECT * FROM SOUS_MENTOR_V;

/**Customer_Sales_v – On a year by year basis, show how much each customer has spent at
Miming’s. **/
CREATE VIEW CUSTOMER_SALES_V AS
SELECT CustomerID, CustomerName, YEAR(ORDERDATE) AS 'YEAR', SUM(AMOUNTTOTAL) AS 'TOTAL'
FROM CUSTOMERORDER NATURAL JOIN Customers
GROUP BY CustomerID,YEAR(ORDERDATE)
ORDER BY CustomerName, YEAR(ORDERDATE);

SELECT * FROM CUSTOMER_SALES_V;

/** Customer_Value_v – List each customer and the total $ amount of their orders for the
past year (365 days), in order of the value of customer orders, from highest to the lowest. **/
CREATE VIEW CUSTOMER_VALUE_V AS 
SELECT A.OrderDate as 'Date', A.CustomerName, SUM(A.AmountTotal) AS 'Total Spent In The Year'
FROM (SELECT *
	FROM Customers NATURAL JOIN CUSTOMERORDER
	WHERE ORDERDATE >= DATE_SUB(NOW(), INTERVAL 1 YEAR)
) AS A
GROUP BY CUSTOMERID
ORDER BY SUM(AmountTotal) DESC;


SELECT * FROM CUSTOMER_VALUE_V;

