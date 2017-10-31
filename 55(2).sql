/* For each class, determine the year the first ship of this class was launched. 
If the lead ship’s year of launch is not known, get the minimum year of launch for the ships of this class.
Result set: class, year. */

SELECT s.class AS class, MIN(launched) AS year FROM Ships s
GROUP BY s.class

UNION 

SELECT c.class AS class, MIN (launched) AS year FROM Ships s FULL JOIN Classes c ON s.class = c.class
GROUP BY c.class
