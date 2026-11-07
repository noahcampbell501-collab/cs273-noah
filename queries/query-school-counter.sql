-- Q6: This query returns the total number of spells in every school, sorted by largest to smallest.

USE MagicDatabase;

SELECT School, COUNT(*) As SpellTotal
FROM Spells
GROUP BY School
ORDER BY SpellTotal DESC;

