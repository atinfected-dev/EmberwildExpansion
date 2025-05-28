-- Clean-Up
DELETE FROM `item_template` WHERE `entry` BETWEEN 500120 AND 500124;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500120 AND 500124;
DELETE FROM `spell_dbc` WHERE `ID` IN (200034, 200035);

-- Item Templates
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500120, 4, 2, -1, 'Lifebinder\'s Headcover',     12610, 4, 0, 0, 1, 148000, 37000, 1, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 100, 7, 110, 45, 95, 46, 85, 1100, 1, 'Crowned by the boughs of life.', 3017, 100, 8),
(500121, 4, 2, -1, 'Lifebinder\'s Robes',         12611, 4, 0, 0, 1, 150000, 37500, 5, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 110, 7, 115, 45, 100, 46, 90, 1350, 1, 'Robes that pulse with nature\'s energy.', 3017, 180, 8),
(500122, 4, 2, -1, 'Lifebinder\'s Legwraps',      12612, 4, 0, 0, 1, 149000, 37250, 7, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 105, 7, 112, 45, 98, 46, 88, 1280, 1, 'Roots that nourish the land.', 3017, 165, 8),
(500123, 4, 2, -1, 'Lifebinder\'s Grips',         12613, 4, 0, 0, 1, 146000, 36500, 10, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 95, 7, 105, 45, 92, 46, 84, 1000, 1, 'Grows warm to the touch.', 3017, 120, 8),
(500124, 4, 2, -1, 'Lifebinder\'s Shoulderpads',  12614, 4, 0, 0, 1, 147000, 36750, 3, 1024, -1, 264, 90, 0, 1, 0, 4,
 5, 102, 7, 108, 45, 96, 46, 86, 1170, 1, 'Grown from the first tree.', 3017, 130, 8);

-- Item Set Names (match item names exactly)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500120, 'Lifebinder\'s Headcover', 1, 12340),
(500121, 'Lifebinder\'s Robes', 5, 12340),
(500122, 'Lifebinder\'s Legwraps', 7, 12340),
(500123, 'Lifebinder\'s Grips', 10, 12340),
(500124, 'Lifebinder\'s Shoulderpads', 3, 12340);

-- Set Bonus Spells
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200034, 0, 6, 99, 10, 1, 'Grove\'s Harmony', 'Increases Rejuvenation healing by 10%.'),
(200035, 0, 6, 99, 15, 1, 'Nature\'s Surge', 'Your Healing Touch criticals grant 15% spell haste for 10 sec.');
