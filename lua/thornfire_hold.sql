-- Instance definition
INSERT INTO `instance_template` (`map`, `parent`, `levelMin`, `levelMax`, `maxPlayers`, `difficulty`, `reset_delay`, `flags`)
VALUES (9926, 0, 85, 90, 5, 0, 86400, 1);

-- Boss Templates
INSERT INTO `creature_template` (`entry`, `name`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `unit_class`, `rank`, `modelid1`) VALUES
(99300, 'High Flamecaller Zul\'ra', 86, 86, 16, 0, 2, 3, 17808),
(99301, 'Thornspike Beastmaster', 86, 86, 16, 0, 1, 3, 21668),
(99302, 'Emberblood Twin Raka', 86, 86, 16, 0, 2, 3, 20942),
(99303, 'Emberblood Twin Mazi', 86, 86, 16, 0, 2, 3, 20943),
(99304, 'Vakar, Flamebinder of the Wild', 87, 87, 16, 0, 1, 3, 19136);

-- Spawns
INSERT INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(99300, 9926, 100.0, 100.0, 50.0, 0),
(99301, 9926, 200.0, 120.0, 50.0, 1),
(99302, 9926, 300.0, 150.0, 50.0, 2),
(99303, 9926, 305.0, 150.0, 50.0, 2),
(99304, 9926, 400.0, 180.0, 50.0, 3);
