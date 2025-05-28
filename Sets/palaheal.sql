-- Cleanup
DELETE FROM `item_template` WHERE `entry` BETWEEN 500055 AND 500059;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500055 AND 500059;
DELETE FROM `spell_dbc` WHERE `ID` IN (200010, 200011);

-- Item Templates: Paladin Heal Set
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500055, 4, 4, -1, 'Breastplate of Sanctified Light', 12510, 4, 0, 0, 1, 115000, 28000, 5, 2, -1, 264, 90, 0, 1, 0, 4,
 5, 190, 7, 150, 30, 100, 45, 100, 1650, 1, 'Blessed for divine restoration.', 3005, 165, 5),
(500056, 4, 4, -1, 'Helm of Sanctified Light',        12511, 4, 0, 0, 1, 110000, 27000, 1, 2, -1, 264, 90, 0, 1, 0, 4,
 5, 170, 7, 130, 30, 90, 45, 90, 1350, 1, 'Radiates sacred wisdom.', 3005, 125, 5),
(500057, 4, 4, -1, 'Legplates of Sanctified Light',   12512, 4, 0, 0, 1, 113000, 27500, 7, 2, -1, 264, 90, 0, 1, 0, 4,
 5, 180, 7, 140, 30, 95, 45, 95, 1550, 1, 'Crafted in eternal purity.', 3005, 150, 5),
(500058, 4, 4, -1, 'Gauntlets of Sanctified Light',   12513, 4, 0, 0, 1, 98000, 24000, 10, 2, -1, 264, 90, 0, 1, 0, 4,
 5, 160, 7, 120, 30, 80, 45, 85, 1200, 1, 'Channels the Light.', 3005, 110, 5),
(500059, 4, 4, -1, 'Shoulders of Sanctified Light',   12514, 4, 0, 0, 1, 102000, 25000, 3, 2, -1, 264, 90, 0, 1, 0, 4,
 5, 165, 7, 125, 30, 85, 45, 90, 1300, 1, 'Bathed in the Light\'s grace.', 3005, 135, 5);

-- Item Set Names (matching item names)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500055, 'Breastplate of Sanctified Light', 5, 12340),
(500056, 'Helm of Sanctified Light',        1, 12340),
(500057, 'Legplates of Sanctified Light',   7, 12340),
(500058, 'Gauntlets of Sanctified Light',  10, 12340),
(500059, 'Shoulders of Sanctified Light',   3, 12340);

-- Spells for Setboni
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `EffectMiscValue_1`, `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200010, 0, 6, 99, 5, 1, 0, 'Grace of the Light', 'Increases healing done by 5%.'),
(200011, 0, 6, 99, 10, 1, 0, 'Sacred Shock', 'Holy Shock heals a second ally for 10% of the original amount.');
