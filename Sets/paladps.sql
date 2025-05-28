-- Cleanup
DELETE FROM `item_template` WHERE `entry` BETWEEN 500050 AND 500054;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500050 AND 500054;
DELETE FROM `spell_dbc` WHERE `ID` IN (200008, 200009);

-- Item Templates: Paladin DPS
INSERT INTO `item_template` (
    `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
    `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
    `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
    `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
    `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500050, 4, 4, -1, 'Breastplate of Radiant Fury', 12500, 4, 0, 0, 1, 115000, 28000, 5, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 190, 36, 150, 32, 130, 3, 100, 1650, 1, 'Empowered by the Light.', 3004, 165, 5),
(500051, 4, 4, -1, 'Helm of Radiant Fury',        12501, 4, 0, 0, 1, 110000, 27000, 1, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 170, 36, 130, 32, 120, 3, 90, 1350, 1, 'Unstoppable justice.', 3004, 125, 5),
(500052, 4, 4, -1, 'Legplates of Radiant Fury',   12502, 4, 0, 0, 1, 113000, 27500, 7, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 180, 36, 140, 32, 125, 3, 95, 1550, 1, 'Blazing with vengeance.', 3004, 150, 5),
(500053, 4, 4, -1, 'Gauntlets of Radiant Fury',   12503, 4, 0, 0, 1, 98000, 24000, 10, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 160, 36, 120, 32, 110, 3, 85, 1200, 1, 'Strike with righteousness.', 3004, 110, 5),
(500054, 4, 4, -1, 'Shoulders of Radiant Fury',   12504, 4, 0, 0, 1, 102000, 25000, 3, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 165, 36, 125, 32, 115, 3, 90, 1300, 1, 'Let the fury shine.', 3004, 135, 5);

-- Setnamen: müssen den Itemnamen exakt widerspiegeln
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500050, 'Breastplate of Radiant Fury', 5, 12340),
(500051, 'Helm of Radiant Fury',        1, 12340),
(500052, 'Legplates of Radiant Fury',   7, 12340),
(500053, 'Gauntlets of Radiant Fury',  10, 12340),
(500054, 'Shoulders of Radiant Fury',   3, 12340);

-- Setboni-Spells
INSERT INTO `spell_dbc` (
    `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
    `EffectMiscValue_1`, `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200008, 0, 6, 99, 5, 1, 0, 'Divine Zeal', 'Increases your critical strike chance by 5%.'),
(200009, 0, 6, 99, 10, 1, 0, 'Hammer\'s Judgment', 'Your Judgement deals 10% more damage.');
