-- Q9: Show every spell that has an attack roll rather than a saving throw.


USE MagicDatabase;

SELECT SpellName, Effect
FROM Spells
WHERE SpellID IN (
    SELECT SpellID
    FROM Spells
    WHERE DamageType IS NOT NULL
)
AND SpellID NOT IN (
    SELECT SpellID
    FROM Spells
    WHERE SaveDC IS NOT NULL
)
ORDER BY SpellName;