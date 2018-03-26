use PizzaProjectDB_3sh2;

CREATE TABLE TOPPING 
    (Name         VARCHAR(20)     NOT NULL,
    Price         DECIMAL(5,2)    NOT NULL,
    CostPerUnit   DECIMAL(5,2)    NOT NULL,
    Inventory     INT             NOT NULL,
    Small         DECIMAL(5,2)    NOT NULL,
    Medium        DECIMAL(5,2)    NOT NULL,
    Large         DECIMAL(5,2)    NOT NULL,
    x_Large       DECIMAL(5,2)    NOT NULL,
    T_ID          INT             NOT NULL,
    PRIMARY KEY(T_ID)
    );

CREATE TABLE DISCOUNT
(


);

CREATE TABLE BASE_PRICE
(


);

CREATE TABLE PIZZA
(


);

CREATE TABLE CUSTOMER
(


);

CREATE TABLE ORDER
(


);

CREATE TABLE PICKUP
(


);

CREATE TABLE DELIVERY
(


);

CREATE TABLE DINE_IN
(


);

CREATE TABLE DINE_INSEAT
(


);

CREATE TABLE DISCOUNT_ORDER
(


);

CREATE TABLE DISCOUNT_PIZZA
(


);

CREATE TABLE TOPPING_PIZZA
(


);