INSERT INTO TOPPING
VALUES
   ('Pepperoni', 1.25, 0.2, 100, 2, 2.75, 3.5, 4.5,      1),
   ('Sausage', 1.25, 0.15, 100, 2.5, 3, 3.5, 4.25,       2),
   ('Ham', 1.5, 0.15, 78, 2, 2.5, 3.25, 4,               3),
   ('Chicken', 1.75, 0.25, 56, 1.5, 2, 2.25, 3,          4),
   ('Green Pepper', 0.5, 0.02, 79, 1, 1.5, 2, 2.5,       5),
   ('Onion', 0.5, 0.02, 85, 1, 1.5, 2, 2.75,             6),
   ('Roma tomato', 0.75, 0.03, 86, 2, 3, 3.5, 4.5,       7),
   ('Mushrooms', 0.75, 0.1, 52, 1.5, 2, 2.5, 3,          8),
   ('Black Olives', 0.6, 0.1, 39, 0.75, 1, 1.5, 2,       9),
   ('Pineapple', 1, 0.25, 15, 1, 1.25, 1.75, 2,          10),
   ('Jalapenos', 0.5, 0.05, 64, 0.5, 0.75, 1.25, 1.75,   11),
   ('Banana Peppers', 0.5, 0.05, 36, 0.6, 1, 1.3, 1.75,  12),
   ('Regular Cheese', 1.5, 0.12, 250, 2, 3.5, 5, 7,      13),
   ('Four Cheese Blend', 2, 0.15, 150, 2, 3.5, 5, 7,     14),
   ('Feta Cheese', 2, 0.18, 75, 1.75, 3, 4, 5.5,         15),
   ('Goat Cheese', 2, 0.2, 54, 1.6, 2.75, 4, 5.5,        16),
   ('Bacon', 1.5, 0.25, 89, 1, 1.5, 2, 3,                17);

INSERT INTO DISCOUNT
VALUES
   ('employee', .15, 0,             1),
   ('Lunch Special Medium', 0, 1,   2),
   ('Lunch Special Large', 0, 2,    3),
   ('Specialty Pizza', 0, 1.5,      4),
   ('Gameday special', .20, 0,      5);
   
INSERT INTO BASE_PRICE
VALUES
   ('small', 'Thin', 3, 0.5,           1),
   ('small', 'Original', 3, 0.75,      2),
   ('small', 'Pan', 3.5, 1,            3),
   ('small', 'Gluten-Free', 4, 2,      4),
   ('medium', 'Thin', 5, 1,            5),
   ('medium', 'Original', 5, 1.5,      6),
   ('medium', 'Pan', 6, 2.25,          7),
   ('medium', 'Gluten-Free', 6.25, 3,  8),
   ('Large', 'Thin', 8, 1.25,          9),
   ('Large', 'Original', 8, 2,         10),
   ('Large', 'Pan', 9, 3,              11),
   ('Large', 'Gluten-Free', 9.5, 4,    12),
   ('X-Large', 'Thin', 10, 2,          13),
   ('X-Large', 'Original', 10, 3,      14),
   ('X-Large', 'Pan', 11.5, 4.5,       15),
   ('X-Large', 'Gluten-Free', 12.5, 6, 16);


INSERT INTO ORDERS
VALUES
   ('Dine-in', company, customer, NULL,   1),
   ('Dine-in', company, customer, NULL,   2),
   ('Dine-in', company, customer, NULL,   3),
   ('Pickup',  company, customer, NULL,   4),
   ('Delivery', company, customer, NULL,  5),
   ('Pickup', company, customer, NULL,    6),
   ('Delivery', company, customer, NULL,  7),
   ('Delivery', company, customer, NULL,  8);

INSERT INTO PIZZA
VALUES
   ('Large', 'Thin', 'Completed', 'March 5th, 12:03pm', 1, 8, 1, 1);