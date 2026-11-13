USE magicdbscript;

-- ----- Classes Table -----
INSERT INTO Classes (ClassName, ClassType) VALUES ('Bard', 'Class'), ('Cleric', 'Class'), ('Druid', 'Class'), ('Paladin', 'Class'), ('EldritchKnight', 'Subclass'), ('Sorcerer', 'Class'), ('Ranger', 'Class'), ('ArcaneTrickster', 'Subclass'), ('Warlock', 'Class'), ('Wizard', 'Class');

ALTER TABLE Spells MODIFY SaveDC VARCHAR(20) NULL;

INSERT INTO Dice (DieType) VALUES (d4); 
INSERT INTO Dice (DieType) VALUES (d6); 
INSERT INTO Dice (DieType) VALUES (d8); 
INSERT INTO Dice (DieType) VALUES (d10); 
INSERT INTO Dice (DieType) VALUES (d12); 
INSERT INTO Dice (DieType) VALUES (d20); 

INSERT INTO Books (BookName) VALUES (Players Handbook);
INSERT INTO Books (BookName) VALUES (Xanthar’s Guide to Everything);
INSERT INTO Books (BookName) VALUES (Tasha’s Cauldron of Everything);
INSERT INTO Books (BookName) VALUES (Fizban’s Treasury of Dragons);

-- ----- CANTRIPS (level 0) -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Acid Splash',0,'Conjuration','Damage','DEX',NULL,1,1,0,'Instantaneous','Action',2,1,'Acid','60ft','Target',0,NULL,'Hurl a bubble of acid at one or two adjacent creatures. a failed Dexterity save deals acid damage.'),
('Blade Ward',0,'Abjuration','Warding',NULL,NULL,1,1,0,'1 round','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Until your next turn you resist bludgeoning, piercing and slashing damage from weapon attacks.'),
('Chill Touch',0,'Necromancy','Damage',NULL,NULL,1,1,0,'1 round','Action',3,1,'Necrotic','120ft','Target',0,NULL,'A ghostly skeletal hand makes a ranged spell attack for necrotic damage and stops the target regaining hit points.'),
('Dancing Lights',0,'Evocation','Utility',NULL,'Phosphorus, wychwood or a glowworm',1,1,1,'1 minute','Action',NULL,NULL,NULL,'120ft','Target',0,NULL,'Create up to four torch-sized lights that you can move around as a bonus action.'),
('Druidcraft',0,'Transmutation','Utility',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Create a tiny nature effect such as predicting weather, blooming a flower or lighting a small flame.'),
('Eldritch Blast',0,'Evocation','Damage',NULL,NULL,1,1,0,'Instantaneous','Action',4,1,'Force','120ft','Target',0,NULL,'A beam of crackling energy makes a ranged spell attack for force damage.'),
('Fire Bolt',0,'Evocation','Damage',NULL,NULL,1,1,0,'Instantaneous','Action',4,1,'Fire','120ft','Target',0,NULL,'Hurl a mote of fire with a ranged spell attack. it can ignite loose flammable objects.'),
('Friends',0,'Enchantment','Control',NULL,'A small amount of makeup',0,1,1,'1 minute','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Gain advantage on Charisma checks against one non-hostile creature, who realizes afterward you used magic.'),
('Guidance',0,'Divination','Buff',NULL,NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The target can add a d4 to one ability check of its choice before the spell ends.'),
('Light',0,'Evocation','Utility','DEX','A firefly or phosphorescent moss',1,0,0,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'An object glows with bright light in a 20-foot radius. an unwilling creature holding it can resist with a Dexterity save.'),
('Mage Hand',0,'Conjuration','Utility',NULL,NULL,1,1,0,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'A spectral hand can manipulate objects, open doors and carry light items at a distance.'),
('Mending',0,'Transmutation','Utility',NULL,'Two lodestones',1,1,0,'Instantaneous','1 minute',NULL,NULL,NULL,'Touch','Target',0,NULL,'Repair a single break or tear in an object, such as a broken chain link or torn cloak.'),
('Message',0,'Transmutation','Utility',NULL,'A short piece of copper wire',1,1,0,'1 round','Action',NULL,NULL,NULL,'120ft','Target',0,NULL,'Whisper a message to a creature in range only it hears the message and it can whisper a reply.'),
('Minor Illusion',0,'Illusion','Utility',NULL,'A bit of fleece',0,1,0,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Create a sound or an image of an object that lasts for the duration.'),
('Poison Spray',0,'Conjuration','Damage','CON',NULL,1,1,0,'Instantaneous','Action',5,1,'Poison','10ft','Target',0,NULL,'Project a puff of noxious gas at a creature. a failed Constitution save deals poison damage.'),
('Prestidigitation',0,'Transmutation','Utility',NULL,NULL,1,1,0,'1 hour','Action',NULL,NULL,NULL,'10ft','Target',0,NULL,'Perform minor magical tricks such as cleaning, warming, flavoring or making small harmless effects.'),
('Produce Flame',0,'Conjuration','Damage',NULL,NULL,1,1,0,'10 minutes','Action',3,1,'Fire','Self','Target',0,NULL,'A flame in your hand sheds light and can be hurled as a ranged spell attack for fire damage.'),
('Ray of Frost',0,'Evocation','Damage',NULL,NULL,1,1,0,'Instantaneous','Action',3,1,'Cold','60ft','Target',0,NULL,'A frigid beam deals cold damage on a ranged spell attack and slows the targets speed.'),
('Resistance',0,'Abjuration','Buff',NULL,'A miniature cloak',1,1,1,'1 minute','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The target can add a d4 to one saving throw of its choice before the spell ends.'),
('Sacred Flame',0,'Evocation','Damage','DEX',NULL,1,1,0,'Instantaneous','Action',3,1,'Radiant','60ft','Target',0,NULL,'Radiant light descends on a creature. a failed Dexterity save deals radiant damage, ignoring cover.'),
('Shillelagh',0,'Transmutation','Buff',NULL,'Mistletoe, a shamrock leaf and a club',1,1,0,'1 minute','Bonus Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'A club or quarterstaff becomes magical and uses your spellcasting ability for attacks and damage.'),
('Shocking Grasp',0,'Evocation','Damage',NULL,NULL,1,1,0,'Instantaneous','Action',3,1,'Lightning','Touch','Target',0,NULL,'A melee spell attack with advantage against metal armor that deals lightning damage and stops reactions.'),
('Spare the Dying',0,'Necromancy','Healing',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Stabilize a living creature that has 0 hit points.'),
('Thaumaturgy',0,'Transmutation','Utility',NULL,NULL,1,0,0,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Manifest a minor wonder such as a booming voice, flickering flames or trembling ground.'),
('True Strike',0,'Divination','Buff',NULL,NULL,0,1,1,'1 round','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Gain advantage on your first attack roll against a target on your next turn.'),
('Vicious Mockery',0,'Enchantment','Damage','WIS',NULL,1,0,0,'Instantaneous','Action',1,1,'Psychic','60ft','Target',0,NULL,'Hurl an insult laced with magic. a failed Wisdom save deals psychic damage and imposes disadvantage on its next attack.');

-- ----- 1ST LEVEL -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Alarm',1,'Abjuration','Warding',NULL,'A tiny bell and a silver wire',1,1,0,'8 hours','1 minute',NULL,NULL,NULL,'30ft','Target',0,NULL,'Set a mental or audible alarm that triggers when a creature enters a warded area.'),
('Bane',1,'Enchantment','Debuff','CHA','A drop of blood',1,1,1,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',1,NULL,'Up to three creatures must save or subtract a d4 from attack rolls and saving throws.'),
('Bless',1,'Enchantment','Buff',NULL,'A sprinkling of holy water',1,1,1,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',1,NULL,'Up to three creatures add a d4 to attack rolls and saving throws.'),
('Burning Hands',1,'Evocation','Damage','DEX',NULL,1,1,0,'Instantaneous','Action',2,3,'Fire','Self','15ft cone',1,1,'A thin sheet of flames shoots from your fingertips. a failed Dexterity save deals fire damage, half on a success.'),
('Charm Person',1,'Enchantment','Control','WIS',NULL,1,1,0,'1 hour','Action',NULL,NULL,NULL,'30ft','Target',1,NULL,'A humanoid is charmed by you, regarding you as a friendly acquaintance, until you or your allies harm it.'),
('Chromatic Orb',1,'Evocation','Damage',NULL,'A diamond worth at least 50 gp',1,1,0,'Instantaneous','Action',3,3,'Various','90ft','Target',1,1,'Hurl an orb of energy with a ranged spell attack, choosing acid, cold, fire, lightning, poison or thunder damage.'),
('Color Spray',1,'Illusion','Control',NULL,'A pinch of red, yellow and blue powder',1,1,0,'1 round','Action',NULL,NULL,NULL,'Self','15ft cone',1,NULL,'A burst of colored light blinds creatures in a cone, starting with those with the fewest hit points.'),
('Command',1,'Enchantment','Control','WIS',NULL,1,0,0,'1 round','Action',NULL,NULL,NULL,'60ft','Target',1,NULL,'Speak a one-word command that a creature follows on its next turn unless it succeeds on a Wisdom save.'),
('Comprehend Languages',1,'Divination','Utility',NULL,'A pinch of soot and salt',1,1,0,'1 hour','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Understand the literal meaning of any spoken or written language you can see or touch.'),
('Create or Destroy Water',1,'Transmutation','Utility',NULL,'A drop of water or dust',1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'30ft','Target',1,NULL,'Create up to 10 gallons of clean water, or destroy the same amount of water or fog.'),
('Cure Wounds',1,'Evocation','Healing',NULL,NULL,1,1,0,'Instantaneous','Action',3,1,NULL,'Touch','Target',1,1,'A creature you touch regains hit points equal to a d8 roll plus your spellcasting modifier.'),
('Detect Evil and Good',1,'Divination','Utility',NULL,NULL,1,1,1,'10 minutes','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'Sense the presence and location of aberrations, celestials, elementals, fey, fiends and undead nearby.'),
('Detect Magic',1,'Divination','Utility',NULL,NULL,1,1,1,'10 minutes','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'Sense magic nearby and see a faint aura around magical creatures or objects.'),
('Detect Poison and Disease',1,'Divination','Utility',NULL,'A yew leaf',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'Sense poisons, poisonous creatures and diseases, and identify their kind.'),
('Disguise Self',1,'Illusion','Utility',NULL,NULL,1,1,0,'1 hour','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Change your appearance, including clothes and gear, until the spell ends or you use your action to end it.'),
('Divine Favor',1,'Evocation','Buff',NULL,NULL,1,1,1,'1 minute','Bonus Action',1,1,'Radiant','Self',NULL,0,NULL,'Your weapon attacks deal an extra d4 radiant damage.'),
('Entangle',1,'Conjuration','Control','STR',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'90ft','20ft square',0,NULL,'Grasping plants turn the area into difficult terrain and restrain creatures that fail a Strength save.'),
('Expeditious Retreat',1,'Transmutation','Buff',NULL,NULL,1,1,1,'10 minutes','Bonus Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Take the Dash action now and as a bonus action on each of your turns for the duration.'),
('Faerie Fire',1,'Evocation','Debuff','DEX',NULL,1,0,1,'1 minute','Action',NULL,NULL,NULL,'60ft','20ft cube',0,NULL,'Creatures and objects in the area are outlined in light, granting attackers advantage against them.'),
('False Life',1,'Necromancy','Buff',NULL,'A small amount of alcohol or spirits',1,1,0,'1 hour','Action',NULL,NULL,NULL,'Self',NULL,1,5,'Gain temporary hit points for the duration.'),
('Feather Fall',1,'Transmutation','Utility',NULL,'A small feather or piece of down',1,0,0,'1 minute','Reaction',NULL,NULL,NULL,'60ft','Target',0,NULL,'Up to five falling creatures slow their descent and take no falling damage.'),
('Find Familiar',1,'Conjuration','Utility',NULL,'Charcoal, incense and herbs worth 10 gp',1,1,0,'Instantaneous','1 hour',NULL,NULL,NULL,'10ft','Target',0,NULL,'Gain the service of a spirit that takes an animal form and acts as your familiar.'),
('Fog Cloud',1,'Conjuration','Utility',NULL,NULL,1,1,1,'1 hour','Action',NULL,NULL,NULL,'120ft','20ft sphere',1,NULL,'Create a sphere of fog that heavily obscures the area.'),
('Goodberry',1,'Transmutation','Healing',NULL,'A sprig of mistletoe',1,1,0,'24 hours','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Ten berries each restore 1 hit point and provide a days nourishment when eaten.'),
('Grease',1,'Conjuration','Control','DEX',NULL,1,1,0,'1 minute','Action',NULL,NULL,NULL,'60ft','10ft square',0,NULL,'Slick grease covers the ground, making it difficult terrain and knocking creatures prone on a failed save.'),
('Guiding Bolt',1,'Evocation','Damage',NULL,NULL,1,1,0,'1 round','Action',2,4,'Radiant','120ft','Target',1,1,'A ranged spell attack deals radiant damage and gives the next attack against the target advantage.'),
('Healing Word',1,'Evocation','Healing',NULL,NULL,1,0,0,'Instantaneous','Bonus Action',1,1,NULL,'60ft','Target',1,1,'A creature you can see regains hit points equal to a d4 roll plus your spellcasting modifier.'),
('Hellish Rebuke',1,'Evocation','Damage','DEX',NULL,1,1,0,'Instantaneous','Reaction',4,2,'Fire','60ft','Target',1,1,'When a creature damages you, it is wreathed in flames and takes fire damage on a failed save.'),
('Heroism',1,'Enchantment','Buff',NULL,NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'Touch','Target',1,NULL,'The target is immune to being frightened and gains temporary hit points at the start of each of its turns.'),
('Hex',1,'Enchantment','Debuff',NULL,'The petrified eye of a newt',1,1,1,'1 hour','Bonus Action',1,1,'Necrotic','90ft','Target',1,NULL,'Curse a creature so your attacks deal extra necrotic damage and it has disadvantage on checks with one ability.'),
('Hunters Mark',1,'Divination','Debuff',NULL,NULL,1,0,1,'1 hour','Bonus Action',2,1,'Weapon','90ft','Target',1,NULL,'Mark a creature so your weapon attacks deal extra damage to it and you can track it easily.'),
('Identify',1,'Divination','Utility',NULL,'A 100 gp pearl and an owl feather',1,1,0,'Instantaneous','1 minute',NULL,NULL,NULL,'Touch','Target',0,NULL,'Learn the properties of a magic item or spell affecting a creature or object.'),
('Illusory Script',1,'Illusion','Utility',NULL,'Lead-based ink worth 10 gp',0,1,0,'10 days','1 minute',NULL,NULL,NULL,'Touch','Target',0,NULL,'Write in a way that only chosen readers can understand. others see unreadable or misleading writing.'),
('Inflict Wounds',1,'Necromancy','Damage',NULL,NULL,1,1,0,'Instantaneous','Action',4,3,'Necrotic','Touch','Target',1,1,'A melee spell attack that deals heavy necrotic damage.'),
('Jump',1,'Transmutation','Buff',NULL,'A grasshoppers hind leg',1,1,0,'1 minute','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The targets jump distance is tripled for the duration.'),
('Longstrider',1,'Transmutation','Buff',NULL,'A pinch of dirt',1,1,0,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',1,NULL,'The targets speed increases by 10 feet.'),
('Mage Armor',1,'Abjuration','Buff',NULL,'A piece of cured leather',1,1,0,'8 hours','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'An unarmored willing creatures base AC becomes 13 plus its Dexterity modifier.'),
('Protection from Evil and Good',1,'Abjuration','Warding',NULL,'Holy water or powdered silver and iron',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Shields a creature from attacks and possession by aberrations, celestials, elementals, fey, fiends and undead.'),
('Purify Food and Drink',1,'Transmutation','Utility',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'10ft','5ft sphere',0,NULL,'Remove poison and disease from nonmagical food and drink in the area.'),
('Sanctuary',1,'Abjuration','Warding','WIS','A small silver mirror',1,1,0,'1 minute','Bonus Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Creatures must save before attacking the warded creature. the ward ends if the creature attacks or casts.'),
('Shield',1,'Abjuration','Warding',NULL,NULL,1,1,0,'1 round','Reaction',NULL,NULL,NULL,'Self',NULL,0,NULL,'Gain +5 AC until your next turn and take no damage from magic missile.'),
('Shield of Faith',1,'Abjuration','Buff',NULL,'A small parchment with holy text',1,1,1,'10 minutes','Bonus Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'A shimmering field grants the target +2 AC.'),
('Silent Image',1,'Illusion','Utility',NULL,'A bit of fleece',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'60ft','15ft cube',0,NULL,'Create an image of an object, creature or phenomenon that you can move. it makes no sound.'),
('Sleep',1,'Enchantment','Control',NULL,'Fine sand, rose petals or a cricket',1,1,0,'1 minute','Action',3,5,NULL,'90ft','20ft sphere',1,2,'Roll a pool of hit points. creatures with the lowest hit points in the area fall unconscious first.'),
('Speak with Animals',1,'Divination','Utility',NULL,NULL,1,1,0,'10 minutes','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Comprehend and verbally communicate with beasts for the duration.'),
('Thunderwave',1,'Evocation','Damage','CON',NULL,1,1,0,'Instantaneous','Action',3,2,'Thunder','Self','15ft cube',1,1,'A wave of thunder damages and pushes creatures away on a failed save, and is heard 300 feet away.'),
('Unseen Servant',1,'Conjuration','Utility',NULL,'A piece of string and a bit of wood',1,1,0,'1 hour','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Create an invisible, mindless force that performs simple tasks at your command.'),
('Witch Bolt',1,'Evocation','Damage',NULL,'A twig from a tree struck by lightning',1,1,1,'1 minute','Action',5,1,'Lightning','30ft','Target',1,1,'A beam of lightning arcs to a target and deals recurring damage while you maintain it.'),
('Ensnaring Strike',1,'Conjuration','Control','STR',NULL,1,0,1,'1 minute','Bonus Action',2,1,'Piercing','Self',NULL,1,1,'Your next weapon hit causes thorny vines to restrain the target, which takes piercing damage each turn.'),
('Hail of Thorns',1,'Conjuration','Damage','DEX',NULL,1,0,1,'1 minute','Bonus Action',4,1,'Piercing','Self',NULL,1,1,'Your next ranged weapon hit sprouts thorns that damage the target and nearby creatures.'),
('Searing Smite',1,'Evocation','Damage','CON',NULL,1,0,1,'1 minute','Bonus Action',2,1,'Fire','Self',NULL,1,1,'Your next melee weapon hit deals extra fire damage and sets the target ablaze.'),
('Thunderous Smite',1,'Evocation','Damage','STR',NULL,1,0,1,'1 minute','Bonus Action',2,2,'Thunder','Self',NULL,0,NULL,'Your next melee weapon hit booms with thunder and can push the target and knock it prone.'),
('Wrathful Smite',1,'Evocation','Damage','WIS',NULL,1,0,1,'1 minute','Bonus Action',2,1,'Psychic','Self',NULL,0,NULL,'Your next melee weapon hit deals extra psychic damage and may frighten the target.'),
('Compelled Duel',1,'Enchantment','Control','WIS',NULL,1,0,1,'1 minute','Bonus Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'A creature is compelled to fight you and has disadvantage on attacks against others.'),
('Tashas Hideous Laughter',1,'Enchantment','Control','WIS','Tiny tarts and a feather',1,1,1,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'A creature falls prone in fits of laughter and is incapacitated on a failed Wisdom save.'),
('Tensers Floating Disk',1,'Conjuration','Utility',NULL,'A drop of mercury',1,1,0,'1 hour','1 minute',NULL,NULL,NULL,'30ft','Target',0,NULL,'Create a floating disk that carries up to 500 pounds and follows you.'),
('Dissonant Whispers',1,'Enchantment','Damage','WIS',NULL,1,0,0,'Instantaneous','Action',2,3,'Psychic','60ft','Target',1,1,'Whisper a maddening tune. a failed Wisdom save deals psychic damage and forces the creature to flee.');

-- ----- 2ND LEVEL -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Alter Self',2,'Transmutation','Utility',NULL,NULL,1,1,1,'1 hour','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Change your form: adapt to water, alter your appearance, or grow natural weapons.'),
('Animal Messenger',2,'Enchantment','Utility',NULL,'A morsel of food',1,1,0,'24 hours','Action',NULL,NULL,NULL,'30ft','Target',1,NULL,'A tiny beast carries a message to a location you describe.'),
('Arcane Lock',2,'Abjuration','Warding',NULL,'Gold dust worth at least 25 gp',1,1,0,'Until dispelled','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Magically lock a door, window, gate or container, with exceptions you choose.'),
('Augury',2,'Divination','Utility',NULL,'Marked sticks, bones or similar tokens',1,1,0,'Instantaneous','1 minute',NULL,NULL,NULL,'Self',NULL,0,NULL,'Receive an omen about whether a planned action in the next 30 minutes will be good or bad.'),
('Barkskin',2,'Transmutation','Buff',NULL,'A handful of oak bark',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The targets skin takes on a bark-like toughness, setting its AC to at least 16.'),
('Beast Sense',2,'Divination','Utility',NULL,NULL,0,1,1,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Perceive through the senses of a willing beast.'),
('Blindness/Deafness',2,'Necromancy','Debuff','CON',NULL,1,0,0,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',1,NULL,'A foe must save or be blinded or deafened for the duration.'),
('Blur',2,'Illusion','Buff',NULL,NULL,1,0,1,'1 minute','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Your outline blurs, giving attackers disadvantage against you.'),
('Branding Smite',2,'Evocation','Damage',NULL,NULL,1,0,1,'1 minute','Bonus Action',2,2,'Radiant','Self',NULL,1,1,'Your next weapon hit deals extra radiant damage and reveals an invisible target.'),
('Calm Emotions',2,'Enchantment','Control','CHA',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'60ft','20ft sphere',0,NULL,'Suppress strong emotions such as charm and fear in humanoids in the area, or make them indifferent.'),
('Continual Flame',2,'Evocation','Utility',NULL,'Ruby dust worth 50 gp',1,1,0,'Until dispelled','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'A heatless flame as bright as a torch burns on an object until dispelled.'),
('Cordon of Arrows',2,'Transmutation','Damage','DEX','Four or more arrows or bolts',1,1,0,'8 hours','Action',2,1,'Piercing','Touch','Target',1,1,'Enchanted ammunition fires at creatures that enter an area, dealing piercing damage on a failed save.'),
('Crown of Madness',2,'Enchantment','Control','WIS',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'120ft','Target',0,NULL,'A humanoid is charmed and forced to attack a creature you choose.'),
('Darkness',2,'Evocation','Utility',NULL,'Bat fur and a drop of pitch',1,0,1,'10 minutes','Action',NULL,NULL,NULL,'60ft','15ft sphere',0,NULL,'Magical darkness spreads from a point and blocks even darkvision.'),
('Darkvision',2,'Transmutation','Buff',NULL,'A dried carrot or an agate',1,1,0,'8 hours','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'A willing creature gains darkvision out to 60 feet.'),
('Detect Thoughts',2,'Divination','Utility','WIS','A copper piece',1,1,1,'1 minute','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'Read surface thoughts of creatures nearby and probe deeper into one mind.'),
('Enhance Ability',2,'Transmutation','Buff',NULL,'Fur or a feather from a beast',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',1,NULL,'Grant one chosen benefit to checks of a particular ability, such as advantage or bonus temporary hit points.'),
('Enlarge/Reduce',2,'Transmutation','Buff','CON','A pinch of powdered iron',1,1,1,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Make a creature or object larger or smaller, changing its size and damage.'),
('Enthrall',2,'Enchantment','Control','WIS',NULL,1,1,0,'1 minute','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Creatures that fail a save are captivated by you and ignore everything else.'),
('Find Steed',2,'Conjuration','Utility',NULL,NULL,1,1,0,'Instantaneous','10 minutes',NULL,NULL,NULL,'30ft','Target',0,NULL,'Summon a spirit that takes the form of a loyal mount.'),
('Find Traps',2,'Divination','Utility',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'120ft','Target',0,NULL,'Sense the presence of traps in line of sight, though not their exact nature.'),
('Flame Blade',2,'Evocation','Damage',NULL,'A leaf of sumac',1,1,1,'10 minutes','Bonus Action',2,3,'Fire','Self',NULL,1,1,'A fiery blade appears in your hand and you can make melee spell attacks with it.'),
('Flaming Sphere',2,'Conjuration','Damage','DEX','Tallow, brimstone and powdered iron',1,1,1,'1 minute','Action',2,2,'Fire','60ft','Target',1,1,'A rolling sphere of fire damages creatures it ends next to on a failed save.'),
('Gentle Repose',2,'Necromancy','Utility',NULL,'A pinch of salt and a copper piece',1,1,0,'10 days','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Protect a corpse from decay and from being raised as undead.'),
('Gust of Wind',2,'Evocation','Control','STR','A legume seed',1,1,1,'1 minute','Action',NULL,NULL,NULL,'Self','60ft line',0,NULL,'A line of strong wind pushes creatures, disperses gas and extinguishes flames.'),
('Heat Metal',2,'Transmutation','Damage',NULL,'A piece of iron and a flame',1,1,1,'1 minute','Action',3,2,'Fire','60ft','Target',1,1,'Make a metal object glow red-hot, burning anything holding or wearing it.'),
('Hold Person',2,'Enchantment','Control','WIS','A small piece of straight iron',1,1,1,'1 minute','Action',NULL,NULL,NULL,'60ft','Target',1,NULL,'A humanoid that fails a Wisdom save is paralyzed, repeating the save each turn.'),
('Invisibility',2,'Illusion','Buff',NULL,'An eyelash in gum arabic',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',1,NULL,'A creature becomes invisible until it attacks or casts a spell.'),
('Knock',2,'Transmutation','Utility',NULL,NULL,1,0,0,'Instantaneous','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Open a locked, stuck or barred object, with a loud knock audible nearby.'),
('Lesser Restoration',2,'Abjuration','Healing',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'End one disease or one condition: blinded, deafened, paralyzed or poisoned.'),
('Levitate',2,'Transmutation','Utility','CON','A leather loop or bent gold wire',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'A creature or object rises up to 20 feet and hovers.'),
('Locate Animals or Plants',2,'Divination','Utility',NULL,'A bit of fur from a bloodhound',1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'Self','5 mile radius',0,NULL,'Learn the direction and distance of the nearest beast or plant of a kind you name.'),
('Locate Object',2,'Divination','Utility',NULL,'A forked twig',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'Self','1000ft radius',0,NULL,'Sense the direction to a specific object you know or a general kind of object.'),
('Magic Mouth',2,'Illusion','Utility',NULL,'A small bit of honeycomb',1,1,0,'Until dispelled','1 minute',NULL,NULL,NULL,'30ft','Target',0,NULL,'Implant a spoken message in an object that plays when a trigger occurs.'),
('Magic Weapon',2,'Transmutation','Buff',NULL,NULL,1,1,1,'1 hour','Bonus Action',NULL,NULL,NULL,'Touch','Target',1,NULL,'A nonmagical weapon becomes magical with a bonus to attack and damage rolls.'),
('Melfs Acid Arrow',2,'Evocation','Damage',NULL,'Powdered rhubarb leaf and an adders stomach',1,1,0,'Instantaneous','Action',1,4,'Acid','90ft','Target',1,1,'A ranged spell attack deals acid damage immediately and again at the end of the targets next turn.'),
('Mirror Image',2,'Illusion','Warding',NULL,NULL,1,1,0,'1 minute','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Three illusory duplicates make attacks against you likely to miss.'),
('Misty Step',2,'Conjuration','Utility',NULL,NULL,1,0,0,'Instantaneous','Bonus Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Teleport up to 30 feet to an unoccupied space you can see.'),
('Moonbeam',2,'Evocation','Damage','CON','Moonseeds and a piece of opalescent feldspar',1,1,1,'1 minute','Action',4,2,'Radiant','120ft','5ft radius cylinder',1,1,'A silvery beam damages creatures that enter or start their turn in it.'),
('Nystuls Magic Aura',2,'Illusion','Utility',NULL,'A small square of silk',1,1,0,'24 hours','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Alter how detection magic perceives a creature or object.'),
('Pass without Trace',2,'Abjuration','Buff',NULL,'Ashes from a burned leaf of mistletoe',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'You and nearby allies gain a large bonus to stealth and leave no tracks.'),
('Phantasmal Force',2,'Illusion','Damage','INT','A bit of fleece',1,1,1,'1 minute','Action',2,1,'Psychic','60ft','Target',0,NULL,'Implant an illusion in a creatures mind that it believes and that can hurt it.'),
('Prayer of Healing',2,'Evocation','Healing',NULL,NULL,1,0,0,'Instantaneous','10 minutes',3,2,NULL,'30ft','Target',1,1,'Up to six creatures regain hit points after a ten-minute prayer.'),
('Protection from Poison',2,'Abjuration','Warding',NULL,NULL,1,1,0,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Neutralize one poison and grant advantage on saves against poison and resistance to poison damage.'),
('Ray of Enfeeblement',2,'Necromancy','Debuff','CON',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'A ray halves the damage of the targets Strength-based weapon attacks.'),
('Rope Trick',2,'Transmutation','Utility',NULL,'Powdered corn extract and a parchment loop',1,1,0,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'A rope rises into an extradimensional space that can hold eight creatures.'),
('Scorching Ray',2,'Evocation','Damage',NULL,NULL,1,1,0,'Instantaneous','Action',2,2,'Fire','120ft','Target',1,2,'Create three rays of fire, each a ranged spell attack dealing fire damage.'),
('See Invisibility',2,'Divination','Utility',NULL,'A pinch of talc and powdered silver',1,1,0,'1 hour','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'See invisible creatures and objects and into the Ethereal Plane.'),
('Shatter',2,'Evocation','Damage','CON','A chip of mica',1,1,0,'Instantaneous','Action',3,3,'Thunder','60ft','10ft sphere',1,1,'A painfully loud noise damages creatures in the area and can break objects.'),
('Silence',2,'Illusion','Control',NULL,NULL,1,1,1,'10 minutes','Action',NULL,NULL,NULL,'120ft','20ft sphere',0,NULL,'No sound can be created in or pass through the area. creatures inside are deafened and immune to thunder.'),
('Spider Climb',2,'Transmutation','Buff',NULL,'A drop of bitumen and a spider',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The target can climb walls and ceilings with its hands free.'),
('Spike Growth',2,'Transmutation','Damage',NULL,'Seven thorns or seven small twigs',1,1,1,'10 minutes','Action',1,2,'Piercing','150ft','20ft radius',0,NULL,'Hidden spikes make the ground difficult terrain and damage creatures that move across it.'),
('Spiritual Weapon',2,'Evocation','Damage',NULL,NULL,1,1,0,'1 minute','Bonus Action',3,1,'Force','60ft','Target',1,1,'A floating spectral weapon attacks on your bonus action.'),
('Suggestion',2,'Enchantment','Control','WIS','A snakes tongue and honeycomb',1,0,1,'8 hours','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Suggest a reasonable course of action that a creature that fails its save pursues.'),
('Warding Bond',2,'Abjuration','Warding',NULL,'Two platinum rings worth 50 gp each',1,1,0,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Link yourself to a willing creature. it gains AC and resistance while you share its damage.'),
('Web',2,'Conjuration','Control','DEX','A bit of spiderweb',1,1,1,'1 hour','Action',NULL,NULL,NULL,'60ft','20ft cube',0,NULL,'Sticky webs fill the area, making it difficult terrain and restraining creatures that fail a save.'),
('Zone of Truth',2,'Enchantment','Control','CHA',NULL,1,1,0,'10 minutes','Action',NULL,NULL,NULL,'60ft','15ft radius',0,NULL,'Creatures that fail a save cannot speak a deliberate lie in the area.'),
('Cloud of Daggers',2,'Conjuration','Damage',NULL,'A sliver of glass',1,1,1,'1 minute','Action',1,4,'Slashing','60ft','5ft cube',1,2,'Spinning daggers fill a cube and damage creatures that enter or start their turn there.');

-- ----- 3RD LEVEL -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Animate Dead',3,'Necromancy','Utility',NULL,'A drop of blood, flesh and a pinch of bone dust',1,1,0,'Instantaneous','1 minute',NULL,NULL,NULL,'10ft','Target',1,NULL,'Raise a skeleton or zombie from bones or a corpse to serve you.'),
('Aura of Vitality',3,'Evocation','Healing',NULL,NULL,1,0,1,'1 minute','Action',2,2,NULL,'Self','30ft radius',0,NULL,'Healing energy radiates from you. each turn a bonus action heals a creature in the aura.'),
('Beacon of Hope',3,'Abjuration','Buff',NULL,NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Chosen creatures have advantage on Wisdom and death saves and regain maximum hit points from healing.'),
('Bestow Curse',3,'Necromancy','Debuff','WIS',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'Touch','Target',1,NULL,'Curse a creature with a penalty of your choice if it fails its save.'),
('Blinding Smite',3,'Evocation','Damage','CON',NULL,1,0,1,'1 minute','Bonus Action',3,3,'Radiant','Self',NULL,0,NULL,'Your next melee weapon hit deals extra radiant damage and may blind the target.'),
('Blink',3,'Transmutation','Utility',NULL,NULL,1,1,0,'1 minute','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Each turn you may vanish to the Ethereal Plane and return.'),
('Call Lightning',3,'Conjuration','Damage','DEX',NULL,1,1,1,'10 minutes','Action',4,3,'Lightning','120ft','Target',1,1,'A storm cloud lets you call down bolts of lightning each turn.'),
('Clairvoyance',3,'Divination','Utility',NULL,'A 100 gp focus: horn (hearing) or glass eye',1,1,1,'10 minutes','10 minutes',NULL,NULL,NULL,'1 mile','Target',0,NULL,'Create an invisible sensor that lets you see or hear a familiar location.'),
('Conjure Animals',3,'Conjuration','Utility',NULL,NULL,1,1,1,'1 hour','Action',NULL,NULL,NULL,'60ft','Target',1,NULL,'Summon fey spirits that take the form of beasts and fight for you.'),
('Conjure Barrage',3,'Conjuration','Damage','DEX','One piece of ammunition or a thrown weapon',1,1,0,'Instantaneous','Action',3,3,'Weapon','Self','60ft cone',0,NULL,'A volley of duplicate weapons damages creatures in a cone.'),
('Counterspell',3,'Abjuration','Warding',NULL,NULL,0,1,0,'Instantaneous','Reaction',NULL,NULL,NULL,'60ft','Target',1,NULL,'Interrupt a creature casting a spell, stopping it or forcing a check.'),
('Create Food and Water',3,'Conjuration','Utility',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Create enough food and water to feed fifteen humanoids or five steeds.'),
('Crusaders Mantle',3,'Evocation','Buff',NULL,NULL,1,0,1,'1 minute','Action',1,1,'Radiant','Self','30ft radius',0,NULL,'Allies in the aura deal extra radiant damage with weapon attacks.'),
('Daylight',3,'Evocation','Utility',NULL,NULL,1,1,0,'1 hour','Action',NULL,NULL,NULL,'60ft','60ft sphere',0,NULL,'A sphere of bright light fills the area and dispels lower-level darkness.'),
('Dispel Magic',3,'Abjuration','Utility',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'120ft','Target',1,NULL,'End a spell of 3rd level or lower on a target, or make an ability check against higher-level spells.'),
('Elemental Weapon',3,'Transmutation','Buff',NULL,NULL,1,1,1,'1 hour','Action',1,1,'Various','Touch','Target',1,NULL,'A nonmagical weapon becomes magical and deals extra elemental damage.'),
('Fear',3,'Illusion','Control','WIS','A white feather or a hens heart',1,1,1,'1 minute','Action',NULL,NULL,NULL,'Self','30ft cone',0,NULL,'Creatures in a cone drop what they are holding and flee in terror on a failed save.'),
('Feign Death',3,'Necromancy','Utility',NULL,'A pinch of graveyard dirt',1,1,0,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'A willing creature appears dead while gaining resistance to most damage.'),
('Fly',3,'Transmutation','Buff',NULL,'A wing feather from a bird',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'Touch','Target',1,NULL,'A willing creature gains a flying speed of 60 feet.'),
('Gaseous Form',3,'Transmutation','Utility',NULL,'A pinch of gauze and a wisp of smoke',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'A willing creature becomes a misty cloud that can fly slowly and squeeze through cracks.'),
('Glyph of Warding',3,'Abjuration','Warding','DEX','Incense and diamond dust worth 200 gp',1,1,0,'Until dispelled','1 hour',3,5,'Various','Touch','20ft radius',1,1,'Inscribe a glyph that triggers an explosive rune or a stored spell.'),
('Haste',3,'Transmutation','Buff',NULL,'A shaving of licorice root',1,1,1,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'A willing creature gains double speed, +2 AC, advantage on Dexterity saves and an extra action.'),
('Hypnotic Pattern',3,'Illusion','Control','WIS','A glowing stick of incense',0,1,1,'1 minute','Action',NULL,NULL,NULL,'120ft','30ft cube',0,NULL,'A twisting pattern charms and incapacitates creatures that fail a Wisdom save.'),
('Leomunds Tiny Hut',3,'Evocation','Warding',NULL,'A small crystal bead',1,1,0,'8 hours','1 minute',NULL,NULL,NULL,'Self','10ft radius',0,NULL,'A dome of force shelters you and your allies from weather and creatures.'),
('Lightning Arrow',3,'Transmutation','Damage','DEX',NULL,1,0,1,'1 minute','Bonus Action',3,4,'Lightning','Self',NULL,1,1,'Your next ranged weapon attack becomes a bolt of lightning that damages the target and others nearby.'),
('Lightning Bolt',3,'Evocation','Damage','DEX','Fur and a glass rod',1,1,0,'Instantaneous','Action',2,8,'Lightning','Self','100ft line',1,1,'A stroke of lightning blasts out in a line, dealing lightning damage on a failed save.'),
('Magic Circle',3,'Abjuration','Warding',NULL,'Holy water or silver/iron powder, 100 gp',1,1,0,'1 hour','1 minute',NULL,NULL,NULL,'10ft','10ft radius cylinder',1,NULL,'A circle protects against a chosen type of creature, such as celestials or fiends.'),
('Major Image',3,'Illusion','Utility',NULL,'A bit of fleece',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'120ft','20ft cube',1,NULL,'Create an image with sound, smell and temperature that you can move.'),
('Mass Healing Word',3,'Evocation','Healing',NULL,NULL,1,0,0,'Instantaneous','Bonus Action',1,1,NULL,'60ft','Target',1,1,'Up to six creatures regain hit points equal to a d4 roll plus your spellcasting modifier.'),
('Meld into Stone',3,'Transmutation','Utility',NULL,NULL,1,1,0,'8 hours','1 minute',NULL,NULL,NULL,'Touch','Target',0,NULL,'Merge into a stone object or surface large enough to hold you.'),
('Nondetection',3,'Abjuration','Warding',NULL,'A pinch of diamond dust worth 25 gp',1,1,0,'8 hours','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Hide a creature or object from divination magic and scrying sensors.'),
('Phantom Steed',3,'Illusion','Utility',NULL,NULL,1,1,0,'1 hour','1 minute',NULL,NULL,NULL,'30ft','Target',0,NULL,'A quasi-real horse-like creature appears and serves as a swift mount.'),
('Plant Growth',3,'Transmutation','Utility',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'150ft','100ft radius',0,NULL,'Plants nearby become overgrown and hard to move through, or grow richer for a year.'),
('Protection from Energy',3,'Abjuration','Buff',NULL,NULL,1,1,1,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The target gains resistance to acid, cold, fire, lightning or thunder damage.'),
('Remove Curse',3,'Abjuration','Utility',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'End all curses affecting a creature or object.'),
('Revivify',3,'Necromancy','Healing',NULL,'Diamonds worth at least 300 gp',1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Return a creature that died within the last minute to life with 1 hit point.'),
('Sending',3,'Evocation','Utility',NULL,'A short piece of fine copper wire',1,1,0,'1 round','Action',NULL,NULL,NULL,'Unlimited','Target',0,NULL,'Send a 25-word message to a creature you know. it can reply the same way.'),
('Sleet Storm',3,'Conjuration','Control','DEX','A pinch of dust and a few drops of water',1,1,1,'1 minute','Action',NULL,NULL,NULL,'150ft','40ft radius cylinder',0,NULL,'Freezing rain and sleet make the area difficult terrain and can knock creatures prone.'),
('Slow',3,'Transmutation','Debuff','WIS','A drop of molasses',1,1,1,'1 minute','Action',NULL,NULL,NULL,'120ft','40ft cube',0,NULL,'Up to six creatures that fail a Wisdom save have reduced speed, AC, saves and actions.'),
('Speak with Dead',3,'Necromancy','Utility',NULL,'Burning incense',1,1,0,'10 minutes','Action',NULL,NULL,NULL,'10ft','Target',0,NULL,'Grant a corpse the semblance of life so it can answer up to five questions.'),
('Speak with Plants',3,'Transmutation','Utility',NULL,NULL,1,1,0,'10 minutes','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'Communicate with plants and ask them to move or share information.'),
('Stinking Cloud',3,'Conjuration','Control','CON','A rotten egg or skunk cabbage leaves',1,1,1,'1 minute','Action',NULL,NULL,NULL,'90ft','20ft sphere',0,NULL,'A sphere of nauseating gas makes creatures lose their action if they fail a Constitution save.'),
('Tongues',3,'Divination','Utility',NULL,'A small clay model of a ziggurat',1,0,0,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The target understands any spoken language and is understood by any creature that knows a language.'),
('Vampiric Touch',3,'Necromancy','Damage',NULL,NULL,1,1,1,'1 minute','Action',2,3,'Necrotic','Self','Target',1,1,'A melee spell attack drains life, and you regain half the damage dealt as hit points.'),
('Water Breathing',3,'Transmutation','Utility',NULL,'A short reed or piece of straw',1,1,0,'24 hours','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Up to ten creatures can breathe underwater.'),
('Water Walk',3,'Transmutation','Utility',NULL,'A piece of cork',1,1,0,'1 hour','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Up to ten creatures can walk across liquid surfaces as if they were solid ground.'),
('Wind Wall',3,'Evocation','Control','STR','A tiny fan and a feather of exotic origin',1,1,1,'1 minute','Action',3,3,'Bludgeoning','120ft','50ft wall',0,NULL,'A wall of strong wind damages creatures and blocks arrows, gas and flying creatures.');

-- ----- 4TH LEVEL -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Arcane Eye',4,'Divination','Utility',NULL,'A bit of bat fur',1,1,1,'1 hour','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Create an invisible floating eye that you can see through and move.'),
('Aura of Life',4,'Abjuration','Warding',NULL,NULL,1,0,1,'10 minutes','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'Allies in the aura resist necrotic damage and cannot have their hit point maximum reduced.'),
('Aura of Purity',4,'Abjuration','Warding',NULL,NULL,1,0,1,'10 minutes','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'Allies in the aura resist poison damage and gain protection from several conditions.'),
('Banishment',4,'Abjuration','Control','CHA','An item distasteful to the target',1,1,1,'1 minute','Action',NULL,NULL,NULL,'60ft','Target',1,NULL,'Send a creature to another plane. it returns if the spell ends or is a native elsewhere.'),
('Blight',4,'Necromancy','Damage','CON',NULL,1,1,0,'Instantaneous','Action',3,8,'Necrotic','30ft','Target',1,1,'Necromantic energy withers a creature or plant, dealing heavy necrotic damage.'),
('Compulsion',4,'Enchantment','Control','WIS',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Creatures that fail a save must move in a direction you choose each turn.'),
('Confusion',4,'Enchantment','Control','WIS','Three nut shells',1,1,1,'1 minute','Action',NULL,NULL,NULL,'90ft','10ft radius',1,NULL,'Creatures that fail a save act randomly each turn.'),
('Conjure Minor Elementals',4,'Conjuration','Utility',NULL,NULL,1,1,1,'1 hour','1 minute',NULL,NULL,NULL,'90ft','Target',1,NULL,'Summon elementals of a low challenge rating to fight for you.'),
('Conjure Woodland Beings',4,'Conjuration','Utility',NULL,'One holly berry per creature summoned',1,1,1,'1 hour','Action',NULL,NULL,NULL,'60ft','Target',1,NULL,'Summon fey creatures that serve as your allies.'),
('Control Water',4,'Transmutation','Control','STR','A drop of water and a pinch of dust',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'300ft','100ft square',0,NULL,'Flood, part, redirect or whirl water in the area.'),
('Death Ward',4,'Abjuration','Warding',NULL,NULL,1,1,0,'8 hours','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The next time the creature would drop to 0 hit points or be killed outright, it drops to 1 instead.'),
('Dimension Door',4,'Conjuration','Utility',NULL,NULL,1,0,0,'Instantaneous','Action',NULL,NULL,NULL,'500ft','Target',0,NULL,'Teleport yourself, and optionally one willing creature, to a place within range.'),
('Divination',4,'Divination','Utility',NULL,'Incense and a sacrificial offering',1,1,0,'Instantaneous','1 minute',NULL,NULL,NULL,'Self',NULL,0,NULL,'Receive a truthful reply from your deity about events up to seven days away.'),
('Dominate Beast',4,'Enchantment','Control','WIS',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'60ft','Target',1,NULL,'Take control of a beast that fails a Wisdom save.'),
('Evards Black Tentacles',4,'Conjuration','Damage','DEX','A piece of giant octopus or squid tentacle',1,1,1,'1 minute','Action',2,3,'Bludgeoning','90ft','20ft square',0,NULL,'Squirming tentacles damage and restrain creatures in the area.'),
('Fabricate',4,'Transmutation','Utility',NULL,NULL,1,1,0,'Instantaneous','10 minutes',NULL,NULL,NULL,'120ft','Target',0,NULL,'Convert raw materials into products of the same material.'),
('Fire Shield',4,'Evocation','Warding',NULL,'A bit of phosphorus or a firefly',1,1,0,'10 minutes','Action',3,2,'Fire','Self',NULL,0,NULL,'Flames shed light and grant resistance to one damage type while damaging melee attackers.'),
('Freedom of Movement',4,'Abjuration','Buff',NULL,'A leather strap bound around the arm',1,1,0,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The target moves freely despite difficult terrain, restraints and paralysis-like effects.'),
('Giant Insect',4,'Transmutation','Utility',NULL,NULL,1,1,1,'10 minutes','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Transform up to ten centipedes, three spiders, a wasp or a scorpion into giant versions.'),
('Greater Invisibility',4,'Illusion','Buff',NULL,NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'A creature is invisible even while attacking or casting.'),
('Guardian of Faith',4,'Conjuration','Damage','DEX',NULL,1,0,0,'8 hours','Action',NULL,NULL,'Radiant','30ft','Target',0,NULL,'A spectral guardian deals 20 radiant damage to enemies that come near it, up to 60 total.'),
('Hallucinatory Terrain',4,'Illusion','Utility',NULL,'A stone, a twig and a bit of green plant',1,1,0,'24 hours','10 minutes',NULL,NULL,NULL,'300ft','150ft cube',0,NULL,'Make natural terrain look, sound and smell like another kind of terrain.'),
('Ice Storm',4,'Evocation','Damage','DEX','A pinch of dust and a few drops of water',1,1,0,'Instantaneous','Action',3,2,'Bludgeoning','300ft','20ft radius cylinder',1,1,'Hail pounds the area, dealing bludgeoning and cold damage and making the ground difficult terrain.'),
('Leomunds Secret Chest',4,'Conjuration','Utility',NULL,'A 5,000 gp chest and a miniature replica',1,1,0,'Until dispelled','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Hide a chest on the Ethereal Plane and call it back with the replica.'),
('Locate Creature',4,'Divination','Utility',NULL,'A bit of fur from a bloodhound',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Self','1000ft radius',0,NULL,'Sense the direction to a familiar creature or a specific kind of creature.'),
('Mordenkainens Faithful Hound',4,'Conjuration','Damage',NULL,'A tiny silver whistle, a bit of bone and thread',1,1,0,'8 hours','Action',3,4,'Piercing','30ft','Target',0,NULL,'A phantom watchdog guards an area, warning you and biting intruders.'),
('Mordenkainens Private Sanctum',4,'Abjuration','Warding',NULL,'Lead sheet, opaque glass, cotton and chalk',1,1,0,'24 hours','10 minutes',NULL,NULL,NULL,'120ft','100ft cube',1,NULL,'Seal an area against sight, sound, scrying and teleportation.'),
('Otilukes Resilient Sphere',4,'Evocation','Warding','DEX','Glass and gum arabic hemispheres',1,1,1,'1 minute','Action',NULL,NULL,NULL,'30ft','10ft sphere',0,NULL,'Enclose a creature or object in a shimmering sphere of force.'),
('Phantasmal Killer',4,'Illusion','Damage','WIS',NULL,1,1,1,'1 minute','Action',4,4,'Psychic','120ft','Target',1,1,'A creatures worst fear takes shape, frightening it and hurting it each turn.'),
('Polymorph',4,'Transmutation','Control','WIS','A caterpillar cocoon',1,1,1,'1 hour','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Transform a creature into a new beast form.'),
('Stone Shape',4,'Transmutation','Utility',NULL,'Soft clay to be shaped like the stone',1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Reshape a stone object of medium size or smaller into any form you like.'),
('Stoneskin',4,'Abjuration','Buff',NULL,'Diamond dust worth 100 gp',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The target gains resistance to nonmagical bludgeoning, piercing and slashing damage.'),
('Wall of Fire',4,'Evocation','Damage','DEX','A small piece of phosphorus',1,1,1,'1 minute','Action',3,5,'Fire','120ft','60ft wall',1,1,'A wall of fire damages creatures near it and anything that passes through.'),
('Staggering Smite',4,'Evocation','Damage','WIS',NULL,1,0,1,'1 minute','Bonus Action',2,4,'Psychic','Self',NULL,0,NULL,'Your next weapon hit deals extra psychic damage and may leave the target disoriented.');

-- ----- 5TH LEVEL -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Animate Objects',5,'Transmutation','Utility',NULL,NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'120ft','Target',1,NULL,'Bring up to ten nonmagical objects to life to fight for you.'),
('Antilife Shell',5,'Abjuration','Warding',NULL,NULL,1,1,1,'1 hour','Action',NULL,NULL,NULL,'Self','10ft radius',0,NULL,'A barrier keeps most living creatures from passing through it.'),
('Awaken',5,'Transmutation','Utility',NULL,'An agate worth 1,000 gp',1,1,0,'Instantaneous','8 hours',NULL,NULL,NULL,'Touch','Target',0,NULL,'Grant a beast or plant human-level intelligence and speech.'),
('Banishing Smite',5,'Abjuration','Damage',NULL,NULL,1,0,1,'1 minute','Bonus Action',4,5,'Force','Self',NULL,0,NULL,'Your next weapon hit deals extra force damage and can banish a weakened target.'),
('Bigbys Hand',5,'Evocation','Damage',NULL,'An eggshell and a snakeskin glove',1,1,1,'1 minute','Action',3,4,'Force','120ft','Target',1,2,'A Large hand of force that can strike, grapple, push or shield you.'),
('Circle of Power',5,'Abjuration','Buff',NULL,NULL,1,0,1,'10 minutes','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'Allies in the aura gain advantage on saves against spells and magical effects.'),
('Cloudkill',5,'Conjuration','Damage','CON',NULL,1,1,1,'10 minutes','Action',3,5,'Poison','120ft','20ft sphere',1,1,'A sphere of poisonous fog moves away from you and damages those inside.'),
('Commune',5,'Divination','Utility',NULL,'Incense and a vial of holy or unholy water',1,1,0,'1 minute','10 minutes',NULL,NULL,NULL,'Self',NULL,0,NULL,'Ask your deity up to three yes-or-no questions.'),
('Commune with Nature',5,'Divination','Utility',NULL,NULL,1,1,0,'Instantaneous','1 minute',NULL,NULL,NULL,'Self',NULL,0,NULL,'Learn up to three facts about the surrounding terrain within a few miles.'),
('Cone of Cold',5,'Evocation','Damage','CON','A small crystal or glass cone',1,1,0,'Instantaneous','Action',3,8,'Cold','Self','60ft cone',1,1,'A blast of cold air damages creatures in a cone and freezes those it kills.'),
('Conjure Elemental',5,'Conjuration','Utility',NULL,'Material appropriate to the element',1,1,1,'1 hour','1 minute',NULL,NULL,NULL,'90ft','Target',1,NULL,'Summon an elemental servant that can turn on you if you lose concentration.'),
('Conjure Volley',5,'Conjuration','Damage','DEX','One piece of ammunition or a thrown weapon',1,1,0,'Instantaneous','Action',3,8,'Weapon','150ft','40ft radius',0,NULL,'Duplicate your ammunition or thrown weapon to rain down on an area.'),
('Contact Other Plane',5,'Divination','Utility','INT',NULL,1,0,0,'1 minute','1 minute',NULL,NULL,NULL,'Self',NULL,0,NULL,'Question an otherworldly entity, risking madness if you fail an Intelligence save.'),
('Contagion',5,'Necromancy','Debuff','CON',NULL,1,1,0,'7 days','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Inflict a disease on a creature you hit with a melee spell attack.'),
('Creation',5,'Illusion','Utility',NULL,'A tiny piece of matter of the same type',1,1,0,'Special','1 minute',NULL,NULL,NULL,'30ft','Target',1,NULL,'Pull wisps of shadow-stuff to create a nonliving object of vegetable or mineral matter.'),
('Destructive Wave',5,'Evocation','Damage','CON',NULL,1,0,0,'Instantaneous','Action',2,5,'Thunder','Self','30ft radius',0,NULL,'A wave of divine energy deals thunder and radiant or necrotic damage and knocks creatures prone.'),
('Dispel Evil and Good',5,'Abjuration','Warding',NULL,'Holy water or powdered silver and iron',1,1,1,'1 minute','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Shimmering energy protects you from specific creature types and can break enchantments.'),
('Dominate Person',5,'Enchantment','Control','WIS',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'60ft','Target',1,NULL,'Take control of a humanoid that fails a Wisdom save.'),
('Dream',5,'Illusion','Utility','WIS','A handful of sand, ink and a writing quill',1,1,0,'8 hours','1 minute',NULL,NULL,NULL,'Special','Target',0,NULL,'Shape a sleeping creatures dreams or send it a nightmare.'),
('Flame Strike',5,'Evocation','Damage','DEX','A pinch of sulfur',1,1,0,'Instantaneous','Action',2,4,'Fire','60ft','10ft radius cylinder',1,1,'A column of divine fire deals fire and radiant damage.'),
('Geas',5,'Enchantment','Control','WIS',NULL,1,0,0,'30 days','1 minute',NULL,NULL,NULL,'60ft','Target',1,NULL,'Command a creature to carry out a service or refrain from an action.'),
('Greater Restoration',5,'Abjuration','Healing',NULL,'Diamond dust worth 100 gp',1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'End one effect such as a curse, a petrification, exhaustion levels or reduced maximums.'),
('Hallow',5,'Evocation','Warding',NULL,'Herbs, oils and incense worth 1,000 gp',1,1,0,'Until dispelled','24 hours',NULL,NULL,NULL,'Touch','60ft radius',0,NULL,'Consecrate an area to ward against certain creatures and apply a chosen effect.'),
('Hold Monster',5,'Enchantment','Control','WIS','A small piece of straight iron',1,1,1,'1 minute','Action',NULL,NULL,NULL,'90ft','Target',1,NULL,'Paralyze a creature of any type that fails a Wisdom save.'),
('Insect Plague',5,'Conjuration','Damage','CON','Sugar, grain kernels and a smear of fat',1,1,1,'10 minutes','Action',4,4,'Piercing','300ft','20ft radius',1,1,'A swarm of locusts fills the area, heavily obscuring it and biting creatures within.'),
('Legend Lore',5,'Divination','Utility',NULL,'Incense (250 gp), four ivory strips (50 gp each)',1,1,0,'Instantaneous','10 minutes',NULL,NULL,NULL,'Self',NULL,0,NULL,'Learn significant lore about a person, place or object you name.'),
('Mass Cure Wounds',5,'Conjuration','Healing',NULL,NULL,1,1,0,'Instantaneous','Action',3,3,NULL,'60ft','30ft radius',1,1,'A wave of healing energy restores hit points to up to six creatures.'),
('Mislead',5,'Illusion','Utility',NULL,NULL,0,1,1,'1 hour','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'You become invisible while an illusory double stands in your place.'),
('Modify Memory',5,'Enchantment','Control','WIS',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',1,NULL,'Reshape a creatures memories of an event.'),
('Passwall',5,'Transmutation','Utility',NULL,'A pinch of sesame seeds',1,1,0,'1 hour','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Create a passage through a wooden, plaster or stone surface.'),
('Planar Binding',5,'Abjuration','Control','CHA','A jewel worth 1,000 gp',1,1,0,'24 hours','1 hour',NULL,NULL,NULL,'60ft','Target',1,NULL,'Bind a celestial, elemental, fey or fiend to your service.'),
('Raise Dead',5,'Necromancy','Healing',NULL,'A diamond worth at least 500 gp',1,1,0,'Instantaneous','1 hour',NULL,NULL,NULL,'Touch','Target',0,NULL,'Return a creature that died within ten days to life, with penalties.'),
('Rarys Telepathic Bond',5,'Divination','Utility',NULL,'Pieces of eggshell from two different creatures',1,1,0,'1 hour','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Link up to eight willing creatures so they can communicate telepathically.'),
('Reincarnate',5,'Transmutation','Healing',NULL,'Rare oils and unguents worth 1,000 gp',1,1,0,'Instantaneous','1 hour',NULL,NULL,NULL,'Touch','Target',0,NULL,'Return a dead creature to life in a new body.'),
('Scrying',5,'Divination','Utility','WIS','A focus worth at least 1,000 gp',1,1,1,'10 minutes','10 minutes',NULL,NULL,NULL,'Self',NULL,0,NULL,'See and hear a particular creature on the same plane.'),
('Seeming',5,'Illusion','Utility','CHA',NULL,1,1,0,'8 hours','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Change the appearance of any number of creatures you can see.'),
('Swift Quiver',5,'Transmutation','Buff',NULL,'A quiver worth at least 1 gp',1,1,1,'1 minute','Bonus Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'A quiver replenishes itself and lets you make two extra attacks each turn.'),
('Telekinesis',5,'Transmutation','Control','STR',NULL,1,1,1,'10 minutes','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Move a creature or object with your mind.'),
('Teleportation Circle',5,'Conjuration','Utility',NULL,'Rare chalks and inks worth 50 gp',1,0,0,'1 round','1 minute',NULL,NULL,NULL,'10ft','Target',0,NULL,'Draw a circle that links to a permanent teleportation circle elsewhere.'),
('Tree Stride',5,'Conjuration','Utility',NULL,NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Step into one tree and emerge from another of the same kind within range.'),
('Wall of Force',5,'Evocation','Warding',NULL,'A pinch of powder from a clear gemstone',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'120ft','Wall',0,NULL,'An invisible wall of force blocks movement and most effects.'),
('Wall of Stone',5,'Evocation','Warding','DEX','A small block of granite',1,1,1,'10 minutes','Action',NULL,NULL,NULL,'120ft','Wall',0,NULL,'A wall of solid stone springs up and can be shaped to block or trap.');

-- ----- 6TH LEVEL -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Arcane Gate',6,'Conjuration','Utility',NULL,NULL,1,1,1,'10 minutes','Action',NULL,NULL,NULL,'500ft','Target',0,NULL,'Create a linked pair of portals that creatures can step through.'),
('Blade Barrier',6,'Evocation','Damage','DEX',NULL,1,1,1,'10 minutes','Action',4,6,'Slashing','90ft','Wall',0,NULL,'A wall of whirling blades damages creatures that enter or end their turn in it.'),
('Chain Lightning',6,'Evocation','Damage','DEX','Fur, a crystal rod and three silver pins',1,1,0,'Instantaneous','Action',3,10,'Lightning','150ft','Target',1,1,'A bolt of lightning leaps from a target to several others nearby.'),
('Circle of Death',6,'Necromancy','Damage','CON','Powder of a crushed black pearl worth 500 gp',1,1,0,'Instantaneous','Action',2,8,'Necrotic','150ft','60ft radius',1,2,'A sphere of negative energy deals necrotic damage in the area.'),
('Conjure Fey',6,'Conjuration','Utility',NULL,NULL,1,1,1,'1 hour','1 minute',NULL,NULL,NULL,'90ft','Target',1,NULL,'Summon a fey creature that serves you but may turn on you if you lose concentration.'),
('Contingency',6,'Evocation','Utility',NULL,'A statuette of yourself worth 1,500 gp',1,1,0,'10 days','10 minutes',NULL,NULL,NULL,'Self',NULL,0,NULL,'Prepare a spell to trigger automatically on a condition you set.'),
('Create Undead',6,'Necromancy','Utility',NULL,'A black onyx stone worth 150 gp per corpse',1,1,0,'Instantaneous','1 minute',NULL,NULL,NULL,'10ft','Target',1,NULL,'Raise ghouls, wights or other undead from corpses.'),
('Disintegrate',6,'Transmutation','Damage','DEX','A lodestone and a pinch of dust',1,1,0,'Instantaneous','Action',2,10,'Force','60ft','Target',1,3,'A green ray deals massive force damage and can turn a creature or object to dust.'),
('Drawmijs Instant Summons',6,'Conjuration','Utility',NULL,'A sapphire worth 1,000 gp',1,1,0,'Until dispelled','1 minute',NULL,NULL,NULL,'Touch','Target',0,NULL,'Mark an object so you can call it to your hand later.'),
('Eyebite',6,'Necromancy','Debuff','WIS',NULL,1,1,1,'1 minute','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Your eyes become an eerie gaze that can sicken, put to sleep or frighten a target each turn.'),
('Find the Path',6,'Divination','Utility',NULL,'Divination tools and an object from the goal',1,1,1,'1 day','1 minute',NULL,NULL,NULL,'Self',NULL,0,NULL,'Learn the shortest, most direct physical route to a known location.'),
('Flesh to Stone',6,'Transmutation','Control','CON','A pinch of lime, water and earth',1,1,1,'1 minute','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'A creature begins turning to stone and can be petrified if concentration holds.'),
('Forbiddance',6,'Abjuration','Warding','CHA','Holy water, incense and ruby dust worth 1,000 gp',1,1,0,'1 day','10 minutes',4,5,'Radiant','Touch','40,000 sq ft',0,NULL,'Ward an area against teleportation and chosen creature types, damaging those who enter.'),
('Globe of Invulnerability',6,'Abjuration','Warding',NULL,'A glass or crystal bead',1,1,1,'1 minute','Action',NULL,NULL,NULL,'Self','10ft radius',1,NULL,'A barrier blocks spells of 5th level or lower from affecting anything inside.'),
('Guards and Wards',6,'Abjuration','Warding',NULL,'Incense, sulfur, oil, string and silver rods',1,1,0,'24 hours','10 minutes',NULL,NULL,NULL,'Touch','2,500 sq ft',0,NULL,'Fill a structure with layered protective effects such as fog, locked doors and webs.'),
('Harm',6,'Necromancy','Damage','CON',NULL,1,1,0,'Instantaneous','Action',2,14,'Necrotic','60ft','Target',0,NULL,'Unleash a virulent disease that deals heavy necrotic damage and reduces hit point maximum.'),
('Heal',6,'Evocation','Healing',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'60ft','Target',1,10,'Restore 70 hit points and end blindness, deafness and disease.'),
('Heroes'' Feast',6,'Conjuration','Buff',NULL,'A gem-encrusted bowl worth 1,000 gp',1,1,0,'Instantaneous','10 minutes',NULL,NULL,NULL,'30ft','Target',0,NULL,'A feast cures disease and poison and grants lasting benefits to up to twelve creatures.'),
('Magic Jar',6,'Necromancy','Utility','CHA','A gem, crystal or reliquary worth 500 gp',1,1,0,'Until dispelled','1 minute',NULL,NULL,NULL,'Self',NULL,0,NULL,'Your soul enters an object and can possess a nearby creature.'),
('Mass Suggestion',6,'Enchantment','Control','WIS','A snakes tongue and a bit of honeycomb',1,0,0,'24 hours','Action',NULL,NULL,NULL,'60ft','Target',1,NULL,'Suggest a course of action to up to twelve creatures.'),
('Move Earth',6,'Transmutation','Utility',NULL,'An iron blade and a small bag of mixed soils',1,1,1,'2 hours','Action',NULL,NULL,NULL,'120ft','40ft square',0,NULL,'Reshape dirt, sand or clay in an area over time.'),
('Otilukes Freezing Sphere',6,'Evocation','Damage','CON','A small crystal sphere',1,1,0,'Instantaneous','Action',2,10,'Cold','300ft','60ft radius',1,1,'A frigid globe explodes, freezing water and dealing cold damage.'),
('Ottos Irresistible Dance',6,'Enchantment','Control',NULL,NULL,1,0,1,'1 minute','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'A creature is compelled to dance and is vulnerable while doing so.'),
('Planar Ally',6,'Conjuration','Utility',NULL,NULL,1,1,0,'Instantaneous','10 minutes',NULL,NULL,NULL,'60ft','Target',0,NULL,'Entreat an otherworldly being to aid you in exchange for a service.'),
('Programmed Illusion',6,'Illusion','Utility',NULL,'A bit of fleece and jade dust worth 25 gp',1,1,0,'Until dispelled','Action',NULL,NULL,NULL,'120ft','30ft cube',0,NULL,'Create an illusion that activates on a trigger you set.'),
('Sunbeam',6,'Evocation','Damage','CON','A magnifying glass',1,1,1,'1 minute','Action',3,6,'Radiant','Self','60ft line',0,NULL,'A beam of brilliant light damages and blinds creatures in a line.'),
('Transport via Plants',6,'Conjuration','Utility',NULL,NULL,1,1,0,'1 round','Action',NULL,NULL,NULL,'10ft','Target',0,NULL,'Step into one large plant and emerge from another of the same kind on the same plane.'),
('True Seeing',6,'Divination','Buff',NULL,'Ointment worth 25 gp (mushroom, saffron, fat)',1,1,0,'1 hour','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The target sees through illusions and into the Ethereal Plane.'),
('Wall of Ice',6,'Evocation','Damage','DEX','A small piece of quartz',1,1,1,'10 minutes','Action',2,10,'Cold','120ft','Wall',1,2,'Create a wall of ice that damages creatures when it forms and can freeze them.'),
('Wall of Thorns',6,'Conjuration','Damage','DEX','A handful of thorns',1,1,1,'10 minutes','Action',3,7,'Piercing','120ft','Wall',1,1,'A wall of thorny brush blocks sight and damages creatures that try to pass through.'),
('Word of Recall',6,'Conjuration','Utility',NULL,NULL,1,0,0,'Instantaneous','Action',NULL,NULL,NULL,'5ft','Target',0,NULL,'You and nearby allies teleport to a previously designated sanctuary.'),
('Wind Walk',6,'Transmutation','Utility',NULL,'Fire and holy water',1,1,0,'8 hours','1 minute',NULL,NULL,NULL,'30ft','Target',0,NULL,'You and up to ten willing creatures become misty clouds that move quickly through the air.');

-- ----- 7TH LEVEL -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Conjure Celestial',7,'Conjuration','Utility',NULL,NULL,1,1,1,'1 hour','1 minute',NULL,NULL,NULL,'90ft','Target',1,NULL,'Summon a celestial of challenge rating 4 or lower to aid you.'),
('Delayed Blast Fireball',7,'Evocation','Damage','DEX','A tiny ball of bat guano and sulfur',1,1,1,'1 minute','Action',2,12,'Fire','150ft','20ft radius',1,1,'A glowing bead grows more powerful each turn before exploding in fire.'),
('Divine Word',7,'Evocation','Debuff','CHA',NULL,1,0,0,'Instantaneous','Bonus Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Utter a word of power that deafens, blinds, stuns or kills creatures based on their hit points.'),
('Etherealness',7,'Transmutation','Utility',NULL,NULL,1,1,0,'8 hours','Action',NULL,NULL,NULL,'Self',NULL,1,NULL,'Step into the Ethereal Plane, where you can move through objects and creatures.'),
('Finger of Death',7,'Necromancy','Damage','CON',NULL,1,1,0,'Instantaneous','Action',3,7,'Necrotic','60ft','Target',0,NULL,'Deal severe necrotic damage, raising a slain humanoid as a zombie.'),
('Fire Storm',7,'Evocation','Damage','DEX',NULL,1,1,0,'Instantaneous','Action',4,7,'Fire','150ft','Cubes',0,NULL,'Sheets of roaring flame fill ten adjoining cubes with fire.'),
('Forcecage',7,'Evocation','Warding','CHA','Ruby dust worth 1,500 gp',1,1,0,'1 hour','Action',NULL,NULL,NULL,'100ft','20ft cube',0,NULL,'Create an immobile prison of force, either a box or a cage.'),
('Mirage Arcane',7,'Illusion','Utility',NULL,NULL,1,1,0,'10 days','10 minutes',NULL,NULL,NULL,'Sight','1 mile square',0,NULL,'Make terrain look, sound and feel like some other type of terrain.'),
('Mordenkainens Magnificent Mansion',7,'Conjuration','Utility',NULL,'Ivory portal, marble piece and silver spoon',1,1,0,'24 hours','1 minute',NULL,NULL,NULL,'300ft','Target',0,NULL,'Conjure an extradimensional dwelling with a lavish interior and servants.'),
('Mordenkainens Sword',7,'Evocation','Damage',NULL,'A miniature platinum sword worth 250 gp',1,1,1,'1 minute','Action',4,3,'Force','60ft','Target',0,NULL,'A floating sword of force attacks on your bonus action each turn.'),
('Plane Shift',7,'Conjuration','Utility','CHA','A forked metal rod worth 250 gp',1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Transport yourself and others to another plane, or banish a creature there.'),
('Prismatic Spray',7,'Evocation','Damage','DEX',NULL,1,1,0,'Instantaneous','Action',2,10,'Various','Self','60ft cone',0,NULL,'Eight rays of different colors each cause a different effect.'),
('Project Image',7,'Illusion','Utility',NULL,'A small replica of you worth 5 gp',1,1,1,'1 day','Action',NULL,NULL,NULL,'500 miles','Target',0,NULL,'Create an illusory copy of yourself that can speak and cast spells through you.'),
('Regenerate',7,'Transmutation','Healing',NULL,'A prayer wheel and holy water',1,1,0,'1 hour','1 minute',3,4,NULL,'Touch','Target',0,NULL,'Heal a creature and regrow lost limbs over time.'),
('Resurrection',7,'Necromancy','Healing',NULL,'A diamond worth 1,000 gp',1,1,0,'Instantaneous','1 hour',NULL,NULL,NULL,'Touch','Target',0,NULL,'Restore a creature dead up to a century to life with penalties.'),
('Reverse Gravity',7,'Transmutation','Control','DEX','A lodestone and iron filings',1,1,1,'1 minute','Action',NULL,NULL,NULL,'100ft','50ft radius cylinder',0,NULL,'Gravity reverses in the area, making creatures and objects fall upward.'),
('Sequester',7,'Transmutation','Utility',NULL,'Gem dust worth at least 5,000 gp',1,1,0,'Until dispelled','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Hide a willing creature or object from divination and sight.'),
('Simulacrum',7,'Illusion','Utility',NULL,'Snow or ice and gem dust worth 1,500 gp',1,1,0,'Until dispelled','12 hours',NULL,NULL,NULL,'Touch','Target',0,NULL,'Create a duplicate of a beast or humanoid that follows your commands.'),
('Symbol',7,'Abjuration','Damage','CON','Mercury, phosphorus and powdered gems (1,000 gp)',1,1,0,'Until dispelled','1 minute',4,10,'Necrotic','Touch','60ft radius',1,1,'Inscribe a harmful glyph that triggers when disturbed, with an effect you choose.'),
('Teleport',7,'Conjuration','Utility',NULL,NULL,1,0,0,'Instantaneous','Action',NULL,NULL,NULL,'10ft','Target',0,NULL,'Instantly transport yourself and others to a destination you choose.');

-- ----- 8TH LEVEL -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Animal Shapes',8,'Transmutation','Utility',NULL,NULL,1,1,1,'24 hours','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Transform willing creatures into beasts of your choice.'),
('Antimagic Field',8,'Abjuration','Warding',NULL,'A pinch of powdered iron or iron filings',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Self','10ft sphere',0,NULL,'A sphere suppresses spells and magic items within it.'),
('Antipathy/Sympathy',8,'Enchantment','Control','WIS','Alum soaked in vinegar or a drop of honey',1,1,0,'10 days','1 hour',NULL,NULL,NULL,'60ft','Target',0,NULL,'Make a target repel or attract a chosen kind of creature.'),
('Clone',8,'Necromancy','Utility',NULL,'Diamond (1,000 gp) and a vessel (2,000 gp)',1,1,0,'Instantaneous','1 hour',NULL,NULL,NULL,'Touch','Target',0,NULL,'Grow an inert duplicate of a creature that can hold its soul if it dies.'),
('Control Weather',8,'Transmutation','Utility',NULL,'Burning incense and bits of earth and wood',1,1,1,'8 hours','10 minutes',NULL,NULL,NULL,'Self','5 mile radius',0,NULL,'Change the weather conditions in the area.'),
('Demiplane',8,'Conjuration','Utility',NULL,NULL,0,1,0,'1 hour','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Create a door to an empty extradimensional room.'),
('Dominate Monster',8,'Enchantment','Control','WIS',NULL,1,1,1,'1 hour','Action',NULL,NULL,NULL,'60ft','Target',1,NULL,'Take control of any creature that fails a Wisdom save.'),
('Earthquake',8,'Evocation','Damage','DEX','A pinch of dirt, a piece of rock and a lump of clay',1,1,1,'1 minute','Action',NULL,NULL,'Bludgeoning','500ft','100ft radius',0,NULL,'Violent tremors shake the ground, topple structures and swallow creatures in fissures.'),
('Feeblemind',8,'Enchantment','Debuff','INT','A handful of clay, crystal, glass or mineral spheres',1,1,0,'Instantaneous','Action',2,4,'Psychic','150ft','Target',0,NULL,'Shatter a creatures intellect, reducing its Intelligence and Charisma to 1.'),
('Glibness',8,'Transmutation','Buff',NULL,NULL,1,0,0,'1 hour','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Your Charisma checks to speak are treated as a 15 or higher, and magic cannot reveal that you are lying.'),
('Holy Aura',8,'Abjuration','Buff','CON','A tiny reliquary worth 1,000 gp',1,1,1,'1 minute','Action',NULL,NULL,NULL,'Self','30ft radius',0,NULL,'Allies gain advantage on saves and attackers have disadvantage against them. fiends and undead are blinded.'),
('Incendiary Cloud',8,'Conjuration','Damage','DEX',NULL,1,1,1,'1 minute','Action',3,10,'Fire','150ft','20ft sphere',0,NULL,'A swirling cloud of smoke and embers scorches creatures within it.'),
('Maze',8,'Conjuration','Control',NULL,NULL,1,1,1,'10 minutes','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Banish a creature to a labyrinthine demiplane.'),
('Mind Blank',8,'Abjuration','Warding',NULL,NULL,1,1,0,'24 hours','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'The target is immune to psychic damage, mind reading and most mind-affecting magic.'),
('Power Word Stun',8,'Enchantment','Control',NULL,NULL,1,0,0,'Instantaneous','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Stun a creature with 150 hit points or fewer.'),
('Sunburst',8,'Evocation','Damage','CON','Fire and a piece of sunstone',1,1,0,'Instantaneous','Action',2,12,'Radiant','150ft','60ft radius',0,NULL,'Brilliant sunlight blinds and damages creatures in a large area.'),
('Telepathy',8,'Evocation','Utility',NULL,'A pair of linked silver rings',1,1,0,'24 hours','Action',NULL,NULL,NULL,'Unlimited','Target',0,NULL,'Create a telepathic link with a willing creature on any plane.'),
('Tsunami',8,'Conjuration','Damage','STR',NULL,1,1,1,'6 rounds','1 minute',4,6,'Bludgeoning','Sight','Wall',0,NULL,'A towering wall of water crashes forward, sweeping creatures away.');

-- ----- 9TH LEVEL -----
INSERT INTO Spells (SpellName, SpellLV, School, Effect, SaveDC, Materials, Verbal, Somatic, Concentration, Duration, CastingTime, DieID, DieNum, DamageType, RangeType, SpellShape, Upcastable, UpcastDamageNum, Description) VALUES
('Astral Projection',9,'Necromancy','Utility',NULL,'Jacinth (1,000 gp) and silver bar (100 gp) each',1,1,0,'Special','1 hour',NULL,NULL,NULL,'10ft','Target',0,NULL,'Project yourself and companions into the Astral Plane.'),
('Foresight',9,'Divination','Buff',NULL,'A hummingbird feather',1,1,0,'8 hours','1 minute',NULL,NULL,NULL,'Touch','Target',0,NULL,'Grant a willing creature advantage on rolls and prevent surprise.'),
('Gate',9,'Conjuration','Utility',NULL,'A diamond worth 5,000 gp',1,1,1,'1 minute','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Open a portal to a specific place on another plane.'),
('Imprisonment',9,'Abjuration','Control','WIS','Vellum image and special component (500 gp)',1,1,0,'Until dispelled','1 minute',NULL,NULL,NULL,'30ft','Target',0,NULL,'Trap a creature in one of several forms of magical confinement.'),
('Mass Heal',9,'Conjuration','Healing',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Restore up to 700 hit points divided among creatures and cure ailments.'),
('Meteor Swarm',9,'Evocation','Damage','DEX',NULL,1,1,0,'Instantaneous','Action',2,20,'Fire','1 mile','40ft radius',0,NULL,'Four blazing spheres of fire explode in areas you choose.'),
('Power Word Heal',9,'Evocation','Healing',NULL,NULL,1,1,0,'Instantaneous','Action',NULL,NULL,NULL,'Touch','Target',0,NULL,'Restore all hit points and end several conditions.'),
('Power Word Kill',9,'Enchantment','Damage',NULL,NULL,1,0,0,'Instantaneous','Action',NULL,NULL,NULL,'60ft','Target',0,NULL,'Kill a creature with 100 hit points or fewer. otherwise it takes psychic damage.'),
('Prismatic Wall',9,'Abjuration','Warding',NULL,NULL,1,1,0,'10 minutes','Action',NULL,NULL,NULL,'60ft','Wall',0,NULL,'A shimmering multicolored wall of layered effects blocks passage.'),
('Shapechange',9,'Transmutation','Buff',NULL,'A jade circlet worth 1,500 gp',1,1,1,'1 hour','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Assume the form of any creature of a certain challenge rating, changing forms at will.'),
('Storm of Vengeance',9,'Conjuration','Damage','CON',NULL,1,1,1,'1 minute','Action',2,4,'Various','Sight','360ft radius',0,NULL,'A churning storm cloud rains down escalating hazards each round.'),
('Time Stop',9,'Transmutation','Utility',NULL,NULL,1,0,0,'Instantaneous','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'Time halts for everyone but you for a few extra turns.'),
('True Polymorph',9,'Transmutation','Control','WIS','Mercury, gum arabic and a wisp of smoke',1,1,1,'1 hour','Action',NULL,NULL,NULL,'30ft','Target',0,NULL,'Transform a creature into another creature or object, potentially permanently.'),
('True Resurrection',9,'Necromancy','Healing',NULL,'Holy water and diamonds worth 25,000 gp',1,1,0,'Instantaneous','1 hour',NULL,NULL,NULL,'Touch','Target',0,NULL,'Restore a creature dead up to two hundred years to life, even without a body.'),
('Weird',9,'Illusion','Damage','WIS',NULL,1,1,1,'1 minute','Action',4,4,'Psychic','120ft','30ft radius',0,NULL,'Each creatures deepest fear takes shape, frightening and damaging it.'),
('Wish',9,'Conjuration','Utility',NULL,NULL,1,0,0,'Instantaneous','Action',NULL,NULL,NULL,'Self',NULL,0,NULL,'The mightiest spell a mortal can cast, altering reality at the risk of loss.');


-- ----- CastableSpells: 1st Level (2014 PHB) -----

-- Bard (1)
-- Bane, Charm Person, Comprehend Languages, Cure Wounds, Detect Magic, Disguise Self, Faerie Fire, Feather Fall, Healing Word, Heroism, Identify, Illusory Script, Longstrider, Silent Image, Sleep, Speak with Animals, Thunderwave, Unseen Servant, Tashas Hideous Laughter, Dissonant Whispers
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(28,1),(31,1),(35,1),(37,1),(39,1),(41,1),(45,1),(47,1),(53,1),(55,1),
(58,1),(59,1),(62,1),(69,1),(70,1),(71,1),(72,1),(73,1),(81,1),(83,1);

-- Cleric (2)
-- Bane, Bless, Command, Create or Destroy Water, Cure Wounds, Detect Evil and Good, Detect Magic, Detect Poison and Disease, Guiding Bolt, Healing Word, Inflict Wounds, Protection from Evil and Good, Purify Food and Drink, Sanctuary, Shield of Faith
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(28,2),(29,2),(34,2),(36,2),(37,2),(38,2),(39,2),(40,2),(52,2),(53,2),
(60,2),(64,2),(65,2),(66,2),(68,2);

-- Druid (3)
-- Create or Destroy Water, Cure Wounds, Detect Magic, Detect Poison and Disease, Entangle, Faerie Fire, Fog Cloud, Goodberry, Healing Word, Jump, Longstrider, Purify Food and Drink, Speak with Animals, Thunderwave
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(36,3),(37,3),(39,3),(40,3),(43,3),(45,3),(49,3),(50,3),(53,3),(61,3),
(62,3),(65,3),(71,3),(72,3);

-- Paladin (4)
-- Bless, Command, Compelled Duel, Cure Wounds, Detect Evil and Good, Detect Magic, Detect Poison and Disease, Divine Favor, Heroism, Protection from Evil and Good, Purify Food and Drink, Searing Smite, Shield of Faith, Thunderous Smite, Wrathful Smite
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(29,4),(34,4),(37,4),(38,4),(39,4),(40,4),(42,4),(55,4),(64,4),(65,4),
(68,4),(77,4),(78,4),(79,4),(80,4);

-- Eldritch Knight (5): Wizard-list Abjuration and Evocation spells
-- Alarm, Burning Hands, Chromatic Orb, Mage Armor, Protection from Evil and Good, Shield, Thunderwave, Witch Bolt
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(27,5),(30,5),(32,5),(63,5),(64,5),(67,5),(72,5),(74,5);

-- Sorcerer (6)
-- Burning Hands, Charm Person, Chromatic Orb, Color Spray, Comprehend Languages, Detect Magic, Disguise Self, Expeditious Retreat, False Life, Feather Fall, Fog Cloud, Jump, Mage Armor, Shield, Silent Image, Sleep, Thunderwave, Witch Bolt
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(30,6),(31,6),(32,6),(33,6),(35,6),(39,6),(41,6),(44,6),(46,6),(47,6),
(49,6),(61,6),(63,6),(67,6),(69,6),(70,6),(72,6),(74,6);

-- Ranger (7)
-- Alarm, Cure Wounds, Detect Magic, Detect Poison and Disease, Ensnaring Strike, Fog Cloud, Goodberry, Hail of Thorns, Hunters Mark, Jump, Longstrider, Speak with Animals
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(27,7),(37,7),(39,7),(40,7),(49,7),(50,7),(57,7),(61,7),(62,7),(71,7),
(75,7),(76,7);

-- Arcane Trickster (8): Wizard-list Enchantment and Illusion spells
-- Charm Person, Color Spray, Disguise Self, Illusory Script, Silent Image, Sleep, Tashas Hideous Laughter
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(31,8),(33,8),(41,8),(59,8),(69,8),(70,8),(81,8);

-- Warlock (9)
-- Charm Person, Comprehend Languages, Expeditious Retreat, Hellish Rebuke, Hex, Illusory Script, Protection from Evil and Good, Unseen Servant, Witch Bolt
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(31,9),(35,9),(44,9),(54,9),(56,9),(59,9),(64,9),(73,9),(74,9);

-- Wizard (10)
-- Alarm, Burning Hands, Charm Person, Chromatic Orb, Color Spray, Comprehend Languages, Detect Magic, Disguise Self, Expeditious Retreat, False Life, Feather Fall, Find Familiar, Fog Cloud, Grease, Identify, Illusory Script, Jump, Longstrider, Mage Armor, Protection from Evil and Good, Shield, Silent Image, Sleep, Thunderwave, Unseen Servant, Witch Bolt, Tashas Hideous Laughter, Tensers Floating Disk
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(27,10),(30,10),(31,10),(32,10),(33,10),(35,10),(39,10),(41,10),(44,10),(46,10),
(47,10),(48,10),(49,10),(51,10),(58,10),(59,10),(61,10),(62,10),(63,10),(64,10),
(67,10),(69,10),(70,10),(72,10),(73,10),(74,10),(81,10),(82,10);

-- ----- CastableSpells: 2nd Level (2014 PHB) -----

-- Bard (1)
-- Animal Messenger, Blindness/Deafness, Calm Emotions, Cloud of Daggers, Crown of Madness, Detect Thoughts, Enhance Ability, Enthrall, Heat Metal, Hold Person, Invisibility, Knock, Lesser Restoration, Locate Animals or Plants, Locate Object, Magic Mouth, Phantasmal Force, See Invisibility, Shatter, Silence, Suggestion, Zone of Truth
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(85,1),(90,1),(93,1),(141,1),(96,1),(99,1),(100,1),(102,1),(109,1),(110,1),(111,1),
(112,1),(113,1),(115,1),(116,1),(117,1),(125,1),(131,1),(132,1),(133,1),(137,1),(140,1);

-- Cleric (2)
-- Augury, Blindness/Deafness, Calm Emotions, Continual Flame, Enhance Ability, Find Traps, Gentle Repose, Hold Person, Lesser Restoration, Locate Object, Prayer of Healing, Protection from Poison, Silence, Spiritual Weapon, Warding Bond, Zone of Truth
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(87,2),(90,2),(93,2),(94,2),(100,2),(104,2),(107,2),(110,2),(113,2),(116,2),
(126,2),(127,2),(133,2),(136,2),(138,2),(140,2);

-- Druid (3)
-- Animal Messenger, Barkskin, Beast Sense, Darkvision, Enhance Ability, Find Traps, Flame Blade, Flaming Sphere, Gust of Wind, Heat Metal, Hold Person, Lesser Restoration, Locate Animals or Plants, Locate Object, Moonbeam, Pass without Trace, Protection from Poison, Spike Growth
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(85,3),(88,3),(89,3),(98,3),(100,3),(104,3),(105,3),(106,3),(108,3),(109,3),
(110,3),(113,3),(115,3),(116,3),(122,3),(124,3),(127,3),(135,3);

-- Paladin (4)
-- Branding Smite, Find Steed, Lesser Restoration, Locate Object, Magic Weapon, Protection from Poison, Zone of Truth
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(92,4),(103,4),(113,4),(116,4),(118,4),(127,4),(140,4);

-- Eldritch Knight (5): Wizard-list Abjuration and Evocation spells
-- Arcane Lock, Continual Flame, Darkness, Gust of Wind, Melfs Acid Arrow, Scorching Ray, Shatter
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(86,5),(94,5),(97,5),(108,5),(119,5),(130,5),(132,5);

-- Sorcerer (6)
-- Alter Self, Blindness/Deafness, Blur, Cloud of Daggers, Crown of Madness, Darkness, Darkvision, Detect Thoughts, Enhance Ability, Enlarge/Reduce, Gust of Wind, Hold Person, Invisibility, Knock, Levitate, Mirror Image, Misty Step, Phantasmal Force, Scorching Ray, See Invisibility, Shatter, Spider Climb, Suggestion, Web
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(84,6),(90,6),(91,6),(96,6),(97,6),(98,6),(99,6),(100,6),(101,6),(108,6),(110,6),(111,6),
(112,6),(114,6),(120,6),(121,6),(125,6),(130,6),(131,6),(132,6),(134,6),(137,6),(139,6),(141,6);

-- Ranger (7)
-- Animal Messenger, Barkskin, Beast Sense, Cordon of Arrows, Darkvision, Find Traps, Lesser Restoration, Locate Animals or Plants, Locate Object, Pass without Trace, Protection from Poison, Silence, Spike Growth
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(85,7),(88,7),(89,7),(95,7),(98,7),(104,7),(113,7),(115,7),(116,7),(124,7),(127,7),(133,7),(135,7);

-- Arcane Trickster (8): Wizard-list Enchantment and Illusion spells
-- Blur, Crown of Madness, Hold Person, Invisibility, Magic Mouth, Mirror Image, Nystuls Magic Aura, Phantasmal Force, Suggestion
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(91,8),(96,8),(110,8),(111,8),(117,8),(120,8),(123,8),(125,8),(137,8);

-- Warlock (9)
-- Cloud of Daggers, Crown of Madness, Darkness, Enthrall, Hold Person, Invisibility, Mirror Image, Misty Step, Ray of Enfeeblement, Shatter, Spider Climb, Suggestion
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(141,9),(96,9),(97,9),(102,9),(110,9),(111,9),(120,9),(121,9),(128,9),(132,9),(134,9),(137,9);

-- Wizard (10)
-- Alter Self, Arcane Lock, Blindness/Deafness, Blur, Cloud of Daggers, Continual Flame, Crown of Madness, Darkness, Darkvision, Detect Thoughts, Enlarge/Reduce, Flaming Sphere, Gentle Repose, Gust of Wind, Hold Person, Invisibility, Knock, Levitate, Locate Object, Magic Mouth, Magic Weapon, Melfs Acid Arrow, Mirror Image, Misty Step, Nystuls Magic Aura, Phantasmal Force, Ray of Enfeeblement, Rope Trick, Scorching Ray, See Invisibility, Shatter, Spider Climb, Suggestion, Web
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(84,10),(86,10),(90,10),(91,10),(141,10),(94,10),(96,10),(97,10),(98,10),(99,10),(101,10),
(106,10),(107,10),(108,10),(110,10),(111,10),(112,10),(114,10),(116,10),(117,10),(118,10),
(119,10),(120,10),(121,10),(123,10),(125,10),(128,10),(129,10),(130,10),(131,10),(132,10),
(134,10),(137,10),(139,10);

-- ----- CastableSpells: 3rd Level (2014 PHB) -----

-- Bard (1)
-- Bestow Curse, Clairvoyance, Dispel Magic, Fear, Feign Death, Glyph of Warding, Hypnotic Pattern, Leomunds Tiny Hut, Major Image, Nondetection, Plant Growth, Sending, Speak with Dead, Speak with Plants, Stinking Cloud, Tongues
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(145,1),(149,1),(156,1),(158,1),(159,1),(162,1),(164,1),(165,1),
(169,1),(172,1),(174,1),(178,1),(181,1),(182,1),(183,1),(184,1);

-- Cleric (2)
-- Animate Dead, Beacon of Hope, Bestow Curse, Clairvoyance, Create Food and Water, Daylight, Dispel Magic, Feign Death, Glyph of Warding, Magic Circle, Mass Healing Word, Meld into Stone, Protection from Energy, Remove Curse, Revivify, Sending, Speak with Dead, Tongues, Water Walk
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(142,2),(144,2),(145,2),(149,2),(153,2),(155,2),(156,2),(159,2),(162,2),(168,2),
(170,2),(171,2),(175,2),(176,2),(177,2),(178,2),(181,2),(184,2),(187,2);

-- Druid (3)
-- Call Lightning, Conjure Animals, Daylight, Dispel Magic, Feign Death, Meld into Stone, Plant Growth, Protection from Energy, Sleet Storm, Speak with Plants, Water Breathing, Water Walk, Wind Wall
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(148,3),(150,3),(155,3),(156,3),(159,3),(171,3),(174,3),(175,3),
(179,3),(182,3),(186,3),(187,3),(188,3);

-- Paladin (4)
-- Aura of Vitality, Blinding Smite, Create Food and Water, Crusaders Mantle, Daylight, Dispel Magic, Elemental Weapon, Magic Circle, Remove Curse, Revivify
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(143,4),(146,4),(153,4),(154,4),(155,4),(156,4),(157,4),(168,4),(176,4),(177,4);

-- Eldritch Knight (5): Wizard-list Abjuration and Evocation spells
-- Counterspell, Dispel Magic, Glyph of Warding, Leomunds Tiny Hut, Lightning Bolt, Magic Circle, Nondetection, Protection from Energy, Remove Curse, Sending
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(152,5),(156,5),(162,5),(165,5),(167,5),(168,5),(172,5),(175,5),(176,5),(178,5);

-- Sorcerer (6)
-- Blink, Clairvoyance, Counterspell, Daylight, Dispel Magic, Fear, Fly, Gaseous Form, Haste, Hypnotic Pattern, Lightning Bolt, Major Image, Protection from Energy, Sleet Storm, Slow, Stinking Cloud, Tongues, Water Breathing, Water Walk
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(147,6),(149,6),(152,6),(155,6),(156,6),(158,6),(160,6),(161,6),(163,6),(164,6),
(167,6),(169,6),(175,6),(179,6),(180,6),(183,6),(184,6),(186,6),(187,6);

-- Ranger (7)
-- Conjure Animals, Conjure Barrage, Daylight, Lightning Arrow, Nondetection, Plant Growth, Protection from Energy, Speak with Plants, Water Breathing, Water Walk, Wind Wall
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(150,7),(151,7),(155,7),(166,7),(172,7),(174,7),(175,7),(182,7),(186,7),(187,7),(188,7);

-- Arcane Trickster (8): Wizard-list Enchantment and Illusion spells
-- Fear, Hypnotic Pattern, Major Image, Phantom Steed
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(158,8),(164,8),(169,8),(173,8);

-- Warlock (9)
-- Counterspell, Dispel Magic, Fear, Fly, Gaseous Form, Hypnotic Pattern, Magic Circle, Major Image, Remove Curse, Tongues, Vampiric Touch
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(152,9),(156,9),(158,9),(160,9),(161,9),(164,9),(168,9),(169,9),(176,9),(184,9),(185,9);

-- Wizard (10)
-- Animate Dead, Bestow Curse, Blink, Clairvoyance, Counterspell, Dispel Magic, Fear, Feign Death, Fly, Gaseous Form, Glyph of Warding, Haste, Hypnotic Pattern, Leomunds Tiny Hut, Lightning Bolt, Magic Circle, Major Image, Nondetection, Phantom Steed, Protection from Energy, Remove Curse, Sending, Sleet Storm, Slow, Stinking Cloud, Tongues, Vampiric Touch, Water Breathing
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(142,10),(145,10),(147,10),(149,10),(152,10),(156,10),(158,10),(159,10),(160,10),(161,10),
(162,10),(163,10),(164,10),(165,10),(167,10),(168,10),(169,10),(172,10),(173,10),(175,10),
(176,10),(178,10),(179,10),(180,10),(183,10),(184,10),(185,10),(186,10);

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

-- ----- CastableSpells: 5th Level (2014 PHB) -----

-- Bard (1)
-- Animate Objects, Awaken, Dominate Person, Dream, Geas, Greater Restoration, Hold Monster, Legend Lore, Mass Cure Wounds, Mislead, Modify Memory, Planar Binding, Raise Dead, Rarys Telepathic Bond, Scrying, Seeming, Teleportation Circle
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(223,1),(225,1),(240,1),(241,1),(243,1),(244,1),(246,1),(248,1),(249,1),
(250,1),(251,1),(253,1),(254,1),(255,1),(257,1),(258,1),(261,1);

-- Cleric (2)
-- Commune, Contagion, Dispel Evil and Good, Flame Strike, Geas, Greater Restoration, Hallow, Insect Plague, Legend Lore, Mass Cure Wounds, Planar Binding, Raise Dead, Scrying
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(230,2),(236,2),(239,2),(242,2),(243,2),(244,2),(245,2),(247,2),(248,2),(249,2),
(253,2),(254,2),(257,2);

-- Druid (3)
-- Antilife Shell, Awaken, Commune with Nature, Conjure Elemental, Contagion, Geas, Greater Restoration, Insect Plague, Mass Cure Wounds, Planar Binding, Reincarnate, Scrying, Tree Stride, Wall of Stone
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(224,3),(225,3),(231,3),(233,3),(236,3),(243,3),(244,3),(247,3),(249,3),(253,3),
(256,3),(257,3),(262,3),(264,3);

-- Paladin (4)
-- Banishing Smite, Circle of Power, Destructive Wave, Dispel Evil and Good, Geas, Raise Dead
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(226,4),(228,4),(238,4),(239,4),(243,4),(254,4);

-- Sorcerer (6)
-- Animate Objects, Cloudkill, Cone of Cold, Creation, Dominate Person, Hold Monster, Insect Plague, Seeming, Telekinesis, Teleportation Circle, Wall of Stone
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(223,6),(229,6),(232,6),(237,6),(240,6),(246,6),(247,6),(258,6),(260,6),(261,6),(264,6);

-- Ranger (7)
-- Commune with Nature, Conjure Volley, Swift Quiver, Tree Stride
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(231,7),(234,7),(259,7),(262,7);

-- Warlock (9)
-- Contact Other Plane, Dream, Hold Monster, Scrying
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(235,9),(241,9),(246,9),(257,9);

-- Wizard (10)
-- Animate Objects, Bigbys Hand, Cloudkill, Cone of Cold, Conjure Elemental, Contact Other Plane, Creation, Dominate Person, Dream, Geas, Hold Monster, Legend Lore, Mislead, Modify Memory, Passwall, Planar Binding, Rarys Telepathic Bond, Scrying, Seeming, Telekinesis, Teleportation Circle, Wall of Force, Wall of Stone
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(223,10),(227,10),(229,10),(232,10),(233,10),(235,10),(237,10),(240,10),(241,10),(243,10),
(246,10),(248,10),(250,10),(251,10),(252,10),(253,10),(255,10),(257,10),(258,10),(260,10),
(261,10),(263,10),(264,10);

-- ----- CastableSpells: 6th Level (2014 PHB) -----

-- Bard (1)
-- Eyebite, Find the Path, Guards and Wards, Mass Suggestion, Ottos Irresistible Dance, Programmed Illusion, True Seeing
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(274,1),(275,1),(279,1),(284,1),(287,1),(289,1),(292,1);

-- Cleric (2)
-- Blade Barrier, Create Undead, Find the Path, Forbiddance, Harm, Heal, Heroes' Feast, Planar Ally, True Seeing, Word of Recall
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(266,2),(271,2),(275,2),(277,2),(280,2),(281,2),(282,2),(288,2),(292,2),(295,2);

-- Druid (3)
-- Conjure Fey, Find the Path, Heal, Heroes' Feast, Move Earth, Sunbeam, Transport via Plants, Wall of Thorns, Wind Walk
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(269,3),(275,3),(281,3),(282,3),(285,3),(290,3),(291,3),(294,3),(296,3);

-- Sorcerer (6)
-- Chain Lightning, Circle of Death, Disintegrate, Eyebite, Globe of Invulnerability, Mass Suggestion, Move Earth, Sunbeam, True Seeing
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(267,6),(268,6),(272,6),(274,6),(278,6),(284,6),(285,6),(290,6),(292,6);

-- Warlock (9)
-- Arcane Gate, Circle of Death, Conjure Fey, Create Undead, Eyebite, Flesh to Stone, Mass Suggestion, True Seeing
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(265,9),(268,9),(269,9),(271,9),(274,9),(276,9),(284,9),(292,9);

-- Wizard (10)
-- Arcane Gate, Chain Lightning, Circle of Death, Contingency, Create Undead, Disintegrate, Drawmijs Instant Summons, Eyebite, Flesh to Stone, Globe of Invulnerability, Guards and Wards, Magic Jar, Mass Suggestion, Move Earth, Otilukes Freezing Sphere, Ottos Irresistible Dance, Programmed Illusion, Sunbeam, True Seeing, Wall of Ice
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(265,10),(267,10),(268,10),(270,10),(271,10),(272,10),(273,10),(274,10),(276,10),(278,10),
(279,10),(283,10),(284,10),(285,10),(286,10),(287,10),(289,10),(290,10),(292,10),(293,10);

-- ----- CastableSpells: 7th Level (2014 PHB) -----

-- Bard (1)
-- Etherealness, Forcecage, Mirage Arcane, Mordenkainens Magnificent Mansion, Mordenkainens Sword, Prismatic Spray, Project Image, Regenerate, Resurrection, Symbol, Teleport
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(300,1),(303,1),(304,1),(305,1),(306,1),(308,1),(309,1),(310,1),(311,1),(315,1),(316,1);

-- Cleric (2)
-- Conjure Celestial, Divine Word, Etherealness, Fire Storm, Plane Shift, Regenerate, Resurrection, Symbol
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(297,2),(299,2),(300,2),(302,2),(307,2),(310,2),(311,2),(315,2);

-- Druid (3)
-- Fire Storm, Mirage Arcane, Plane Shift, Regenerate, Reverse Gravity
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(302,3),(304,3),(307,3),(310,3),(312,3);

-- Sorcerer (6)
-- Delayed Blast Fireball, Etherealness, Finger of Death, Fire Storm, Plane Shift, Prismatic Spray, Reverse Gravity, Teleport
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(298,6),(300,6),(301,6),(302,6),(307,6),(308,6),(312,6),(316,6);

-- Warlock (9)
-- Etherealness, Finger of Death, Forcecage, Plane Shift
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(300,9),(301,9),(303,9),(307,9);

-- Wizard (10)
-- Delayed Blast Fireball, Etherealness, Finger of Death, Forcecage, Mirage Arcane, Mordenkainens Magnificent Mansion, Mordenkainens Sword, Plane Shift, Prismatic Spray, Project Image, Reverse Gravity, Sequester, Simulacrum, Symbol, Teleport
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(298,10),(300,10),(301,10),(303,10),(304,10),(305,10),(306,10),(307,10),
(308,10),(309,10),(312,10),(313,10),(314,10),(315,10),(316,10);

-- ----- CastableSpells: 8th Level (2014 PHB), corrected IDs -----

-- Bard (1)
-- Antipathy/Sympathy, Dominate Monster, Feeblemind, Glibness, Mind Blank, Power Word Stun
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(445,1),(449,1),(451,1),(452,1),(456,1),(457,1);

-- Cleric (2)
-- Antimagic Field, Control Weather, Earthquake, Holy Aura
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(444,2),(447,2),(450,2),(453,2);

-- Druid (3)
-- Animal Shapes, Antipathy/Sympathy, Control Weather, Earthquake, Feeblemind, Sunburst, Tsunami
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(443,3),(445,3),(447,3),(450,3),(451,3),(458,3),(460,3);

-- Sorcerer (6)
-- Dominate Monster, Earthquake, Incendiary Cloud, Power Word Stun, Sunburst
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(449,6),(450,6),(454,6),(457,6),(458,6);

-- Warlock (9)
-- Demiplane, Dominate Monster, Feeblemind, Glibness, Power Word Stun
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(448,9),(449,9),(451,9),(452,9),(457,9);

-- Wizard (10)
-- Antimagic Field, Antipathy/Sympathy, Clone, Control Weather, Demiplane, Dominate Monster, Feeblemind, Incendiary Cloud, Maze, Mind Blank, Power Word Stun, Sunburst, Telepathy
INSERT INTO CastableSpells (SpellID, ClassID) VALUES
(444,10),(445,10),(446,10),(447,10),(448,10),(449,10),(451,10),(454,10),
(455,10),(456,10),(457,10),(458,10),(459,10);

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