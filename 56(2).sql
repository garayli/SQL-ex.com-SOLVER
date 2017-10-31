/*
For each class, find out the number of ships of this class that were sunk in battles. 
Result set: class, number of ships sunk.
*/

SELECT class, SUM(CASE WHEN result ='sunk' 
          THEN 1 
          ELSE 0 END) AS Sunks

FROM (

SELECT class, ship, result FROM Ships s LEFT JOIN Outcomes o ON o.ship = s.name

UNION

SELECT class, ship, result FROM Classes c LEFT JOIN Outcomes o ON c.class = o.ship ) as ttt

GROUP BY class
