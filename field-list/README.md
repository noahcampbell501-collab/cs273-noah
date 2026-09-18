# Phase 2 - Field List
## Draft Field list
| Field | What for | Notes / Possible problems |
|---|---|---|
| SpellID | Unique identifier | Not applied by WOTC, so randomly assigned in order of use- this system sucks |
| Spell Name | More easily recognized | Spell names are default ID |
| Level | Organizes spells by strength | Address Upcasting |
| School | Which school of magic does this spell belong to? | There are 9 schools, and they aren't restricted by class |
| SaveDC | What kind of Saving throw does the opponent roll? | DC means "Difficulty class" |
| Materials | Lists objects for spell | Physical objects required for spells |
| Verbal | Whether a spell requires magic words |-|
| Somatic | Whether a spell requires magic motions |-|
| Concentration | Does this spell require your attention? | When casting a spell with Concentration, you can't cast another spell with that trait |
| Duration | How long the spell lasts? |-|
| CastingTime | How long the spell takes to prepare? | Game related responses. In turn specification? |
| Damage | How much damage does the spell in it's base form deal? | Damage isn't everything. Find upcast response |
| DamageType | What kind of damage will we deal if any? |-|
| Range | How far can the spell reach? | Range typically doesn't change when upcast |
| SpellShape | What kind of shape does the spell cover? | Some spells, like Fireball, cover a sphere of space, while others, like Lightning Bolt, go in a straight line |
| Upcastable | Can the spell be upcast? | Spells deal more damage when cast at a higher level than their base form |
| UpcastDamage | How much does the damage increase per spell slot? |-|
| Description | What does the spell do? | This one is applicaple to each spell, and will undoubtably be the longest portion |
| UpcastDesc | What about the sell changes when upcast? | Sometimes the changes aren't in damage, but in properties |
| SpellType | Determines the purpose of the spell | Not an official attribute in the game, but something should determine what spells are offensive, defensive, or utility |
| BookID | Primary key for the Book table | What Dungeons and Dragons book does the spell originate from |
| BookName | The name of the book associated with the key | This should be in the spell table as well, but we need it as a foreign key |
| Effect | A one word description of what the spell does | This is a description of what the spell does without studying it |
| ClassID | Primary key for the Class table | Classes determine what spells you are allowed to learn |
| ClassName | The name of any given class or subclass | Sometimes subclasses can learn spells that they normally wouldn't be able to. I'll just list all of the outliers |
| Casting level progression | How often do they level up in spells? | Some casters level up in spells much faster than others. This will track that progression |

## Spell table
|---|---|---|
| SpellID | Unique identifier | Not applied by WOTC, so randomly assigned in order of use- this system sucks |
| Spell Name | More easily recognized | Spell names are default ID |
| Level | Organizes spells by strength | Address Upcasting |
| School | Which school of magic does this spell belong to? | There are 9 schools, and they aren't restricted by class |
| Effect | Determines the purpose of the spell | Not an official attribute in the game, but something should determine what spells are offensive, defensive, or utility |
| SaveDC | What kind of Saving throw does the opponent roll? | DC means "Difficulty class" |
| Materials | Lists objects for spell | Physical objects required for spells |
| Verbal | Whether a spell requires magic words |-|
| Somatic | Whether a spell requires magic motions |-|
| Concentration | Does this spell require your attention? | When casting a spell with Concentration, you can't cast another spell with that trait |
| Duration | How long the spell lasts? |-|
| CastingTime | How long the spell takes to prepare? | Game related responses. In turn specification? |
| Damage | How much damage does the spell in it's base form deal? | Damage isn't everything. Find upcast response |
| DamageType | What kind of damage will we deal if any? |-|
| Range | How far can the spell reach? | Range typically doesn't change when upcast |
| SpellShape | What kind of shape does the spell cover? | Some spells, like Fireball, cover a sphere of space, while others, like Lightning Bolt, go in a straight line |
| Upcastable | Can the spell be upcast? | Spells deal more damage when cast at a higher level than their base form |
| UpcastDamage | How much does the damage increase per spell slot? |-|
| Description | What does the spell do? | This one is applicaple to each spell, and will undoubtably be the longest portion |

## Class Table
|---|---|---|
| ClassID | Primary key for the Class table | Classes determine what spells you are allowed to learn |
| ClassName | The name of any given class or subclass | Sometimes subclasses can learn spells that they normally wouldn't be able to. I'll just list all of the outliers |
| LeveltoCastingLevel | How often do they level up in spells? | Some casters level up in spells much faster than others. This will track that progression |
| ClassType | Determines whether this is a class or a subclass | Sometimes a class that isn't supposed to cast very many spells gets a subclass that allows them to cast spells. This should be clarified, so that you don't choose a normal knight, not grab a minor in fire, and find yourself unable shoot lasers when it's time to play. 


## Book Table
|---|---|---|
| BookID | Primary key for the Book table | What Dungeons and Dragons book does the spell originate from |
| BookName | The name of the book associated with the key | This should be in the spell table as well, but we need it as a foreign key |

## Castable Spells table
|---|---|---|
| CSID | Unique identifier for Castable spells | Required, but not very helpful
| ClassID | Foreign key to relate classes | I wish that it was more obvious the name of the class |
| SpellID | Foreign key to relate classes | The spell that can be cast by the class |
| BookID | Foreign key to relate classes | This will determine what exact book allows the class to cast this spell. Usually the origin of the spell or new class. 

## Calculated Fields
| Field | Equation |
|---|---|
| TotalDamage | (Damage + (UpcastDamage(LevelCast - Level)) |
| Components | (Materials + Verbal + Somatic + Concentration) |
