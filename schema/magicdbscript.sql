-- ===========================================
-- CS273 D&D Spell Database Schema
-- Author: Noah Campbell Date: Oct 2026
-- ===========================================
DROP DATABASE IF EXISTS MagicDatabase;
CREATE DATABASE MagicDatabase;
USE MagicDatabase;
-- ----- PARENT TABLE: Dice ---------------------------------------------------
CREATE TABLE Dice (
DieID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
DiceType    VARCHAR(3)  NOT NULL,
CONSTRAINT chk_dice_dicetype
    CHECK (DiceType IN ('d4', 'd6', 'd8', 'd10', 'd12', 'd20'))
);
-- ----- PARENT TABLE: Classes ------------------------------------------------
CREATE TABLE Classes (
ClassID INT UNSIGNED	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
ClassName   VARCHAR(50)	NOT NULL,		
ClassType   VARCHAR(20)	NOT NULL,
CONSTRAINT chk_classes_classtype
    CHECK (ClassType IN ('Class', 'Subclass'))
);
-- ----- PARENT TABLE: Books --------------------------------------------------
CREATE TABLE Books (
BookID	INT UNSIGNED	NOT NULL    AUTO_INCREMENT  PRIMARY KEY,
BookName	TEXT	NOT NULL
);
-- ----- CHILD TABLE: Spells --------------------------------------------------
CREATE TABLE Spells (
SpellID INT UNSIGNED    NOT NULL   AUTO_INCREMENT    PRIMARY KEY,
SpellName VARCHAR(50) NOT NULL,
SpellLV	TINYINT(9)	NOT NULL,	
School	VARCHAR(20)	NOT NULL,
Effect	VARCHAR(20)	NOT NULL,
SaveDC	VARCHAR(20)	NOT NULL, 
Materials	VARCHAR(50)	NULL,
Verbal	TINYINT(1)	NOT NULL    DEFAULT 1, -- 0=not required, 1=required
Somatic	TINYINT(1)	NOT NULL	DEFAULT 1,	-- 0=not required, 1=required
Concentration	TINYINT(1)	NOT NULL	DEFAULT 0,	-- 0=not required, 1=required
Duration	VARCHAR(20) NULL	DEFAULT 'Instantaneous',
CastingTime	VARCHAR(20)	NOT NULL	DEFAULT 'Action',	
DieID	INT UNSIGNED	NULL,
DieNum	INT(255)	NULL, 	
DamageType	VARCHAR(20)	NULL, 	
RangeType	VARCHAR(20) NOT NULL    DEFAULT 'Self',
SpellShape	VARCHAR(20)	NULL,
Upcastable	TINYINT(1)	NOT NULL	DEFAULT 1,	-- 0=not upcastable, 1=upcastable
UpcastDamageNum	TINYINT(255)	NULL,	
Description TEXT	NOT NULL,
CONSTRAINT chk_spells_savedc
    CHECK (SaveDC IN ('STR', 'DEX', 'CON', 'INT', 'WIS', 'CHA')),
CONSTRAINT fk_spells_dice
    FOREIGN KEY (DieID)
    REFERENCES Dice(DieID)
    ON DELETE RESTRICT ON UPDATE CASCADE
);
-- ----- CHILD TABLE: Leveling --------------------------------------------------
CREATE TABLE Leveling (
LVID	INT UNSIGNED	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
ClassID	INT UNSIGNED	NOT NULL	DEFAULT 001,
ClassLV	TINYINT(20)	NOT NULL,
HighestLV	TINYINT(9)	NOT NULL,
SpellsKnown	TINYINT(20)	NOT NULL,
CONSTRAINT fk_leveling_classes
    FOREIGN KEY (ClassID)
    REFERENCES Classes(ClassID)
    ON DELETE RESTRICT ON UPDATE CASCADE
);
-- ----- LINKING TABLE Spells ←→ Classes ----------------------------------------
CREATE TABLE CastableSpells (
CSID	INT UNSIGNED	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
ClassID	INT UNSIGNED	NOT NULL,
SpellID	INT UNSIGNED	NOT NULL,
BookID	INT UNSIGNED	NULL,
CONSTRAINT fk_castablespells_classes
    FOREIGN KEY (ClassID)
    REFERENCES Classes(ClassID)
    ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT fk_castablespells_spells
    FOREIGN KEY (SpellID)
    REFERENCES Spells(SpellID)
    ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT fk_castablespells_books
    FOREIGN KEY (BookID)
    REFERENCES Books(BookID)
    ON DELETE RESTRICT ON UPDATE CASCADE
);