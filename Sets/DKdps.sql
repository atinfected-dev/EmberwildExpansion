-- Clean up alte Einträge
DELETE FROM `item_template` WHERE `entry` BETWEEN 500090 AND 500094;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500090 AND 500094;
DELETE FROM `spell_dbc` WHERE `ID` IN (200022, 200023);

-- Item Templates: DK DPS
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500090, 4, 4, -1, 'Helm of the Death Reaver',    12510, 4, 0, 0, 1, 134000, 33500, 1, 1, -1, 264, 90, 0, 1, 0, 4,
 32, 140, 36, 100, 4, 120, 7, 135, 1890, 1, 'Forged for slaughter.', 3011, 100, 3),
(500091, 4, 4, -1, 'Chestplate of the Death Reaver', 12511, 4, 0, 0, 1, 137000, 34500, 5, 1, -1, 264, 90, 0, 1, 0, 4,
 32, 145, 36, 105, 4, 125, 7, 140, 2120, 1, 'The heart of wrath.', 3011, 180, 3),
(500092, 4, 4, -1, 'Legplates of the Death Reaver', 12512, 4, 0, 0, 1, 136000, 34000, 7, 1, -1, 264, 90, 0, 1, 0, 4,
 32, 142, 36, 102, 4, 122, 7, 138, 2040, 1, 'Carved for carnage.', 3011, 165, 3),
(500093, 4, 4, -1, 'Gauntlets of the Death Reaver', 12513, 4, 0, 0, 1, 132000, 33000, 10, 1, -1, 264, 90, 0, 1, 0, 4,
 32, 138, 36, 98, 4, 118, 7, 134, 1800, 1, 'They never miss.', 3011, 120, 3),
(500094, 4, 4, -1, 'Pauldrons of the Death Reaver', 12514, 4, 0, 0, 1, 133000, 33300, 3, 1, -1, 264, 90, 0, 1, 0, 4,
 32, 140, 36, 100, 4, 120, 7, 135, 1900, 1, 'Whispers of death.', 3011, 130, 3);

-- Setnamen (identisch mit Items)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500090, 'Helm of the Death Reaver', 1, 12340),
(500091, 'Chestplate of the Death Reaver', 5, 12340),
(500092, 'Legplates of the Death Reaver', 7, 12340),
(500093, 'Gauntlets of the Death Reaver', 10, 12340),
(500094, 'Pauldrons of the Death Reaver', 3, 12340);

-- SpellDBC Einträge (Setboni)
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200022, 0, 6, 99, 5, 1, 'Death Reaver\'s Focus', 'Your rune regeneration rate is increased by 5%.'),
(200023, 0, 6, 99, 8, 1, 'Killing Spree', 'Your attacks deal 8% more damage for 6 sec after using Death Strike.');
