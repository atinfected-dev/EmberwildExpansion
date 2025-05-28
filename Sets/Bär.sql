-- Clean-Up
DELETE FROM `item_template` WHERE `entry` BETWEEN 500110 AND 500114;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500110 AND 500114;
DELETE FROM `spell_dbc` WHERE `ID` IN (200030, 200031);

-- Item Templates
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500110, 4, 2, -1, 'Helm of Ursine Might',     12540, 4, 0, 0, 1, 145000, 36250, 1, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 120, 4, 100, 32, 95, 31, 85, 1280, 1, 'Headgear empowered by the wild.', 3015, 100, 8),
(500111, 4, 2, -1, 'Chestguard of Ursine Might', 12541, 4, 0, 0, 1, 148000, 37000, 5, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 125, 4, 105, 32, 100, 31, 90, 1620, 1, 'Chestguard of primal strength.', 3015, 180, 8),
(500112, 4, 2, -1, 'Legplates of Ursine Might',  12542, 4, 0, 0, 1, 146000, 36500, 7, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 123, 4, 103, 32, 98, 31, 88, 1550, 1, 'Forged for the feral protector.', 3015, 165, 8),
(500113, 4, 2, -1, 'Grips of Ursine Might',     12543, 4, 0, 0, 1, 143000, 35750, 10, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 118, 4, 98, 32, 96, 31, 86, 1220, 1, 'Strengthened by the forest.', 3015, 120, 8),
(500114, 4, 2, -1, 'Mantle of Ursine Might',    12544, 4, 0, 0, 1, 144000, 36000, 3, 1024, -1, 264, 90, 0, 1, 0, 4,
 3, 120, 4, 100, 32, 97, 31, 87, 1300, 1, 'Fur-covered shoulderguards.', 3015, 130, 8);

-- Set Item Names
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500110, 'Helm of Ursine Might', 1, 12340),
(500111, 'Chestguard of Ursine Might', 5, 12340),
(500112, 'Legplates of Ursine Might', 7, 12340),
(500113, 'Grips of Ursine Might', 10, 12340),
(500114, 'Mantle of Ursine Might', 3, 12340);

-- Set Bonus Spells
INSERT INTO `spell_dbc` (`ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
 `Name_Lang_enUS`, `Description_Lang_enUS`)
VALUES
(200030, 0, 6, 99, 5, 1, 'Guardian\'s Fortitude', 'Increases stamina by 5% while in Bear Form.'),
(200031, 0, 6, 99, 10, 1, 'Thickened Hide', 'Reduces all physical damage taken by 5% while in Bear Form.');
