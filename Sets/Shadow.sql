-- Cleanup vorheriger Einträge
DELETE FROM `item_template` WHERE `entry` BETWEEN 500075 AND 500079;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500075 AND 500079;
DELETE FROM `spell_dbc` WHERE `ID` IN (200016, 200017);

-- Item Templates: Priester - Shadow
INSERT INTO `item_template` (
  `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
  `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
  `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
  `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
  `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500075, 4, 1, -1, 'Cowl of Dark Insight', 12400, 4, 0, 0, 1, 130000, 32000, 1, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 200, 32, 135, 38, 110, 6, 150, 210, 1, 'Enlightened by the void.', 3008, 100, 2),
(500076, 4, 1, -1, 'Robes of Dark Insight', 12401, 4, 0, 0, 1, 131000, 32500, 5, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 210, 32, 140, 38, 115, 6, 160, 220, 1, 'Threads of shadow.', 3008, 165, 2),
(500077, 4, 1, -1, 'Leggings of Dark Insight', 12402, 4, 0, 0, 1, 129000, 31500, 7, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 205, 32, 130, 38, 112, 6, 155, 215, 1, 'Whispers in the silk.', 3008, 150, 2),
(500078, 4, 1, -1, 'Gloves of Dark Insight', 12403, 4, 0, 0, 1, 127000, 31000, 10, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 190, 32, 120, 38, 105, 6, 140, 200, 1, 'Cursed touch.', 3008, 110, 2),
(500079, 4, 1, -1, 'Mantle of Dark Insight', 12404, 4, 0, 0, 1, 128000, 31200, 3, 16, -1, 264, 90, 0, 1, 0, 4,
 5, 195, 32, 125, 38, 108, 6, 145, 205, 1, 'Darkness rests here.', 3008, 125, 2);

-- Item Set Names: Muss dem Namen der Items entsprechen
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500075, 'Cowl of Dark Insight', 1, 12340),
(500076, 'Robes of Dark Insight', 5, 12340),
(500077, 'Leggings of Dark Insight', 7, 12340),
(500078, 'Gloves of Dark Insight', 10, 12340),
(500079, 'Mantle of Dark Insight', 3, 12340);

-- Setboni Spells: 2er & 4er
INSERT INTO `spell_dbc` (
  `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
  `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200016, 0, 6, 99, 5, 1, 'Shadow Mastery', 'Increases shadow damage by 5%.'),
(200017, 0, 6, 99, 1, 1, 'Dark Communion', 'Vampiric Touch restores 1% mana when it deals damage.');
