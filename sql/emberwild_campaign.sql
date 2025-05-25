-- Quest Giver
DELETE FROM `creature_template` WHERE `entry`=99010;
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `subname`, `npcflag`, `faction`, `minlevel`, `maxlevel`) 
VALUES (99010, 19790, 'Lorekeeper Alithar', 'Flamewardens Archive', 2, 35, 80, 80);

INSERT INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) 
VALUES (99010, 0, -8825.7, 630.3, 95.5, 1.6); -- Spawn in Stormwind/Orgrimmar

-- Quests
DELETE FROM `quest_template` WHERE `ID` BETWEEN 90400 AND 90404;

-- Temple of Ember Bloom
INSERT INTO `quest_template` VALUES 
(90400, 2, 9923, 85, 90, 0, 0, 0, 'Into the Ember Bloom',
'Reports speak of a corrupted temple in Zandor\'al. The Flamewardens need you to investigate.',
'Defeat Flamebound Guardian Khar\'zul.',
'Good. The corruption is worse than we feared...',
'Return for your next assignment.', 55000, 0, 99103, 1, 50715, 1, 90401, 0, 0);

-- Molten Chasm
INSERT INTO `quest_template` VALUES 
(90401, 2, 9924, 85, 90, 0, 0, 0, 'Through Fire and Stone',
'Volgrak is the last Core Watcher. His fall would signify the end of the Forge\'s integrity.',
'Defeat Volgrak in the Molten Chasm.',
'Even the Core Watchers have fallen... it is worse than we thought.',
'Return for your next assignment.', 60000, 0, 99203, 1, 50730, 1, 90402, 0, 0);

-- Thornfire Hold
INSERT INTO `quest_template` VALUES 
(90402, 2, 9926, 85, 90, 0, 0, 0, 'Scorched Wilds',
'The jungle trolls have merged fire with shamanic power. Eliminate Vakar.',
'Defeat Vakar, Flamebinder of the Wild.',
'His magic should have never been wielded.',
'You know what comes next...', 65000, 0, 99304, 1, 50746, 1, 90403, 0, 0);

-- Ard’alor
INSERT INTO `quest_template` VALUES 
(90403, 2, 9927, 87, 90, 0, 0, 0, 'Heart of the Ruins',
'Zhar’thul guards ancient archives. If he is truly lost... the flame spreads.',
'Defeat Zhar’thul, Keeper of the Eternal Fire.',
'Then the fire is rising... faster than we feared.',
'One final path remains.', 70000, 0, 99403, 1, 50763, 1, 90404, 0, 0);

-- Final quest (no kill target – future raid trigger)
INSERT INTO `quest_template` VALUES 
(90404, 2, 9923, 90, 90, 0, 0, 0, 'The Burning Archive',
'You have seen the signs. Ignaroth stirs. The Flamewardens request your presence at the core.',
'Prepare to enter the Heart of Ignaroth (raid).',
'Gather your allies. The final reckoning begins.',
'Your courage will echo through fire and ash.', 80000, 0, 0, 0, 0, 0, 0, 0, 0);
