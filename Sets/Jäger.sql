-- Cleanup
DELETE FROM `item_template` WHERE `entry` BETWEEN 500070 AND 500074;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500070 AND 500074;
DELETE FROM `spell_dbc` WHERE `ID` IN (200014, 200015);

-- Item Templates: Jäger Set
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500070, 4, 3, -1, 'Wrathmail Chestguard', 12610, 4, 0, 0, 1, 130000, 32000, 5, 4, -1, 264, 90, 0, 1, 0, 4,
 3, 210, 32, 150, 36, 120, 38, 120, 1050, 1, 'Resonates with beastly power.', 3007, 165, 3),
(500071, 4, 3, -1, 'Wrathmail Headguard', 12611, 4, 0, 0, 1, 128000, 31000, 1, 4, -1, 264, 90, 0, 1, 0, 4,
 3, 200, 32, 140, 36, 115, 38, 115, 1020, 1, 'Engineered for the hunt.', 3007, 130, 3),
(500072, 4, 3, -1, 'Wrathmail Leggings', 12612, 4, 0, 0, 1, 129000, 31500, 7, 4, -1, 264, 90, 0, 1, 0, 4,
 3, 205, 32, 145, 36, 118, 38, 118, 1030, 1, 'Strides with purpose.', 3007, 155, 3),
(500073, 4, 3, -1, 'Wrathmail Grips', 12613, 4, 0, 0, 1, 125000, 30000, 10, 4, -1, 264, 90, 0, 1, 0, 4,
 3, 190, 32, 135, 36, 110, 38, 110, 990, 1, 'Fingers of focus.', 3007, 110, 3),
(500074, 4, 3, -1, 'Wrathmail Shoulders', 12614, 4, 0, 0, 1, 126000, 30500, 3, 4, -1, 264, 90, 0, 1, 0, 4,
 3, 195, 32, 138, 36, 112, 38, 112, 1010, 1, 'Pierces through silence.', 3007, 135, 3);

-- Setnamen (muss itemnamen entsprechen)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500070, 'Wrathmail Chestguard', 5, 12340),
(500071, 'Wrathmail Headguard', 1, 12340),
(500072, 'Wrathmail Leggings', 7, 12340),
(500073, 'Wrathmail Grips', 10, 12340),
(500074, 'Wrathmail Shoulders', 3, 12340);

-- Spell für Setboni
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200014, 0, 6, 99, 150, 1, 'Hunter’s Precision', 'Increases ranged attack power by 150.'),
(200015, 0, 6, 99, 20, 1, 'Rapid Reflexes', 'Auto Shot has a 10% chance to increase your haste by 20% for 3 sec.');
