/* With a precision of two decimal places, determine the average number of guns for the battleship classes.


 · Help topics:
    Getting summarizing values
    Data type conversion */


SELECT CAST(AVG(numGuns)*1.0 AS decimal(10,2))
FROM (
SELECT numGuns
FROM Classes c INNER JOIN Ships s ON s.class = c.class
WHERE c.type = 'bb'

UNION

SELECT numGuns
FROM Classes c INNER JOIN Outcomes o ON c.class = o.ship 
WHERE c.type ='bb'  ) AS e
