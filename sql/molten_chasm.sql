-- Molten Chasm Instance
INSERT INTO `instance_template` (`map`, `parent`, `levelMin`, `levelMax`, `maxPlayers`, `difficulty`, `reset_delay`, `flags`)
VALUES (9925, 0, 82, 90, 5, 0, 86400, 1);

-- Boss Templates
INSERT INTO `creature_template` (`entry`, `name`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `unit_class`, `rank`, `modelid1`) VALUES
(99200, 'Lavafang, the Burrower', 85, 85, 16, 0, 1, 3, 14321),
(99201, 'Emberflame Hydra', 85, 85, 16, 0, 1, 3, 19871),
(99202, 'Smolderscale the Ancient', 86, 86, 16, 0, 1, 3, 19870),
(99203, 'Volgrak, the Core Watcher', 87, 87, 16, 0, 1, 3, 19743);

-- Spawns (placeholder positions)
INSERT INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(99200, 9925, 100, 100, 50, 0),
(99201, 9925, 200, 150, 50, 1),
(99202, 9925, 300, 180, 50, 2),
(99203, 9925, 400, 220, 50, 3);
