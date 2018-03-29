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
   ('Bacon', 1.5, 0.25, 89, 1, 1.5, 2, 3,                17)
   ;

INSERT INTO DISCOUNT
VALUES
   ('employee', .15, 0,             1),
   ('Lunch Special Medium', 0, 1,   2),
   ('Lunch Special Large', 0, 2,    3),
   ('Specialty Pizza', 0, 1.5,      4),
   ('Gameday special', .20, 0,      5)
   ;
   
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
   ('X-Large', 'Gluten-Free', 12.5, 6, 16)
   ;

INSERT INTO CUSTOMER
VALUES
   ('Andrew', 'Wilkes-Krier', 1),
   ('Matt', 'Engers',         2),
   ('Frank', 'Turner',        3),
   ('Milo', 'Auckerman',      4)
   ;

INSERT INTO ORDERS
VALUES
   ('Dine-in', 0, 0, NULL,   1),
   ('Dine-in', 0, 0, NULL,   2),
   ('Dine-in', 0, 0, NULL,   3),
   ('Pickup',  0, 0, 1,      4),
   ('Delivery', 0, 0, 1,     5),
   ('Pickup', 0, 0, 2,       6),
   ('Delivery', 0, 0, 3,     7),
   ('Delivery', 0, 0, 4,     8)
   ;

INSERT INTO PIZZA
VALUES
   ('Large', 'Thin', 'Completed', 'March 5th, 12:03pm', 1, 9,           1,  1),
   ('Medium', 'Pan', 'Completed', 'March 3rd, 12:05pm', 1, 7,           2,  2),
   ('Small', 'Original', 'Completed', 'March 3rd, 12:05pm', 1, 2,       3,  3),
   ('Large', 'Original', 'Completed', 'March 3rd, 9:30pm', 6, 10,       4,  4),
   ('X-Large', 'Original', 'Completed', 'March 5th, 7:11pm', 1, 14,     5,  5),
   ('X-Large', 'Original', 'Completed', 'March 5th, 7:11pm', 1, 14,     5,  6),
   ('X-Large', 'Original', 'Completed', 'March 5th, 7:11pm', 1, 14,     5,  7),
   ('X-Large', 'Gluten-Free', 'Completed', 'March 2nd, 5:30pm', 1, 16,  6,  8),
   ('Large', 'Thin', 'Completed', 'March 2nd, 6:17pm', 1, 9,            7,  9),
   ('Large', 'Thin', 'Completed', 'March 6th', 1, 9,                    8, 10),
   ('Large', 'Thin', 'Completed', 'March 6th', 1, 9,                    8, 11)
   ;

INSERT INTO DINE_IN
VALUES
   (1, 'Table 14',  1),
   (2, 'Table 4',   2),
   (3, 'Table 4',   3)
   ;

INSERT INTO DINE_INSEAT
VALUES
   (1, 1),
   (1, 2),
   (1, 3),
   (2, 1),
   (3, 4)
   ;

INSERT INTO DELIVERY
VALUES
   (1, '115', 'Party Blvd', 'Anderson, SC 29621', '864-254-5861',       5),
   (2, '6754', 'Wessex St', 'Anderson, SC 29621', '864-232-8944',       7),
   (3, '8879', 'Suburban Home', 'Anderson, SC 29621', '864-878-5679',   8)
   ;

INSERT INTO PICKUP
VALUES
   (1, 'Andrew', 'Wilkes-Krier', '864-254-5861',   4),
   (2, 'Matt', 'Engers', '864-474-9953',           6)
   ;



INSERT INTO DISCOUNT_ORDERS
VALUES
   (1, 3),
   (2, 2),
   (2, 4),
   (5, 5),
   (5, 4),
   (6, 4),
   (8, 1)
   ;

INSERT INTO DISCOUNT_PIZZA
VALUES
   (2, 4),
   (6, 4),
   (8, 4)
   ;

INSERT INTO TOPPING_PIZZA
VALUES
   (1, 13,  1),
   (0, 1,   1),
   (0, 2,   1),
   (0, 15,  2),
   (0, 9,   2),
   (0, 7,   2),
   (0, 8,   2),
   (0, 12,  2),
   (0, 4,   3),
   (0, 12,  3),
   (0, 13,  4),
   (0, 1,   4),
   (0, 14,  5),
   (0, 1,   5),
   (0, 2,   5),
   (0, 14,  6),
   (1, 3,   6),
   (1, 10,  6),
   (0, 14,  7),
   (0, 11,  7),
   (0, 17,  7),
   (0, 5,   8),
   (0, 6,   8),
   (0, 7,   8),
   (0, 8,   8),
   (0, 9,   8),
   (0, 16,  8),
   (0, 4,   9),
   (0, 5,   9),
   (0, 6,   9),
   (0, 8,   9),
   (0, 14,  9),
   (1, 14,  10),
   (1, 1,   11)
   ;
