-- This query allows you to list the spells of a certain effect. This is helpful for analyzing the overall versitility of a class.

USE magicdatabase;

SELECT c.ClassName, s.SpellName
FROM Classes c
INNER JOIN CastableSpells cs ON c.ClassID = cs.ClassID
INNER JOIN Spells s ON cs.SpellID = s.SpellID
WHERE s.Effect = 'Utility';