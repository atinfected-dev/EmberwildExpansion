-- Cleanup vorher
DELETE FROM `item_template` WHERE `entry` BETWEEN 500035 AND 500039;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500035 AND 500039;
DELETE FROM `spell_dbc` WHERE `ID` IN (200004, 200005);

-- Item Templates für DPS-Krieger
INSERT INTO `item_template` (
    `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
    `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
    `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
    `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
    `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500035, 4, 4, -1, 'Chestguard of Relentless Fury', 12350, 4, 0, 0, 1, 100000, 25000, 5, 1, -1, 264, 90, 0, 1, 0, 3,
 4, 220, 36, 120, 32, 140, 1600, 1, 'Burns with the rage of battle.', 3002, 165, 5),
(500036, 4, 4, -1, 'Helm of Relentless Fury',       12351, 4, 0, 0, 1, 90000, 22000, 1, 1, -1, 264, 90, 0, 1, 0, 3,
 4, 180, 36, 100, 32, 110, 1200, 1, 'Forged for fearless strikes.', 3002, 120, 5),
(500037, 4, 4, -1, 'Legplates of Relentless Fury',  12352, 4, 0, 0, 1, 95000, 23000, 7, 1, -1, 264, 90, 0, 1, 0, 3,
 4, 200, 36, 110, 32, 120, 1500, 1, 'Borne by berserkers.', 3002, 155, 5),
(500038, 4, 4, -1, 'Gauntlets of Relentless Fury',  12353, 4, 0, 0, 1, 80000, 20000, 10, 1, -1, 264, 90, 0, 1, 0, 3,
 4, 150, 36, 90, 32, 100, 1100, 1, 'Sealed in the blood of conquest.', 3002, 110, 5),
(500039, 4, 4, -1, 'Pauldrons of Relentless Fury',  12354, 4, 0, 0, 1, 85000, 21000, 3, 1, -1, 264, 90, 0, 1, 0, 3,
 4, 170, 36, 95, 32, 100, 1300, 1, 'Glory weighs heavy.', 3002, 130, 5);

-- Item Set Names (für Tooltips)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500035, 'Chestguard of Relentless Fury', 5, 12340),
(500036, 'Helm of Relentless Fury',       1, 12340),
(500037, 'Legplates of Relentless Fury',  7, 12340),
(500038, 'Gauntlets of Relentless Fury', 10, 12340),
(500039, 'Pauldrons of Relentless Fury',  3, 12340);

-- Setboni Spells
INSERT INTO `spell_dbc` (
    `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
    `EffectMiscValue_1`, `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200004, 0, 6, 99, 5, 1, 0, 'Battle Clarity', 'Increases your critical strike chance by 5%.'),
(200005, 0, 6, 99, 10, 1, 0, 'Unyielding Assault', 'Increases attack power by 10%.');
