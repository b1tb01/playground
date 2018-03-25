use PizzaProjectDB_3sh2;

CREATE TABLE TOPPING 
    (Name         VARCHAR(15)     NOT NULL,
    Price         CHAR,
    CostPerUnit   VARCHAR(15)     NOT NULL,
    Inventory     DECIMAL(5,2)         NOT NULL,
    PRIMARY KEY()
    );