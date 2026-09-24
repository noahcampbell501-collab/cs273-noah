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
The Main table, filled with most data on spells.
| Field | What for | Notes / Possible problems |
|---|---|---|
| SpellID | Unique identifier | Not applied by WOTC, so randomly assigned in order of use- this system sucks |
| Spell Name | More easily recognized | Spell names are default ID |
| Level | Organizes spells by strength | Address Upcasting |
| School | Which school of magic does this spell belong to? | There are 9 schools, and they aren't restricted by class |
| Effect | One word description of purpose | Quick description of spell purpose without needing to do math or logic |
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
Main categories that couldn't fit within the spell table.
| Field | What for | Notes / Possible problems |
|---|---|---|
| ClassID | Primary key for the Class table | Classes determine what spells you are allowed to learn |
| ClassName | The name of any given class or subclass | Sometimes subclasses can learn spells that they normally wouldn't be able to. I'll just list all of the outliers |
| ClassType | Determines whether this is a class or a subclass | Sometimes a class that isn't supposed to cast very many spells gets a subclass that allows them to cast spells. This should be clarified, so that you don't choose a normal knight, not grab a minor in fire, and find yourself unable shoot lasers when it's time to play. 

## Leveling table
Reference for how each level changes your options for spellcasting.
| Field | What for | Notes / Possible problems |
|---|---|---|
| LVID | Primary key for the Leveling table | This will track the spellcasting progression for classes |
| ClassID | Foreign key from Class table | Specifies what class is being described |
| ClassLV | Specifies what the class level is | The higher your class level, the higher a level you can cast spells at |
| HighestLV | Names the highest level spell castable at this class level | The level of spell is never equivalent to the level of the spell slot, besides 1st |
| SpellsKnown | Number of spells known at this class level | You could exclusively learn 1st level spells, and then theoretically learn them all by 20th level |

## Book Table
Reference for when a class was allowed to learn a specific spell.
| Field | What for | Notes / Possible problems |
|---|---|---|
| BookID | Primary key for the Book table | What Dungeons and Dragons book does the spell originate from |
| BookName | The name of the book associated with the key | This should be in the spell table as well, but we need it as a foreign key |

## Castable Spells table
Child of all other tables, meshing them into a long list of instances where spells can be cast.
| Field | What for | Notes / Possible problems |
|---|---|---|
| CSID | Unique identifier for Castable spells | Required, but not very helpful
| ClassID | Foreign key to relate classes | I wish that it was more obvious the name of the class |
| SpellID | Foreign key to relate spells | The spell that can be cast by the class |
| BookID | Foreign key to relate books | This will determine what exact book allows the class to cast this spell. Usually the origin of the spell or new class. 

## Calculated Fields
Useful calculations that can't/shouldn't be stored
| Field | Equation |
|---|---|
| TotalDamage | (Damage + (UpcastDamage(LevelCast - Level)) |
| Components | (Materials + Verbal + Somatic + Concentration) |

## Reflection
The only multipart field ended up turning into a calculated field, which isn’t stored. “Components” is a single value in D&D that covers the Verbal, Somatic, and Material fields. 

There were a lot of multivalued tables. Class would have been multivalued on the spell table, so I changed it to its own table. The leveling table was almost a field in the class table, before I realized that that was freakin’ stupid. The castable spells table is the linchpin that the whole database relies on. There were a lot of multivalued tables.

Like I said earlier, the leveling table was a part of the class table, as you can probably see a lot of overlap between the class table and leveling. 

The TotalDamage field is calculated through the adding the base damage to the upcast damage rate, multiplied by the level that the spell is cast minus the base level. 
