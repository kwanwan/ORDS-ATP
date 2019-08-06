DROP TABLE employees;
DROP TABLE products;
DROP TABLE stores;
DROP TABLE orders;
DROP TABLE orderid;
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

 CREATE TABLE orderid
 ( "ID"            NUMBER NOT NULL ENABLE
    , "DATE"          DATE
    , "MEMBERID"      NUMBER
    ,                 PRIMARY KEY ("ID")
 );


 CREATE TABLE budget
 ( "ID"            NUMBER NOT NULL ENABLE
    , "MONTH"          DATE
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


CREATE TABLE inventory
( "ID"            NUMBER NOT NULL ENABLE
   , "INVENTORY"      NUMBER
   ,                  PRIMARY KEY ("ID")
);


CREATE TABLE writeoff
( "ID"            NUMBER NOT NULL ENABLE
   , "WRITEOFF"       NUMBER
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

INSERT into BUDGET values (1, '01-Jan-2017', 198375);
INSERT into BUDGET values (2, '01-Feb-2017', 181500);
INSERT into BUDGET values (3, '01-Mar-2017', 150000);
INSERT into BUDGET values (4, '01-Apr-2017', 135375);
INSERT into BUDGET values (5, '01-May-2017', 150000);
INSERT into BUDGET values (6, '01-Jun-2017', 165375);
INSERT into BUDGET values (7, '01-Jul-2017', 181500);
INSERT into BUDGET values (8, '01-Aug-2017', 198375);
INSERT into BUDGET values (9, '01-Sep-2017', 165375);
INSERT into BUDGET values (10, '01-Oct-2017', 150000);
INSERT into BUDGET values (11, '01-Nov-2017', 181500);
INSERT into BUDGET values (12, '01-Dec-2017', 216000);
INSERT into BUDGET values (13, '01-Jan-2018', 218212);
INSERT into BUDGET values (14, '01-Feb-2018', 199650);
INSERT into BUDGET values (15, '01-Mar-2018', 165000);
INSERT into BUDGET values (16, '01-Apr-2018', 148912);
INSERT into BUDGET values (17, '01-May-2018', 165000);
INSERT into BUDGET values (18, '01-Jun-2018', 181912);
INSERT into BUDGET values (19, '01-Jul-2018', 199650);
INSERT into BUDGET values (20, '01-Aug-2018', 218212);
INSERT into BUDGET values (21, '01-Sep-2018', 181912);
INSERT into BUDGET values (22, '01-Oct-2018', 165000);
INSERT into BUDGET values (23, '01-Nov-2018', 199650);
INSERT into BUDGET values (24, '01-Dec-2018', 237600);
INSERT into BUDGET values (25, '01-Jan-2019', 240033);
INSERT into BUDGET values (26, '01-Feb-2019', 219615);
INSERT into BUDGET values (27, '01-Mar-2019', 181500);
INSERT into BUDGET values (28, '01-Apr-2019', 163803);
INSERT into BUDGET values (29, '01-May-2019', 181500);
INSERT into BUDGET values (30, '01-Jun-2019', 200103);
INSERT into BUDGET values (31, '01-Jul-2019', 219615);
INSERT into BUDGET values (32, '01-Aug-2019', 240033);
INSERT into BUDGET values (33, '01-Sep-2019', 200103);
INSERT into BUDGET values (34, '01-Oct-2019', 181500);
INSERT into BUDGET values (35, '01-Nov-2019', 219615);
INSERT into BUDGET values (36, '01-Dec-2019', 261360);


INSERT into INVENTORY values (1, 155000);
INSERT into INVENTORY values (2, 123000);
INSERT into INVENTORY values (3, 9800);
INSERT into INVENTORY values (4, 7600);
INSERT into INVENTORY values (5, 8300);
INSERT into INVENTORY values (6, 7100);
INSERT into INVENTORY values (7, 10400);
INSERT into INVENTORY values (8, 8000);
INSERT into INVENTORY values (9, 18100);
INSERT into INVENTORY values (10, 16300);


INSERT into WRITEOFF values (1, 10);
INSERT into WRITEOFF values (2, 24);
INSERT into WRITEOFF values (3, 8);
INSERT into WRITEOFF values (4, 5);
INSERT into WRITEOFF values (5, 10);
INSERT into WRITEOFF values (6, 20);
INSERT into WRITEOFF values (7, 31);
INSERT into WRITEOFF values (8, 3);
INSERT into WRITEOFF values (9, 40);
INSERT into WRITEOFF values (10, 80);


INSERT into LEAVE values (3, 'Annual Leave', '01-Jun-19', '05-Jun-19', 'Pending Approval');


COMMIT;
