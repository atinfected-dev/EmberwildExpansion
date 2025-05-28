-- Cleanup
DELETE FROM `item_template` WHERE `entry` BETWEEN 500060 AND 500064;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500060 AND 500064;
DELETE FROM `spell_dbc` WHERE `ID` IN (200012, 200013);

-- Item Templates: Schurke Set
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500060, 4, 2, -1, 'Shadowfang Chestguard', 12600, 4, 0, 0, 1, 120000, 29000, 5, 8, -1, 264, 90, 0, 1, 0, 4,
 3, 220, 32, 170, 36, 140, 38, 140, 1000, 1, 'Forged in the dark.', 3006, 165, 2),
(500061, 4, 2, -1, 'Shadowfang Mask', 12601, 4, 0, 0, 1, 115000, 28000, 1, 8, -1, 264, 90, 0, 1, 0, 4,
 3, 200, 32, 160, 36, 130, 38, 130, 950, 1, 'Silent as the shadows.', 3006, 125, 2),
(500062, 4, 2, -1, 'Shadowfang Legwraps', 12602, 4, 0, 0, 1, 118000, 28500, 7, 8, -1, 264, 90, 0, 1, 0, 4,
 3, 210, 32, 165, 36, 135, 38, 135, 980, 1, 'Swift and deadly.', 3006, 150, 2),
(500063, 4, 2, -1, 'Shadowfang Gloves', 12603, 4, 0, 0, 1, 102000, 25000, 10, 8, -1, 264, 90, 0, 1, 0, 4,
 3, 190, 32, 150, 36, 120, 38, 125, 900, 1, 'Strikes with precision.', 3006, 110, 2),
(500064, 4, 2, -1, 'Shadowfang Shoulderpads', 12604, 4, 0, 0, 1, 106000, 25500, 3, 8, -1, 264, 90, 0, 1, 0, 4,
 3, 195, 32, 155, 36, 125, 38, 130, 920, 1, 'Lurks unseen.', 3006, 135, 2);

-- Set Name Table (entry = item ID, name = item name)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500060, 'Shadowfang Chestguard', 5, 12340),
(500061, 'Shadowfang Mask', 1, 12340),
(500062, 'Shadowfang Legwraps', 7, 12340),
(500063, 'Shadowfang Gloves', 10, 12340),
(500064, 'Shadowfang Shoulderpads', 3, 12340);

-- Spells (2er & 4er Bonus)
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200012, 0, 6, 99, 5, 1, 'Finishing Precision', 'Increases the effectiveness of finishing moves by 5%.'),
(200013, 0, 6, 99, 10, 1, 'Combo Surge', 'Your finishers have a 10% chance to refund 1 combo point.');
