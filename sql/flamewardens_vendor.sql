-- Vendor Template
DELETE FROM `creature_template` WHERE `entry` = 99020;
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `subname`, `npcflag`, `faction`, `minlevel`, `maxlevel`) 
VALUES (99020, 19790, 'Quartermaster Arlia', 'Flamewardens Provisioner', 128, 35, 80, 80);

-- Vendor Spawn
INSERT INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`)
VALUES (99020, 0, -8822.3, 624.8, 95.1, 1.6);

-- Items (use placeholder items for now; replace with your custom item IDs)
DELETE FROM `npc_vendor` WHERE `entry` = 99020;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`, `reqhonorpoints`, `reqarenapoints`, `reqitem`, `reqitemcount`, `reqpersonalrating`)
VALUES
-- Friendly
(99020, 50730, 0, 0, 0, 1, 0, 0, 0, 0, 0),
-- Honored
(99020, 50731, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(99020, 50732, 0, 0, 0, 1, 0, 0, 0, 0, 0),
-- Revered
(99020, 50733, 0, 0, 0, 1, 0, 0, 0, 0, 0),
-- Exalted
(99020, 50734, 0, 0, 0, 1, 0, 0, 0, 0, 0);
