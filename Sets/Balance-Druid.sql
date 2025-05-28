-- Clean-Up
DELETE FROM `item_template` WHERE `entry` BETWEEN 500125 AND 500129;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500125 AND 500129;
DELETE FROM `spell_dbc` WHERE `ID` IN (200036, 200037);

-- Items
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500125, 4, 2, -1, 'Moonkin\'s Headwrap',    12615, 4, 0, 0, 1, 148000, 37000, 1, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 95, 7, 100, 45, 90, 46, 80, 1100, 1, 'Glows softly with astral light.', 3018, 100, 8),
(500126, 4, 2, -1, 'Moonkin\'s Tunic',       12616, 4, 0, 0, 1, 150000, 37500, 5, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 105, 7, 108, 45, 95, 46, 85, 1350, 1, 'Stitched with lunar feathers.', 3018, 180, 8),
(500127, 4, 2, -1, 'Moonkin\'s Leggings',    12617, 4, 0, 0, 1, 149000, 37250, 7, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 100, 7, 105, 45, 92, 46, 82, 1280, 1, 'Inscribed with ancient stars.', 3018, 165, 8),
(500128, 4, 2, -1, 'Moonkin\'s Handguards',  12618, 4, 0, 0, 1, 146000, 36500, 10, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 88, 7, 98, 45, 88, 46, 78, 1000, 1, 'You feel attuned to Elune.', 3018, 120, 8),
(500129, 4, 2, -1, 'Moonkin\'s Shoulders',   12619, 4, 0, 0, 1, 147000, 36750, 3, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 92, 7, 102, 45, 90, 46, 80, 1170, 1, 'Moonlight dances across the leather.', 3018, 130, 8);

-- item_set_names (match item names)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500125, 'Moonkin\'s Headwrap', 1, 12340),
(500126, 'Moonkin\'s Tunic', 5, 12340),
(500127, 'Moonkin\'s Leggings', 7, 12340),
(500128, 'Moonkin\'s Handguards', 10, 12340),
(500129, 'Moonkin\'s Shoulders', 3, 12340);

-- spell_dbc (Setboni)
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200036, 0, 6, 99, 5, 1, 'Lunar Grace', 'Your Wrath has a 5% chance to increase spell crit by 15% for 8 sec.'),
(200037, 0, 6, 99, 10, 1, 'Celestial Alignment', 'Increases Starfire damage by 10%.');
