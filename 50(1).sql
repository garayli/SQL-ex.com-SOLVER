/* Find the battles in which Kongo-class ships from the Ships table were engaged.

 · Help topics:
    Explicit join operations */
    
SELECT DISTINCT o.battle FROM Outcomes o
INNER JOIN Ships s ON s.name = o.ship OR s.class = o.ship
WHERE s.class = 'Kongo'
