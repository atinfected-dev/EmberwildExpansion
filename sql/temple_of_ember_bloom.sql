-- Dungeon Zone Definition
INSERT INTO `instance_template` (`map`, `parent`, `levelMin`, `levelMax`, `maxPlayers`, `difficulty`, `reset_delay`, `flags`)
VALUES (9924, 0, 80, 90, 5, 0, 86400, 1);

-- Boss: Scorchroot
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `unit_class`, `rank`, `modelid1`)
VALUES (99100, 'Scorchroot the Entwined', '', 85, 85, 16, 0, 1, 3, 1126);

-- Boss: Azura
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `unit_class`, `rank`, `modelid1`)
VALUES (99101, 'Pyrelash Priestess Azura', '', 85, 85, 16, 0, 2, 3, 12893);

-- Boss: Mol’tah
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `unit_class`, `rank`, `modelid1`)
VALUES (99102, 'Mol\'tah the Devourer', '', 86, 86, 16, 0, 1, 3, 20990);

-- Boss: Khar'zul
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `unit_class`, `rank`, `modelid1`)
VALUES (99103, 'Flamebound Guardian Khar\'zul', '', 86, 86, 16, 0, 1, 3, 19272);

-- Spawn Points
-- Replace coords with your custom map coords
INSERT INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(99100, 9924, 200.0, 200.0, 50.0, 0),
(99101, 9924, 300.0, 200.0, 50.0, 1),
(99102, 9924, 400.0, 300.0, 50.0, 2),
(99103, 9924, 500.0, 300.0, 50.0, 3);
