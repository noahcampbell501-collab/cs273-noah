-- This query displays different Spells damage type, dice, and amount of dice rolled. I've set the JOIN to LEFT, because there are some spells that don't deal damage, but still require the use of a die.

USE magicdatabase;

SELECT d.DiceType, s.DamageType, s.DieNum, s.SpellName
FROM Dice d
LEFT JOIN Spells s ON d.DieID = s.DieID
WHERE d.DiceType = 'd8';