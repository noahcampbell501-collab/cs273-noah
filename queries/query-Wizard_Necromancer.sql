-- This query displays the complete list of what Wizard spells go into the necromancy school. This is helpful when determining any school, because Wizards can get a discount when purchasing spells within their subclass. 

USE magicdatabase;

SELECT c.ClassName, s.SpellName, s.School
FROM Spells s
INNER JOIN CastableSpells cs ON s.SpellID = cs.SpellID
INNER JOIN Classes c ON cs.ClassID = c.ClassID
WHERE c.ClassName = 'Wizard'
AND s.School = 'Necromancy';