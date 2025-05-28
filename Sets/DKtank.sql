-- Cleanup
DELETE FROM `item_template` WHERE `entry` BETWEEN 500085 AND 500089;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500085 AND 500089;
DELETE FROM `spell_dbc` WHERE `ID` IN (200020, 200021);

-- Item Templates: DK Tank
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500085, 4, 4, -1, 'Helm of the Frozen Bulwark',    12501, 4, 0, 0, 1, 132000, 33000, 1, 1, -1, 264, 90, 0, 1, 0, 4,
 4, 155, 3, 130, 1, 115, 7, 140, 2350, 1, 'Unyielding as the north.', 3010, 100, 3),
(500086, 4, 4, -1, 'Chestguard of the Frozen Bulwark', 12502, 4, 0, 0, 1, 135000, 34000, 5, 1, -1, 264, 90, 0, 1, 0, 4,
 4, 165, 3, 135, 1, 120, 7, 145, 2600, 1, 'Cold and resolute.', 3010, 180, 3),
(500087, 4, 4, -1, 'Legplates of the Frozen Bulwark', 12503, 4, 0, 0, 1, 134000, 33500, 7, 1, -1, 264, 90, 0, 1, 0, 4,
 4, 160, 3, 132, 1, 118, 7, 143, 2500, 1, 'Solid as ice.', 3010, 165, 3),
(500088, 4, 4, -1, 'Handguards of the Frozen Bulwark', 12504, 4, 0, 0, 1, 130000, 32500, 10, 1, -1, 264, 90, 0, 1, 0, 4,
 4, 150, 3, 128, 1, 112, 7, 138, 2200, 1, 'Crafted for battle.', 3010, 120, 3),
(500089, 4, 4, -1, 'Shoulders of the Frozen Bulwark', 12505, 4, 0, 0, 1, 131000, 32800, 3, 1, -1, 264, 90, 0, 1, 0, 4,
 4, 158, 3, 129, 1, 115, 7, 142, 2300, 1, 'Guarding the strong.', 3010, 130, 3);

-- Item Set Names (identisch mit Itemnamen)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500085, 'Helm of the Frozen Bulwark', 1, 12340),
(500086, 'Chestguard of the Frozen Bulwark', 5, 12340),
(500087, 'Legplates of the Frozen Bulwark', 7, 12340),
(500088, 'Handguards of the Frozen Bulwark', 10, 12340),
(500089, 'Shoulders of the Frozen Bulwark', 3, 12340);

-- Setboni Spells
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200020, 0, 6, 99, 5, 1, 'Bulwark\'s Stance', 'Increases your parry chance by 5%.'),
(200021, 0, 6, 99, 0, 1, 'Frozen Fortification', 'After Death Strike, take 10% less damage for 6 sec.');
