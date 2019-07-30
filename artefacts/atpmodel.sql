DROP TABLE employees;
DROP TABLE products;
DROP TABLE stores;
DROP TABLE orders;
DROP TABLE budget;
DROP TABLE leave;


CREATE TABLE employees
( "ID"            NUMBER NOT NULL ENABLE
    , "NAME"          VARCHAR2(255 BYTE)
    , "PHONE"         VARCHAR2(255 BYTE)
    , "EMAIL"         VARCHAR2(255 BYTE)
    , "LEAVEBALANCE"  NUMBER
    ,                 PRIMARY KEY ("ID")
);


CREATE TABLE products
(	"ID"            NUMBER NOT NULL ENABLE
   ,  "PRODUCTNAME"   VARCHAR2(255 BYTE)
   ,  "CATEGORY"      VARCHAR2(255 BYTE)
   ,  "LISTPRICE"     NUMBER
   ,  "UNITCOST"      FLOAT(6)
   ,                  PRIMARY KEY ("ID")
 );


 CREATE TABLE stores
 ( "ID"            NUMBER NOT NULL ENABLE
    , "STORENAME"      VARCHAR2(511)
    , "EMPLOYEEID"     NUMBER
    ,                  PRIMARY KEY ("ID")
 );


 CREATE TABLE orders
 ( "ID"            NUMBER NOT NULL ENABLE
    , "STOREID"        NUMBER
    , "PRODUCTID"      NUMBER
    , "QUANTITY"       NUMBER
    , "UNITPRICE"      NUMBER
    , "SUBTOTAL"       NUMBER
 );


 CREATE TABLE budget
 ( "ID"            NUMBER NOT NULL ENABLE
    , "MONTH"          VARCHAR2(511)
    , "BUDGET"         NUMBER
    ,                  PRIMARY KEY ("ID")
 );


CREATE TABLE leave
( "ID"            NUMBER NOT NULL ENABLE
   , "LEAVETYPE"      VARCHAR2(511)
   , "STARTDATE"      VARCHAR2(511)
   , "ENDDATE"        VARCHAR2(255)
   , "STATUS"         VARCHAR2(255)
   ,                  PRIMARY KEY ("ID")
);



INSERT into EMPLOYEES values (1,'Peter Parker', 6617074, 'peter.parker@supremo.com', 20);
INSERT into EMPLOYEES values (2,'Harry Osborn', 6617074, 'harry.osborn@supremo.com', 18);
INSERT into EMPLOYEES values (3,'Mary Jane', 6617074, 'mary.jane@supremo.com', 10);
INSERT into EMPLOYEES values (4,'Ben Reilly', 6617074, 'ben.reilly@supremo.com', 13);
INSERT into EMPLOYEES values (5,'Mac Gargan', 6617074, 'mac.gargan@supremo.com', 19);
INSERT into EMPLOYEES values (6,'Mattie Franklin', 6617074, 'mattie.franklin@supremo.com', 9);
INSERT into EMPLOYEES values (7,'Miles Morales', 6617074, 'miles.morales@supremo.com', 20);
INSERT into EMPLOYEES values (8,'Jamie McKelvie', 6617074, 'jamie.mckelvie@supremo.com', 22);
INSERT into EMPLOYEES values (9,'Kelly Sue', 6617074, 'kelly.sue@supremo.com', 5);
INSERT into EMPLOYEES values (10,'John Doe', 6617074, 'john.doe@supremo.com', 20);

INSERT into PRODUCTS values (1, 'Caffè Americano', 'Beverage', 4, 1.00);
INSERT into PRODUCTS values (2, 'Caffè Mocha', 'Beverage', 6, 1.50);
INSERT into PRODUCTS values (3, 'Caffè Latte', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (4, 'Cappuccino', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (5, 'Caramel Macchiato', 'Beverage', 6, 1.50);
INSERT into PRODUCTS values (6, 'Espresso', 'Beverage', 3, 0.75);
INSERT into PRODUCTS values (7, 'Freshly Brewed Coffee', 'Beverage', 3, 0.75);
INSERT into PRODUCTS values (8, 'Signature Chocolate', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (9, 'Earl Grey', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (10, 'English Breakfast', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (11, 'Hibiscus', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (12, 'Mint Blend', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (13, 'Mint Citrus', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (14, 'Chamomile', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (15, 'Chai Tea Latte', 'Beverage', 6, 1.50);
INSERT into PRODUCTS values (16, 'English Breakfast Tea Latte', 'Beverage', 6, 1.50);
INSERT into PRODUCTS values (17, 'Matcha Latte', 'Beverage', 7, 1.75);
INSERT into PRODUCTS values (18, 'Hojicha Tea Latte', 'Beverage', 8, 2.00);
INSERT into PRODUCTS values (19, 'Iced Caramel', 'Beverage', 6, 1.50);
INSERT into PRODUCTS values (20, 'Iced Coffee', 'Beverage', 5, 1.25);
INSERT into PRODUCTS values (21, 'Iced Espresso', 'Beverage', 6, 1.50);
INSERT into PRODUCTS values (22, 'Iced Java Chip', 'Beverage', 8, 2.00);
INSERT into PRODUCTS values (23, 'Iced Mocha', 'Beverage', 6, 1.50);
INSERT into PRODUCTS values (24, 'Iced Mango and Passion Fruit', 'Beverage', 8, 2.00);
INSERT into PRODUCTS values (25, 'Iced Raspberry', 'Beverage', 6, 1.50);
INSERT into PRODUCTS values (26, 'Blueberry Scone', 'Bakery', 4, 1.00);
INSERT into PRODUCTS values (27, 'Butter Croissant', 'Bakery', 4, 1.00);
INSERT into PRODUCTS values (28, 'Cinnamon Danish', 'Bakery', 5, 1.25);
INSERT into PRODUCTS values (29, 'Sausage Roll', 'Bakery', 6, 1.50);
INSERT into PRODUCTS values (30, 'Cheese Pocket', 'Bakery', 6, 1.50);
INSERT into PRODUCTS values (31, 'Chicken Pie', 'Bakery', 6, 1.50);
INSERT into PRODUCTS values (32, 'Chocolate Cookie', 'Bakery', 3, 0.75);
INSERT into PRODUCTS values (33, 'Cinnamon Raisin Bagel', 'Bakery', 4, 1.00);
INSERT into PRODUCTS values (34, 'Blueberry Cheesecake', 'Cakes', 5, 1.25);
INSERT into PRODUCTS values (35, 'Chocolate Marquise', 'Cakes', 5, 1.25);
INSERT into PRODUCTS values (36, 'Lemon Tart', 'Cakes', 4, 1.00);
INSERT into PRODUCTS values (37, 'Blueberry Muffin', 'Muffin', 4, 1.00);
INSERT into PRODUCTS values (38, 'BLT Sandwich', 'Sandwich', 6, 1.50);

INSERT into STORES values (1, 'Central', 1);
INSERT into STORES values (2, 'Admiralty', 2);
INSERT into STORES values (3, 'Jordan', 3);
INSERT into STORES values (4, 'Raffles', 4);
INSERT into STORES values (5, 'Mid Valley', 5);
INSERT into STORES values (6, 'City Hall', 6);
INSERT into STORES values (7, 'Hyde Park', 7);
INSERT into STORES values (8, 'Liverpool', 8);
INSERT into STORES values (9, 'Waterloo', 9);
INSERT into STORES values (10, 'Marina Bay', 10);

INSERT into BUDGET values (1, 'Jan-2017', 19837500);
INSERT into BUDGET values (2, 'Feb-2017', 18150000);
INSERT into BUDGET values (3, 'Mar-2017', 15000000);
INSERT into BUDGET values (4, 'Apr-2017', 13537500);
INSERT into BUDGET values (5, 'May-2017', 15000000);
INSERT into BUDGET values (6, 'Jun-2017', 16537500);
INSERT into BUDGET values (7, 'Jul-2017', 18150000);
INSERT into BUDGET values (8, 'Aug-2017', 19837500);
INSERT into BUDGET values (9, 'Sep-2017', 16537500);
INSERT into BUDGET values (10, 'Oct-2017', 15000000);
INSERT into BUDGET values (11, 'Nov-2017', 18150000);
INSERT into BUDGET values (12, 'Dec-2017', 21600000);
INSERT into BUDGET values (13, 'Jan-2018', 21821250);
INSERT into BUDGET values (14, 'Feb-2018', 19965000);
INSERT into BUDGET values (15, 'Mar-2018', 16500000);
INSERT into BUDGET values (16, 'Apr-2018', 14891250);
INSERT into BUDGET values (17, 'May-2018', 16500000);
INSERT into BUDGET values (18, 'Jun-2018', 18191250);
INSERT into BUDGET values (19, 'Jul-2018', 19965000);
INSERT into BUDGET values (20, 'Aug-2018', 21821250);
INSERT into BUDGET values (21, 'Sep-2018', 18191250);
INSERT into BUDGET values (22, 'Oct-2018', 16500000);
INSERT into BUDGET values (23, 'Nov-2018', 19965000);
INSERT into BUDGET values (24, 'Dec-2018', 23760000);
INSERT into BUDGET values (25, 'Jan-2019', 24003375);
INSERT into BUDGET values (26, 'Feb-2019', 21961500);
INSERT into BUDGET values (27, 'Mar-2019', 18150000);
INSERT into BUDGET values (28, 'Apr-2019', 16380375);
INSERT into BUDGET values (29, 'May-2019', 18150000);
INSERT into BUDGET values (30, 'Jun-2019', 20010375);
INSERT into BUDGET values (31, 'Jul-2019', 21961500);
INSERT into BUDGET values (32, 'Aug-2019', 24003375);
INSERT into BUDGET values (33, 'Sep-2019', 20010375);
INSERT into BUDGET values (34, 'Oct-2019', 18150000);
INSERT into BUDGET values (35, 'Nov-2019', 21961500);
INSERT into BUDGET values (36, 'Dec-2019', 26136000);


INSERT into LEAVE values (3, 'Annual Leave', '01-Jun-19', '05-Jun-19', 'Pending Approval');


COMMIT;
