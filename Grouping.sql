CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Pomodoro', 12.99, 600),
('Grilled Chicken Sandwich', 8.99, 400),
('Pesto Pasta', 10.99, 550),
('Steak and Mash', 19.99, 800),
('Sushi Platter', 15.99, 700),
('Ostriche e caviale', 2676554, 300);

CREATE TABLE MEAL_ORDER (
  TIME_MEAL_ORDERED TIMESTAMP DEFAULT NOW(),
  MEAL_NAME VARCHAR(255)
);
  
    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (NOW(), 'Spaghetti Pomodoro');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Spaghetti Pomodoro');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Pesta Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Spaghetti Pomodoro');

SELECT MEAL_NAME, COUNT(*) AS TIMES_MEAL_ORDERED
    FROM MEAL_ORDER
    GROUP BY MEAL_NAME;
    
    SELECT NAME FROM MEAL WHERE PRICE > 15
    GROUP BY NAME;
    
    SELECT SUM(PRICE) AS TOTAL_PRICE
    FROM MEAL
    WHERE PRICE > 15;
    
    SELECT COUNT(*) AS NUMERO_PASTI
    FROM MEAL
    WHERE CALORIES > 500;

    SELECT ROUND(SUM(PRICE),2) AS PRICE_FOR_S
    FROM MEAL
    WHERE NAME LIKE '%s%';

    SELECT MEAL_NAME, COUNT(*) AS NUMERO_ORDINI
    FROM MEAL_ORDER
    WHERE TIME_MEAL_ORDERED < '2023-05-18 18:00:00'
    GROUP BY MEAL_NAME;