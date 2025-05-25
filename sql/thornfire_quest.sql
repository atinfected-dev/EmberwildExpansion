-- Quest Template
INSERT INTO `quest_template` (`ID`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredClasses`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `EndText`, `RewardXP`, `RewardOrRequiredMoney`, `RequiredNpcOrGo1`, `RequiredNpcOrGoCount1`, `RewardItem1`, `RewardItemCount1`, `NextQuestInChain`, `RewardFactionID1`, `RewardFactionValue1`) 
VALUES 
(90300, 2, 9926, 85, 90, 0, 0, 0, 'Purge the Thornfire Hold', 
'The Emberwild Covenant has infested Thornfire Hold. We need brave heroes to root them out.',
'Defeat the final boss, Vakar the Flamebinder.', 
'You have proven your resolve. The Flamewardens welcome you as an ally.', 
'May your fire never fade.', 
50000, 0, 99304, 1, 50746, 1, 0, 2201, 100);

-- Start NPC
DELETE FROM `creature_template` WHERE `entry`=99002;
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `subname`, `npcflag`, `faction`, `minlevel`, `maxlevel`) 
VALUES (99002, 19790, 'Flamewarden Emissary', 'Voice of the Flamewardens', 2, 35, 80, 80);

-- Spawn in safe zone (Stormwind/Orgrimmar)
INSERT INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) 
VALUES (99002, 0, -8835.7, 640.3, 95.5, 1.5);
