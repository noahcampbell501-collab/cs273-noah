-- ----- CastableSpells: 4th Level (2014 PHB) -----

-- Bard (1)
-- Compulsion, Confusion, Dimension Door, Freedom of Movement, Greater Invisibility, Hallucinatory Terrain, Locate Creature, Polymorph
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(194,1),(195,1),(200,1),(206,1),(208,1),(210,1),(213,1),(218,1);

-- Cleric (2)
-- Banishment, Control Water, Death Ward, Divination, Freedom of Movement, Guardian of Faith, Locate Creature, Stone Shape
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(192,2),(198,2),(199,2),(201,2),(206,2),(209,2),(213,2),(219,2);

-- Druid (3)
-- Blight, Confusion, Conjure Minor Elementals, Conjure Woodland Beings, Control Water, Dominate Beast, Freedom of Movement, Giant Insect, Hallucinatory Terrain, Ice Storm, Locate Creature, Polymorph, Stone Shape, Stoneskin, Wall of Fire
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(193,3),(195,3),(196,3),(197,3),(198,3),(202,3),(206,3),(207,3),(210,3),(211,3),
(213,3),(218,3),(219,3),(220,3),(221,3);

-- Paladin (4)
-- Aura of Life, Aura of Purity, Banishment, Death Ward, Locate Creature, Staggering Smite
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(190,4),(191,4),(192,4),(199,4),(213,4),(222,4);

-- Eldritch Knight (5): Wizard-list Abjuration and Evocation spells
-- Banishment, Fire Shield, Ice Storm, Mordenkainens Private Sanctum, Otilukes Resilient Sphere, Stoneskin, Wall of Fire
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(192,5),(205,5),(211,5),(215,5),(216,5),(220,5),(221,5);

-- Sorcerer (6)
-- Banishment, Blight, Confusion, Dimension Door, Dominate Beast, Greater Invisibility, Ice Storm, Polymorph, Stoneskin, Wall of Fire
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(192,6),(193,6),(195,6),(200,6),(202,6),(208,6),(211,6),(218,6),(220,6),(221,6);

-- Ranger (7)
-- Conjure Woodland Beings, Freedom of Movement, Locate Creature, Stoneskin
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(197,7),(206,7),(213,7),(220,7);

-- Arcane Trickster (8): Wizard-list Enchantment and Illusion spells
-- Confusion, Greater Invisibility, Hallucinatory Terrain, Phantasmal Killer
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(195,8),(208,8),(210,8),(217,8);

-- Warlock (9)
-- Banishment, Blight, Dimension Door, Hallucinatory Terrain
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(192,9),(193,9),(200,9),(210,9);

-- Wizard (10)
-- Arcane Eye, Banishment, Blight, Confusion, Conjure Minor Elementals, Control Water, Dimension Door, Evards Black Tentacles, Fabricate, Fire Shield, Greater Invisibility, Hallucinatory Terrain, Ice Storm, Leomunds Secret Chest, Locate Creature, Mordenkainens Faithful Hound, Mordenkainens Private Sanctum, Otilukes Resilient Sphere, Phantasmal Killer, Polymorph, Stone Shape, Stoneskin, Wall of Fire
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(189,10),(192,10),(193,10),(195,10),(196,10),(198,10),(200,10),(203,10),(204,10),(205,10),
(208,10),(210,10),(211,10),(212,10),(213,10),(214,10),(215,10),(216,10),(217,10),(218,10),
(219,10),(220,10),(221,10);