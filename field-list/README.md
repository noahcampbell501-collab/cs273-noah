# Phase 2 - Field List

## Reflection
The only multipart field ended up turning into a calculated field, which isn’t stored. “Components” is a single value in D&D that covers the Verbal, Somatic, and Material fields. 

There were a lot of multivalued tables. Class would have been multivalued on the spell table, so I changed it to its own table. The leveling table was almost a field in the class table, before I realized that that was freakin’ stupid. The castable spells table is the linchpin that the whole database relies on. There were a lot of multivalued tables.

Like I said earlier, the leveling table was a part of the class table, as you can probably see a lot of overlap between the class table and leveling. 

The TotalDamage field is calculated through the adding the base damage to the upcast damage rate, multiplied by the level that the spell is cast minus the base level. 

## Spell table
The Main table, filled with most data on spells.
| Field | Type | Null? | Default | Notes / Constraints |
|---|---|---|---|---|
| SpellID | INT UNSIGNED | NOT NULL | AUTO_INCREMENT | PK - surrogate, auto-assigned |
| SpellName | VARCHAR(50) | NOT NULL | - | AK UNIQUE |
| SpellLV | TINYINT(9) | NOT NULL | - | |
| School |VARCHAR(20) | NOT NULL | - | |
| Effect | VARCHAR(20) | NOT NULL | - | |
| SaveDC | VARCHAR(20) | NOT NULL | - | CHECK IN('STR', 'DEX', 'CON', 'INT', 'WIS', 'CHA') |
| Materials | VARCHAR(50) | NULL | - | |
| Verbal | TINYINT(1) | NOT NULL | 1 | 0=not required, 1=required |
| Somatic | TINYINT(1) | NOT NULL | 1 | 0=not required, 1=required |
| Concentration | TINYINT(1) | NOT NULL | 0 | 0=not required, 1=required |
| Duration | TIME | NULL | 00:00:01 | |
| CastingTime | VARCHAR(20) | NOT NULL | ACTION | |
| DamageDie | VARCHAR(20) | NULL | - | CHECK IN('d4', 'd6', 'd8', 'd10', 'd12', 'd20') |
| DieNum | INT(255) | NULL | - | |
| DamageType | VARCHAR(20) | NULL | - | |
| Range | VARCHAR(20) | NOT NULL | SELF | |
| SpellShape | VARCHAR(20) | NULL | - | |
| Upcastable | TINYINT(1) | NOT NULL | 1 | 0=not upcastable, 1=upcastable |
| UpcastDamageNum | TINYINT(255) | NULL | - | |
| Description | TEXT | NOT NULL | - | AK UNIQUE |

## Class Table
Main categories that couldn't fit within the spell table.
| Field | Type | Null? | Default | Notes / Constraints |
|---|---|---|---|---|
| ClassID | INT UNSIGNED | NOT NULL | AUTO_INCREMENT | PK - surrogate, auto-assigned |
| ClassName | VARCHAR(50) | NOT NULL | - | |
| ClassType | VARCHAR(20) | NOT NULL | - | one of two types: Class and Subclass |

## Leveling table
Reference for how each level changes your options for spellcasting.
| Field | Type | Null? | Default | Notes / Constraints |
|---|---|---|---|---|
| LVID | INT UNSIGNED | NOT NULL | AUTO_INCREMENT | PK - surrogate, auto-assigned |
| ClassID | INT UNSIGNED | NOT NULL | 001 | FK - surrogate, auto-assigned |
| ClassLV | TINYINT(20) | NOT NULL | - | CONSTRAINT >0 |
| HighestLV |  TINYINT(9) | NOT NULL | - | |
| SpellsKnown | TINYINT(20) | NOT NULL | - | |

## Book Table
Reference for when a class was allowed to learn a specific spell.
| Field | Type | Null? | Default | Notes / Constraints |
|---|---|---|---|---|
| BookID | INT UNSIGNED | NOT NULL | AUTO_INCREMENT | PK - surrogate, auto-assigned |
| BookName | TEXT | NOT NULL | - | |

## Castable Spells table
Child of all other tables, meshing them into a long list of instances where spells can be cast.
| Field | Type | Null? | Default | Notes / Constraints |
|---|---|---|---|---|
| CSID | INT UNSIGNED | NOT NULL | AUTO_INCREMENT | PK - surrogate, auto-assigned |
| ClassID | INT UNSIGNED | NOT NULL | AUTO_INCREMENT | FK |
| SpellID | INT UNSIGNED | NOT NULL | AUTO_INCREMENT | FK |
| BookID | INT UNSIGNED | NULL | AUTO_INCREMENT | FK |

## Calculated Fields
Useful calculations that can't/shouldn't be stored
| Field | Equation |
|---|---|
| TotalDamage | (Damage + (UpcastDamage(LevelCast - Level)) |
| Components | (Materials + Verbal + Somatic + Concentration) |
