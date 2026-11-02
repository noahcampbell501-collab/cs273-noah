-- This query displays the cantrips that can be learned by the Bard class. It can be modified to list any cantrips of any class.

USE magicdatabase;

SELECT c.ClassName, s.SpellName, s.SpellLV
FROM Spells s
INNER JOIN CastableSpells cs ON s.SpellID = cs.SpellID
INNER JOIN Classes c ON cs.ClassID = c.ClassID
WHERE c.ClassName = 'Bard'
AND s.SpellLV = 0;