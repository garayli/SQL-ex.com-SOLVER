/* Find the ship classes having at least one ship sunk in battles. 
 · Help topics:
    Explicit join operations
    UNION  */

SELECT class FROM Ships S 
LEFT JOIN Outcomes O ON S.name = O.ship
WHERE O.result = 'sunk'

UNION

SELECT class FROM Classes C LEFT JOIN Outcomes O
ON O.ship = C.class WHERE O.result = 'sunk'



