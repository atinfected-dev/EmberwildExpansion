-- Zone & Area Setup
DELETE FROM `worldmaparea` WHERE `area`=9923;
INSERT INTO `worldmaparea` (`mapID`, `area`, `zone_name`, `x1`, `y1`, `x2`, `y2`, `virtualMap`) 
VALUES (1, 9923, 'Zandor\'al', -5000, 5000, 5000, -5000, 0);

-- Factions
INSERT INTO `faction` (`ID`, `faction`, `team`, `flags`, `factiongroup`, `name`, `description`) VALUES
(2201, 2201, 0, 0, 0, 'Flamewardens', 'Titanic guardians against elemental flame'),
(2202, 2202, 0, 0, 0, 'Emberwild Covenant', 'Fire-worshipping zealots of Ignaroth');

INSERT INTO `faction_template` (`ID`, `faction`, `ourMask`, `friendlyMask`, `hostileMask`, `enemyFaction1`, `enemyFaction2`, `enemyFaction3`, `enemyFaction4`, `friendFaction1`, `friendFaction2`, `friendFaction3`, `friendFaction4`, `flags`)
VALUES
(2201, 2201, 0, 0, 0, 2202, 0, 0, 0, 0, 0, 0, 0, 0),
(2202, 2202, 0, 0, 0, 2201, 0, 0, 0, 0, 0, 0, 0, 0);

-- Gossip NPC Template
DELETE FROM `creature_template` WHERE `entry`=99001;
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`) 
VALUES (99001, 19790, 'Elder Flamekeeper', 'Guardian of Zandor\'al', 'Speak', 0, 80, 80, 35, 1);

-- Place this NPC somewhere safe for testing (Stormwind)
DELETE FROM `creature` WHERE `guid`=99001;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) 
VALUES (99001, 99001, 0, -8811.23, 622.34, 95.89, 3.2);
