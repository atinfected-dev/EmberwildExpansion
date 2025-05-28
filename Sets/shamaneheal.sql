-- Cleanup falls nötig
DELETE FROM `item_template` WHERE `entry` BETWEEN 500095 AND 500099;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500095 AND 500099;
DELETE FROM `spell_dbc` WHERE `ID` IN (200024, 200025);

-- Items: Raiment of Spiritual Surge (Shaman Healer)
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500095, 4, 3, -1, 'Helmet of Spiritual Surge',   12520, 4, 0, 0, 1, 132000, 33000, 1, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 130, 7, 110, 45, 100, 32, 75, 1350, 1, 'Infused with ancestral wisdom.', 3012, 100, 2),
(500096, 4, 3, -1, 'Chestguard of Spiritual Surge', 12521, 4, 0, 0, 1, 135000, 33750, 5, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 135, 7, 115, 45, 105, 32, 80, 1580, 1, 'Flowing with healing currents.', 3012, 180, 2),
(500097, 4, 3, -1, 'Legwraps of Spiritual Surge',  12522, 4, 0, 0, 1, 134000, 33500, 7, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 132, 7, 112, 45, 102, 32, 78, 1510, 1, 'Echoes of the ancestors.', 3012, 165, 2),
(500098, 4, 3, -1, 'Grips of Spiritual Surge',     12523, 4, 0, 0, 1, 130000, 32500, 10, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 128, 7, 108, 45, 98, 32, 74, 1200, 1, 'Crafted for calm control.', 3012, 120, 2),
(500099, 4, 3, -1, 'Mantle of Spiritual Surge',    12524, 4, 0, 0, 1, 131000, 32750, 3, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 130, 7, 110, 45, 100, 32, 75, 1300, 1, 'Restores the flow of life.', 3012, 130, 2);

-- item_set_names
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500095, 'Helmet of Spiritual Surge', 1, 12340),
(500096, 'Chestguard of Spiritual Surge', 5, 12340),
(500097, 'Legwraps of Spiritual Surge', 7, 12340),
(500098, 'Grips of Spiritual Surge', 10, 12340),
(500099, 'Mantle of Spiritual Surge', 3, 12340);

-- Spells: Setboni
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200024, 0, 6, 99, 10, 1, 'Ancestral Renewal', 'Increases your healing done by 10%.'),
(200025, 0, 6, 99, 8, 1, 'Spiritwalker\'s Surge', 'Your Chain Heal has a 25% chance to reduce the cooldown of Riptide by 5 sec.');
