-- Cleanup vorheriger Einträge
DELETE FROM `item_template` WHERE `entry` BETWEEN 500080 AND 500084;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500080 AND 500084;
DELETE FROM `spell_dbc` WHERE `ID` IN (200018, 200019);

-- Item Templates: Priester Heiler
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500080, 4, 1, -1, 'Halo of Holy Ascendance', 12405, 4, 0, 0, 1, 130000, 32000, 1, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 215, 32, 125, 38, 105, 6, 135, 205, 1, 'Bathed in divine light.', 3009, 100, 2),
(500081, 4, 1, -1, 'Vestments of Holy Ascendance', 12406, 4, 0, 0, 1, 131000, 32500, 5, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 225, 32, 130, 38, 110, 6, 145, 215, 1, 'Woven in prayers.', 3009, 165, 2),
(500082, 4, 1, -1, 'Legwraps of Holy Ascendance', 12407, 4, 0, 0, 1, 129000, 31500, 7, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 220, 32, 128, 38, 108, 6, 142, 210, 1, 'Each step a blessing.', 3009, 150, 2),
(500083, 4, 1, -1, 'Handguards of Holy Ascendance', 12408, 4, 0, 0, 1, 127000, 31000, 10, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 210, 32, 122, 38, 102, 6, 138, 200, 1, 'Hands that heal.', 3009, 110, 2),
(500084, 4, 1, -1, 'Shoulderpads of Holy Ascendance', 12409, 4, 0, 0, 1, 128000, 31200, 3, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 215, 32, 124, 38, 104, 6, 140, 205, 1, 'Soft as mercy.', 3009, 125, 2);

-- Item Set Names
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500080, 'Halo of Holy Ascendance', 1, 12340),
(500081, 'Vestments of Holy Ascendance', 5, 12340),
(500082, 'Legwraps of Holy Ascendance', 7, 12340),
(500083, 'Handguards of Holy Ascendance', 10, 12340),
(500084, 'Shoulderpads of Holy Ascendance', 3, 12340);

-- Setboni Spells
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200018, 0, 6, 99, 5, 1, 'Divine Radiance', 'Your healing spells heal 5% more.'),
(200019, 0, 6, 99, 1, 1, 'Grace of Light', 'Your Flash Heal has a 10% chance to cost no mana.');
