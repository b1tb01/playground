use PizzaProjectDB_3sh2;

CREATE TABLE TOPPING 
    (Name         VARCHAR(20)     NOT NULL,
    Price         DECIMAL(8,2)    NOT NULL,
    CostPerUnit   DECIMAL(8,2)    NOT NULL,
    Inventory     INT             NOT NULL,
    Small         DECIMAL(8,2)    NOT NULL,
    Medium        DECIMAL(8,2)    NOT NULL,
    Large         DECIMAL(8,2)    NOT NULL,
    x_Large       DECIMAL(8,2)    NOT NULL,
    T_ID          INT             NOT NULL,
    PRIMARY KEY(T_ID)
    );

CREATE TABLE DISCOUNT
    (Name           VARCHAR(20)         NOT NULL,
    PercentOff      DECIMAL(8,2)        NOT NULL,
    DollarsOff      DECIMAL(8,2)        NOT NULL,
    D_ID            INT                 NOT NULL,
    PRIMARY KEY(D_ID)
    );

CREATE TABLE BASE_PRICE
    (SIZE           VARCHAR(20)     NOT NULL,
    Crust_Type      VARCHAR(20)     NOT NULL,
    Price           DECIMAL(8,2)    NOT NULL,
    Cost            DECIMAL(8,2)    NOT NULL,
    B_ID            INT             NOT NULL,
    PRIMARY KEY(B_ID)
    );


CREATE TABLE CUSTOMER
    (Fname      VARCHAR(20)     NOT NULL,
    LName       VARCHAR(20)     NOT NULL,
    C_ID        INT             NOT NULL,
    PRIMARY KEY(C_ID)
    );


CREATE TABLE ORDERS
    (Type       VARCHAR(20)     NOT NULL,
    Cost_Comp   DECIMAL(8,2)    NOT NULL,
    Cost_Cust   DECIMAL(8,2)    NOT NULL,
    C_ID        INT,
    O_ID        INT             NOT NULL,
    FOREIGN KEY(C_ID) REFERENCES CUSTOMER(C_ID),
    PRIMARY KEY(O_ID)
    );


CREATE TABLE PIZZA
    (Size           VARCHAR(20)         NOT NULL,
    Crust_Type      VARCHAR(20)         NOT NULL,
    Cooking_State   VARCHAR(20)         NOT NULL,
    Timestamps      VARCHAR(20)         NOT NULL,
    Num_of_Pizza    INT                 NOT NULL,
    BP_ID           INT                 NOT NULL,
    O_ID            INT                 NOT NULL,
    P_ID            INT                 NOT NULL,
    FOREIGN KEY(BP_ID) REFERENCES BASE_PRICE(B_ID),
    FOREIGN KEY(O_ID) REFERENCES ORDERS(O_ID),
    PRIMARY KEY(P_ID)
    );



CREATE TABLE PICKUP
    (ID         INT             NOT NULL,
    FName       VARCHAR(20)     NOT NULL,
    LName       VARCHAR(20)     NOT NULL,
    Phone_Num   VARCHAR(20)     NOT NULL,
    O_ID        INT             NOT NULL,
    FOREIGN KEY(O_ID) REFERENCES ORDERS(O_ID),
    PRIMARY KEY(ID)
    );

CREATE TABLE DELIVERY
    (ID         INT             NOT NULL,
    Street_Num  VARCHAR(20)     NOT NULL,
    Street      VARCHAR(20)     NOT NULL,
    City        VARCHAR(20)     NOT NULL,
    Phone_Num   VARCHAR(20)     NOT NULL,
    O_ID        INT             NOT NULl,
    FOREIGN KEY(O_ID) REFERENCES ORDERS(O_ID),
    PRIMARY KEY(ID)
    );

CREATE TABLE DINE_IN
    (ID         INT                 NOT NULL,
    Table_Num   VARCHAR(20)         NOT NULL,
    O_ID        INT                 NOT NULL,
    FOREIGN KEY(O_ID) REFERENCES ORDERS(O_ID),
    PRIMARY KEY(ID)
    );

CREATE TABLE DINE_INSEAT
    (O_ID       INT         NOT NULL,
    Seat_Num    INT         NOT NUll,
    FOREIGN KEY(O_ID) REFERENCES ORDERS(O_ID), 
    PRIMARY KEY(O_ID, Seat_Num)
    );

CREATE TABLE DISCOUNT_ORDERS
    (O_ID       INT         NOT NULL,
    D_ID        INT         NOT NULL,
    FOREIGN KEY(O_ID) REFERENCES ORDERS(O_ID),
    FOREIGN KEY(D_ID) REFERENCES DISCOUNT(D_ID),
    PRIMARY KEY(O_ID, D_ID)
    );

CREATE TABLE DISCOUNT_PIZZA
    (P_ID        INT         NOT NULL,
    D_ID       INT         NOT NULL,
    FOREIGN KEY(P_ID) REFERENCES PIZZA(P_ID),
    FOREIGN KEY(D_ID) REFERENCES DISCOUNT(D_ID),
    PRIMARY KEY(P_ID, D_ID)
    );

CREATE TABLE TOPPING_PIZZA
    (Extra     BOOLEAN     NOT NULL,
    T_ID        INT         NOT NULL,
    P_ID        INT         NOT NULL,
    FOREIGN KEY(P_ID) REFERENCES PIZZA(P_ID),
    FOREIGN KEY(T_ID) REFERENCES TOPPING(T_ID),
    PRIMARY KEY(P_ID, T_ID)
    );