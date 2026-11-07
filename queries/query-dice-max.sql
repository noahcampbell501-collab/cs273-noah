-- Q7: Display which spell rolls the most dice in each level.

USE MagicDatabase;

SELECT s.SpellLV, s.SpellName, s.DieNum AS MostDiceRolled
FROM Spells s
JOIN (
    SELECT SpellLV, MAX(DieNum) AS MaxDice
    FROM Spells
    GROUP BY SpellLV
) m ON s.SpellLV = m.SpellLV
   AND s.DieNum = m.MaxDice
ORDER BY s.SpellLV;