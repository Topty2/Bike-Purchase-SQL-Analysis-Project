USE CKG
SELECT * FROM Bike

-- 1. Total number of Bikes Purchased

SELECT COUNT(*) AS total_bikes_purchased
FROM Bike
WHERE Purchased_Bike =1;

--2. Purchase by Age Group

SELECT Age_Bracket, COUNT(Age_Bracket) AS Total_Purchase_By_Age FROM Bike
GROUP BY Age_Bracket
ORDER BY Total_Purchase_By_Age ASC

-- 3. Purchase by Region
SELECT 
    Region, 
    COUNT(CASE WHEN Purchased_Bike = 1 THEN 1 END) AS Total_Purchased_Per_Region,
    COUNT(CASE WHEN Purchased_Bike = 0 THEN 1 END) AS Total_Not_Purchased_Per_Region,
    COUNT(CASE WHEN Purchased_Bike = 1 THEN 1 END) + COUNT(CASE WHEN Purchased_Bike = 0 THEN 1 END) AS Total_Bikes_Per_Region
FROM 
    Bike
GROUP BY 
    Region;

-- 4. Bike Purchase by Marital Status

SELECT Marital_Status,
COUNT(CASE WHEN Purchased_Bike=1 THEN 1 END) AS Total_Purchased_Per_Marital_Status,
COUNT(CASE WHEN Purchased_Bike=0 THEN 1 END) AS Total_Not_Purchased_Per_Marital_Status
FROM Bike
GROUP BY Marital_Status;


-- 5. Bike Purchase by Income 

SELECT Income , 

COUNT(CASE WHEN Purchased_Bike=1 THEN 1 END) AS Total_Purchased_By_Income
FROM Bike

GROUP BY Income
ORDER BY Total_Purchased_By_Income DESC;

-- 6. Bike Purchase by Commute distance

SELECT Commute_Distance,
COUNT (CASE WHEN Purchased_Bike=1 THEN 1 END) AS Total_Purchased_By_Income
FROM Bike
GROUP BY Commute_Distance
ORDER BY Total_Purchased_By_Income DESC

-- 7. Bike Purchase by number of cars owned

SELECT Cars,
COUNT (CASE WHEN Purchased_Bike=1 THEN 1 END) AS Total_Purchased_By_Income
FROM Bike
GROUP BY Cars
ORDER BY Total_Purchased_By_Income DESC



















