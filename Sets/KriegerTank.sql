-- ##########################################
-- 🛡️ Warrior Tank Set: Plate of Unbreakable Resolve
-- Itemset ID: 3001 | Spell ID: 200002
-- Items: 500030 - 500034
-- ##########################################

-- 1. SPELL for SETBONUS (2pc)
DELETE FROM `spell_dbc` WHERE `ID` = 200002;
INSERT INTO `spell_dbc` (`ID`, `Attributes`, `Effect_1`, `EffectBasePoints_1`, `EffectAura_1`, `ImplicitTargetA_1`,
`SpellIconID`, `Name_Lang_enUS`, `Description_Lang_enUS`)
VALUES
(200002, 0, 6, 5, 30, 1,
135987, 'Resolve of the Shieldbearer', 'Increases block value by 5%.');

-- 2. ITEM TEMPLATES
DELETE FROM `item_template` WHERE `entry` BETWEEN 500030 AND 500034;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
`BuyPrice`, `SellPrice`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`,
`InventoryType`, `stackable`, `maxcount`, `ContainerSlots`, `StatsCount`,
`stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
`armor`, `spellid_1`, `spelltrigger_1`, `bonding`, `description`, `itemset`, `MaxDurability`)
VALUES
(500030, 4, 4, -1, 'Chestplate of Unbreakable Resolve', 28915, 4, 0, 0,
1000000, 250000, 1, -1, 90, 90,
5, 1, 0, 0, 3,
7, 120, 4, 100, 32, 100,
2800, 200002, 1, 1, 'Set: (2) +5% Block Value\nSet: (4) Reduces Shield Slam cooldown by 2 sec.', 3001, 140),

(500031, 4, 4, -1, 'Helm of Unbreakable Resolve', 28916, 4, 0, 0,
800000, 200000, 1, -1, 90, 90,
1, 1, 0, 0, 3,
7, 100, 5, 90, 32, 90,
2200, 200002, 1, 1, 'Set: (2) +5% Block Value\nSet: (4) Reduces Shield Slam cooldown by 2 sec.', 3001, 100),

(500032, 4, 4, -1, 'Legguards of Unbreakable Resolve', 28917, 4, 0, 0,
900000, 225000, 1, -1, 90, 90,
7, 1, 0, 0, 3,
7, 110, 4, 90, 32, 90,
2500, 200002, 1, 1, 'Set: (2) +5% Block Value\nSet: (4) Reduces Shield Slam cooldown by 2 sec.', 3001, 120),

(500033, 4, 4, -1, 'Gauntlets of Unbreakable Resolve', 28918, 4, 0, 0,
700000, 175000, 1, -1, 90, 90,
10, 1, 0, 0, 3,
7, 85, 5, 75, 32, 75,
1600, 200002, 1, 1, 'Set: (2) +5% Block Value\nSet: (4) Reduces Shield Slam cooldown by 2 sec.', 3001, 80),

(500034, 4, 4, -1, 'Shoulderguards of Unbreakable Resolve', 28919, 4, 0, 0,
750000, 180000, 1, -1, 90, 90,
3, 1, 0, 0, 3,
7, 95, 4, 80, 32, 80,
1900, 200002, 1, 1, 'Set: (2) +5% Block Value\nSet: (4) Reduces Shield Slam cooldown by 2 sec.', 3001, 100);

-- 3. ITEMSET NAMES for Tooltip & Visual Grouping
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500030 AND 500034;
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500030, 'Chestplate of Unbreakable Resolve', 5, 12340),
(500031, 'Helm of Unbreakable Resolve', 1, 12340),
(500032, 'Legguards of Unbreakable Resolve', 7, 12340),
(500033, 'Gauntlets of Unbreakable Resolve', 10, 12340),
(500034, 'Shoulderguards of Unbreakable Resolve', 3, 12340);
