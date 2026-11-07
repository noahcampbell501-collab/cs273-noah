-- Q8: Show every spell that doesn't deal any damage.


USE MagicDatabase;

SELECT SpellName, Effect
FROM Spells
WHERE SpellID NOT IN (
    SELECT SpellID
    FROM Spells
    WHERE DamageType IS NOT NULL
)
ORDER BY Effect;