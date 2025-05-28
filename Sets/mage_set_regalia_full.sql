-- --------------------------------------------------------
-- 🧙‍♂️ Regalia of Arcane Mastery (Magier-Set)
-- SetID: 3005
-- Items: 500025–500029
-- Spells: 200000 (Haste), 200001 (Dummy Aura)
-- --------------------------------------------------------

-- 1. DELETE EXISTING DATA (Safety)
DELETE FROM `item_template` WHERE `entry` IN (500025, 500026, 500027, 500028, 500029);
DELETE FROM `item_set_names` WHERE `entry` IN (500025, 500026, 500027, 500028, 500029);
DELETE FROM `spell_dbc` WHERE ID IN (200000, 200001);

-- 2. ITEM SET NAMES
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500025, 'Robe of Arcane Mastery',     5, 12340),
(500026, 'Hood of Arcane Mastery',     1, 12340),
(500027, 'Leggings of Arcane Mastery', 7, 12340),
(500028, 'Gloves of Arcane Mastery',  10, 12340),
(500029, 'Mantle of Arcane Mastery',   3, 12340);

-- 3. ITEM TEMPLATES
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyPrice`, `SellPrice`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`,
  `InventoryType`, `stackable`, `MaxCount`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`,
  `bonding`, `description`, `itemset`
) VALUES
(500025, 4, 1, 'Robe of Arcane Mastery', 33881, 4, 0, 0, 950000, 245000, 128, -1, 284, 90, 5, 1, 0, 0, 5, 5, 204, 7, 180, 45, 240, 36, 170, 32, 120, 1, 'Woven with leyline energy.', 3005),
(500026, 4, 1, 'Hood of Arcane Mastery', 33880, 4, 0, 0, 910000, 237500, 128, -1, 284, 90, 1, 1, 0, 0, 5, 5, 190, 7, 160, 45, 220, 36, 150, 32, 110, 1, 'Crowned with arcane wisdom.', 3005),
(500027, 4, 1, 'Leggings of Arcane Mastery', 33882, 4, 0, 0, 920000, 240000, 128, -1, 284, 90, 7, 1, 0, 0, 5, 5, 194, 7, 176, 45, 230, 36, 160, 32, 115, 1, 'Channels energy through every stride.', 3005),
(500028, 4, 1, 'Gloves of Arcane Mastery', 33883, 4, 0, 0, 870000, 230000, 128, -1, 284, 90, 10, 1, 0, 0, 5, 5, 170, 7, 140, 45, 190, 36, 120, 32, 90, 1, 'Precision through the fingertips.', 3005),
(500029, 4, 1, 'Mantle of Arcane Mastery', 33884, 4, 0, 0, 880000, 232000, 128, -1, 284, 90, 3, 1, 0, 0, 5, 5, 180, 7, 150, 45, 200, 36, 130, 32, 100, 1, 'Rests heavy with magical might.', 3005);

-- 4. SPELL DBC (minimiert)
INSERT INTO `spell_dbc` (
  `ID`,
  `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `EffectMiscValue_1`, `DurationIndex`, `EffectDieSides_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`, `AuraDescription_Lang_enUS`,
  `Name_Lang_Mask`, `Description_Lang_Mask`, `AuraDescription_Lang_Mask`
) VALUES
(200000, 6, 30, 5, 1, 0, 1, 5, 'Arcane Mastery (2pc)', 'Your spells cast 5% faster.', 'Spell haste increased by 5%', 1, 1, 1),
(200001, 6, 77, 0, 1, 0, 1, 0, 'Arcane Mastery (4pc)', 'Arcane Power duration extended.', 'Extends Arcane Power effect.', 1, 1, 1);
