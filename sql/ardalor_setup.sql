-- Instance
INSERT INTO `instance_template` (`map`, `parent`, `levelMin`, `levelMax`, `maxPlayers`, `difficulty`, `reset_delay`, `flags`)
VALUES (9927, 0, 87, 90, 5, 0, 86400, 1);

-- Boss Templates
INSERT INTO `creature_template` (`entry`, `name`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `unit_class`, `rank`, `modelid1`) VALUES
(99400, 'Ignis Warden-Protocol', 88, 88, 16, 0, 1, 3, 21933),
(99401, 'Jungleheart Construct', 88, 88, 16, 0, 1, 3, 22718),
(99402, 'Solarflare Sentinel', 89, 89, 16, 0, 1, 3, 22959),
(99403, 'Zhar\'thul, Keeper of the Eternal Fire', 90, 90, 16, 0, 2, 3, 22080);

-- Spawns (placeholder coords)
INSERT INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(99400, 9927, 100, 100, 50, 0),
(99401, 9927, 200, 110, 50, 1),
(99402, 9927, 300, 140, 50, 2),
(99403, 9927, 400, 180, 50, 3);
