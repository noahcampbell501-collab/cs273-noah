# Phase 2 - Field List

| Field | What for | Notes / Possible problems | Table |
|---|---|---|---|
| SpellID | Unique identifier | Not applied by WOTC, so randomly assigned in order of use- this system sucks | Spells |
| Spell Name | More easily recognized | Spell names are default ID | Spells |
| Level | Organizes spells by strength | Address Upcasting | Spells |
| School | Which school of magic does this spell belong to? | There are 9 schools, and they aren't restricted by class | Spells |
| SaveDC | What kind of Saving throw does the opponent roll? | DC means "Difficulty class" | Spells |
| Materials | Lists objects for spell | Physical objects required for spells | Spells |
| Verbal | Whether a spell requires magic words |-| Spells |
| Somatic | Whether a spell requires magic motions |-| Spells |
| Concentration | Does this spell require your attention? | When casting a spell with Concentration, you can't cast another spell with that trait | Spells |
| Duration | How long the spell lasts? |-| Spells |
| CastingTime | How long the spell takes to prepare? | Game related responses. In turn specification? | Spells |
| Damage | How much damage does the spell in it's base form deal? | Damage isn't everything. Find upcast response | Spells |
| DamageType | What kind of damage will we deal if any? |-| Spells |
| Range | How far can the spell reach? | Range typically doesn't change when upcast | Spells |
| SpellShape | What kind of shape does the spell cover? | Some spells, like Fireball, cover a sphere of space, while others, like Lightning Bolt, go in a straight line | Spells |
| Upcastable | Can the spell be upcast? | Spells deal more damage when cast at a higher level than their base form | Spells |
| UpcastDamage | How much does the damage increase per spell slot? |-| Spells |
| Description | What does the spell do? | This one is applicaple to each spell, and will undoubtably be the longest portion | Spells |
| UpcastDesc | What about the sell changes when upcast? | Sometimes the changes aren't in damage, but in properties | Spells |
| SpellType | Determines the purpose of the spell | Not an official attribute in the game, but something should determine what spells are offensive, defensive, or utility | Spells |
| BookID | Primary key for the Book table | What Dungeons and Dragons book does the spell originate from | Books |
| BookName | The name of the book associated with the key | This should be in the spell table as well, but we need it as a foreign key | Books |
| Effect | A one word description of what the spell does | This is a description of what the spell does without studying it | Spells |
| ClassID | Primary key for the Class table | Classes determine what spells you are allowed to learn | Classes |
| ClassName | The name of any given class or subclass | Sometimes subclasses can learn spells that they normally wouldn't be able to. I'll just list all of the outliers | Classes |
| Casting level progression | How often do they level up in spells? | Some casters level up in spells much faster than others. This will track that progression | Class |
## Calculated Fields
| Field | Equation |
|---|---|
| TotalDamage | (Damage + (UpcastDamage(LevelCast - Level)) |
| Components | (Materials + Verbal + Somatic + Concentration) |
