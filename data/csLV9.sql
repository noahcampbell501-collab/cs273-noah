-- ----- CastableSpells: 9th Level (2014 PHB), corrected IDs -----

-- Bard (1)
-- Foresight, Power Word Heal, Power Word Kill, True Polymorph
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(462,1),(467,1),(468,1),(473,1);

-- Cleric (2)
-- Astral Projection, Gate, Mass Heal, Power Word Heal, True Resurrection
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(461,2),(463,2),(465,2),(467,2),(474,2);

-- Druid (3)
-- Foresight, Shapechange, Storm of Vengeance, True Resurrection
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(462,3),(470,3),(471,3),(474,3);

-- Sorcerer (6)
-- Gate, Meteor Swarm, Power Word Kill, Time Stop, Wish
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(463,6),(466,6),(468,6),(472,6),(476,6);

-- Warlock (9)
-- Astral Projection, Foresight, Imprisonment, Power Word Kill, True Polymorph
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(461,9),(462,9),(464,9),(468,9),(473,9);

-- Wizard (10)
-- Astral Projection, Foresight, Gate, Imprisonment, Meteor Swarm, Power Word Kill, Prismatic Wall, Shapechange, Time Stop, True Polymorph, Weird, Wish
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(461,10),(462,10),(463,10),(464,10),(466,10),(468,10),(469,10),(470,10),(472,10),(473,10),(475,10),(476,10);