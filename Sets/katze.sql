-- Clean-Up
DELETE FROM `item_template` WHERE `entry` BETWEEN 500115 AND 500119;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500115 AND 500119;
DELETE FROM `spell_dbc` WHERE `ID` IN (200032, 200033);

-- Item Templates
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500115, 4, 2, -1, 'Wildfang Headguard',       12600, 4, 0, 0, 1, 148000, 37000, 1, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 110, 32, 95, 36, 80, 31, 85, 1200, 1, 'Worn by those who stalk the forest.', 3016, 100, 8),
(500116, 4, 2, -1, 'Wildfang Chestpiece',      12601, 4, 0, 0, 1, 150000, 37500, 5, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 120, 32, 100, 36, 85, 31, 90, 1550, 1, 'The heart of the beast.', 3016, 180, 8),
(500117, 4, 2, -1, 'Wildfang Legguards',       12602, 4, 0, 0, 1, 149000, 37250, 7, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 115, 32, 98, 36, 82, 31, 88, 1470, 1, 'Fur-lined for speed and silence.', 3016, 165, 8),
(500118, 4, 2, -1, 'Wildfang Handwraps',       12603, 4, 0, 0, 1, 146000, 36500, 10, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 108, 32, 93, 36, 78, 31, 84, 1150, 1, 'Claws fit well through the fingers.', 3016, 120, 8),
(500119, 4, 2, -1, 'Wildfang Shoulderpads',    12604, 4, 0, 0, 1, 147000, 36750, 3, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 112, 32, 96, 36, 79, 31, 86, 1230, 1, 'Shoulders sharpened by the hunt.', 3016, 130, 8);

-- Set Item Names
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500115, 'Wildfang Headguard', 1, 12340),
(500116, 'Wildfang Chestpiece', 5, 12340),
(500117, 'Wildfang Legguards', 7, 12340),
(500118, 'Wildfang Handwraps', 10, 12340),
(500119, 'Wildfang Shoulderpads', 3, 12340);

-- Set Bonus Spells
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200032, 0, 6, 99, 5, 1, 'Predator\'s Precision', 'Increases critical strike chance by 5% in Cat Form.'),
(200033, 0, 6, 99, 10, 1, 'Feral Mastery', 'Increases bleed damage by 10% in Cat Form.');
