-- This query allows you to see which classes can learn the spell "Mage Hand". It can be modified to list any spell and class that can cast it.

USE magicdatabase;

SELECT c.ClassName, s.SpellName, s.SpellLV
FROM Classes c
INNER JOIN CastableSpells cs ON c.ClassID = cs.ClassID
INNER JOIN Spells s ON cs.SpellID = s.SpellID
WHERE s.SpellName = 'Mage Hand';