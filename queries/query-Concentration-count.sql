-- Q10: Display the number of concentration spells in each class.

USE MagicDatabase;

SELECT
    c.ClassID,
    c.ClassName,
    COUNT(DISTINCT s.SpellID) AS ConcentrationSpellCount
FROM Classes c
LEFT JOIN CastableSpells cs
    ON cs.ClassID = c.ClassID
LEFT JOIN Spells s
    ON s.SpellID = cs.SpellID
   AND s.Concentration = 1
GROUP BY c.ClassID, c.ClassName
ORDER BY ConcentrationSpellCount DESC, c.ClassName;