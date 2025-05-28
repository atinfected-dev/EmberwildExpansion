-- Cleanup falls nötig
DELETE FROM `item_template` WHERE `entry` BETWEEN 500100 AND 500104;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500100 AND 500104;
DELETE FROM `spell_dbc` WHERE `ID` IN (200026, 200027);

-- Items: Regalia of Thunderous Wrath (Shaman Elemental)
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500100, 4, 3, -1, 'Helm of Thunderous Wrath',     12525, 4, 0, 0, 1, 135000, 33750, 1, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 140, 7, 120, 45, 90, 30, 75, 1350, 1, 'Crowned with storm.', 3013, 100, 2),
(500101, 4, 3, -1, 'Chestguard of Thunderous Wrath', 12526, 4, 0, 0, 1, 138000, 34500, 5, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 145, 7, 125, 45, 95, 30, 80, 1580, 1, 'Storm-charged core.', 3013, 180, 2),
(500102, 4, 3, -1, 'Leggings of Thunderous Wrath',  12527, 4, 0, 0, 1, 136000, 34000, 7, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 143, 7, 122, 45, 93, 30, 78, 1510, 1, 'Lightning-bound.', 3013, 165, 2),
(500103, 4, 3, -1, 'Grips of Thunderous Wrath',     12528, 4, 0, 0, 1, 133000, 33250, 10, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 138, 7, 118, 45, 91, 30, 74, 1200, 1, 'Crackling with power.', 3013, 120, 2),
(500104, 4, 3, -1, 'Mantle of Thunderous Wrath',    12529, 4, 0, 0, 1, 134000, 33500, 3, 64, -1, 264, 90, 0, 1, 0, 4,
 5, 140, 7, 120, 45, 92, 30, 75, 1300, 1, 'Ancestral wrath incarnate.', 3013, 130, 2);

-- item_set_names (mit Itemnamen)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500100, 'Helm of Thunderous Wrath', 1, 12340),
(500101, 'Chestguard of Thunderous Wrath', 5, 12340),
(500102, 'Leggings of Thunderous Wrath', 7, 12340),
(500103, 'Grips of Thunderous Wrath', 10, 12340),
(500104, 'Mantle of Thunderous Wrath', 3, 12340);

-- Spells (Setboni)
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200026, 0, 6, 99, 8, 1, 'Static Empowerment', 'Increases your Nature damage done by 8%.'),
(200027, 0, 6, 99, 10, 1, 'Overcharged Storm', 'Your Lightning Bolt has a 25% chance to grant 10% haste for 6 sec.');
