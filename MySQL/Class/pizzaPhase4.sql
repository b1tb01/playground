--1.)What are the current inventory levels for each topping?
SELECT Name, Inventory 
FROM TOPPING
;
--2.)What is the name of each delivery customer,how many orders have they placed, 
--and how many pizzas have they ordered?
SELECT DISTINCT Fname AS First_Name, Lname AS Last_Name, 
COUNT(DISTINCT ORDERS.O_ID) AS Num_of_Orders, SUM(Num_of_Pizza) AS Num_of_Pizzas_Ordered
FROM ((CUSTOMER JOIN ORDERS ON CUSTOMER.C_ID = ORDERS.C_ID) 
JOIN PIZZA ON ORDERS.O_ID=PIZZA.O_ID)
WHERE Type="Delivery"
GROUP BY CUSTOMER.C_ID
;
--3.)What discounts provide a percentage off, and what is that percentage?
SELECT DISTINCT Name AS Discount_Name, PercentOff*100 AS Percentage_Off
FROM DISCOUNT
WHERE PercentOff > 0
;
--4.)What toppings cost the customer less than a dollar to add to their pizza?
SELECT Name As Topping_Name, Price
FROM TOPPING
WHERE Price < 1.00
;
--5.)For each topping, how much does it cost the business to add that topping to each size of pizza. 
--Note that the cost is per unit, and there are different amounts of the topping that go on each size.
SELECT Name AS Topping_Name, CostPerUnit*Small AS Small_Cost, CostPerUnit*Medium AS Medium_Cost,
CostPerUnit*Large AS Large_Cost, CostPerUnit*x_Large AS X_Large_Cost
FROM TOPPING
;
--6.)What pizzas are on the order placed by Andrew Wilkes-Krier on March 5th? What are the sizes, 
--crust type, and toppings on those pizzas. Your results should have multiple rows for each pizza 
--(to account for multiple toppings on a pizza), but you should make sure that all of the information 
--for a pizza is on consecutive rows in your result. Include the Pizza ID to make sure that the 
--employee prepping the pizza can tell which topping goes on which pizza.
SELECT PIZZA.P_ID, Size, Crust_Type, TOPPING.Name AS Topping_Name
FROM ((((PIZZA JOIN TOPPING_PIZZA ON PIZZA.P_ID=TOPPING_PIZZA.P_ID)
JOIN ORDERS ON PIZZA.O_ID=ORDERS.O_ID) JOIN CUSTOMER ON ORDERS.C_ID=CUSTOMER.C_ID)
JOIN TOPPING ON TOPPING_PIZZA.T_ID=TOPPING.T_ID) 
WHERE Fname LIKE "%Andrew%" AND Timestamps LIKE "%March 5th%"
ORDER BY PIZZA.P_ID ASC
;
--7.)On what days did a customer place an order and use any of the “Lunch Special” discounts?
SELECT PIZZA.Timestamps
FROM (((ORDERS JOIN DISCOUNT_ORDERS ON ORDERS.O_ID=DISCOUNT_ORDERS.O_ID)
JOIN DISCOUNT ON DISCOUNT_ORDERS.D_ID=DISCOUNT.D_ID) JOIN PIZZA ON ORDERS.O_ID=PIZZA.O_ID)
WHERE DISCOUNT.Name LIKE "%Lunch Special%"
;
--8.)What Customersdo we not have an address on file for?

--9.)What is the base price for a Large Gluten Free pizza?

--10.)For each Topping, show how many large pizzas we could make with that topping based on the 
--amount of inventory we currently have.
