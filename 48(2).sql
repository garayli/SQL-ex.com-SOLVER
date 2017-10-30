SELECT class FROM Ships S 
LEFT JOIN Outcomes O ON S.name = O.ship
WHERE O.result = 'sunk'

UNION

SELECT class FROM Classes C LEFT JOIN Outcomes O
ON O.ship = C.class WHERE O.result = 'sunk'
