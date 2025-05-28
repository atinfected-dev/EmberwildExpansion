-- Cleanup
DELETE FROM `item_template` WHERE `entry` BETWEEN 500040 AND 500044;
DELETE FROM `item_set_names` WHERE `entry` BETWEEN 500040 AND 500044;
DELETE FROM `spell_dbc` WHERE `ID` IN (200006, 200007);

-- Item Templates: Paladin Tank
INSERT INTO `item_template` (
    `entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`,
    `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`,
    `RequiredLevel`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`,
    `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`,
    `stat_type4`, `stat_value4`, `armor`, `bonding`, `description`, `itemset`, `MaxDurability`, `Material`
)
VALUES
(500040, 4, 4, -1, 'Chestplate of the Silver Hand', 12400, 4, 0, 0, 1, 110000, 27000, 5, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 180, 31, 120, 32, 110, 3, 90, 1850, 1, 'Blessed for battle.', 3003, 165, 5),
(500041, 4, 4, -1, 'Faceguard of the Silver Hand',  12401, 4, 0, 0, 1, 105000, 26000, 1, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 160, 31, 100, 32, 100, 3, 80, 1450, 1, 'Defends the faithful.', 3003, 125, 5),
(500042, 4, 4, -1, 'Legguards of the Silver Hand',  12402, 4, 0, 0, 1, 108000, 26500, 7, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 170, 31, 110, 32, 105, 3, 85, 1700, 1, 'Unshakable resolve.', 3003, 150, 5),
(500043, 4, 4, -1, 'Handguards of the Silver Hand', 12403, 4, 0, 0, 1, 95000, 23000, 10, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 140, 31, 90, 32, 85, 3, 70, 1300, 1, 'Protect with grace.', 3003, 110, 5),
(500044, 4, 4, -1, 'Pauldrons of the Silver Hand',  12404, 4, 0, 0, 1, 98000, 24000, 3, 2, -1, 264, 90, 0, 1, 0, 4,
 4, 150, 31, 95, 32, 90, 3, 75, 1400, 1, 'Holy steel meets battle.', 3003, 135, 5);

-- Setnamen (müssen Itemnamen entsprechen)
INSERT INTO `item_set_names` (`entry`, `name`, `InventoryType`, `VerifiedBuild`) VALUES
(500040, 'Chestplate of the Silver Hand', 5, 12340),
(500041, 'Faceguard of the Silver Hand',  1, 12340),
(500042, 'Legguards of the Silver Hand',  7, 12340),
(500043, 'Handguards of the Silver Hand', 10, 12340),
(500044, 'Pauldrons of the Silver Hand',  3, 12340);

-- Setboni-Spells (Buffs)
INSERT INTO `spell_dbc` (
    `ID`, `Attributes`, `Effect_1`, `EffectAura_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`,
    `EffectMiscValue_1`, `Name_Lang_enUS`, `Description_Lang_enUS`
)
VALUES
(200006, 0, 6, 99, 5, 1, 0, 'Defender\'s Vigil', 'Increases your block chance by 5%.'),
(200007, 0, 6, 99, 5, 1, 0, 'Sanctified Aegis', 'Reduces all damage taken by 5%.');
