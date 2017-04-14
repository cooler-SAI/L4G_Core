-- Death's Door Fel Cannon Target Bunny
UPDATE `creature` SET `position_x` = 2195.8024, `position_y` = 5475.7568, `position_z` = 163.7464, `orientation` = 0.2682,`spawndist`='0',`movementtype`='0',`spawntimesecs`='1' WHERE `guid` = 78947;
-- UPDATE `creature_template` SET `flags_extra` = 130, `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 22495; -- 35 130

-- Blade's Edge - Legion - Invis Bunny
UPDATE `creature_template` SET `AIName` = 'EventAI', `InhabitType` = 5, `flags_extra`=130 WHERE `entry` = 20736;

-- Death's Door North Warp-Gate
UPDATE `creature` SET `position_x` = '2196.6601', `position_y` = '5474.8798', `position_z` = '153.5782', `spawntimesecs` = 60 WHERE `guid` = 78881;
UPDATE `creature_template` SET `mindmg` = 1, `maxdmg` = 1, `AIName` = 'EventAI', `flags_extra`= 2 WHERE `entry` = 22471; -- 202 350

-- Death's Door South Warp-Gate
UPDATE `creature` SET `position_x` = '1968.8369', `position_y` = '5316.9965', `position_z` = '154.0295', `spawntimesecs` = 60 WHERE `guid` = 78882;
UPDATE `creature_template` SET `mindmg` = 1, `maxdmg` = 1, `AIName` = 'EventAI', `flags_extra`= 2 WHERE `entry` = 22472; -- 202 350

-- Void Hound
UPDATE `creature_template` SET `modelid_A` = 17188, `modelid_H` = 17188 WHERE `entry` = 22500;

-- Canons
UPDATE `creature` SET `orientation` = '5.8660', `spawntimesecs` = 60 WHERE `guid` = 78794;
UPDATE `creature` SET `orientation` = '3.3174', `spawntimesecs` = 60 WHERE `guid` = 78793;

-- AIs
DELETE FROM `creature_ai_scripts` WHERE `entryOrGUID` IN (20736,22471,22472);
INSERT INTO `creature_ai_scripts` VALUES (2073601, 20736, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blade\'s Edge - Legion - Invis Bunny - Disable Melee on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (2247101, 22471, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death\'s Door North Warp-Gate - Invis Bunny - Disable Melee on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (2247201, 22472, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death\'s Door South Warp-Gate - Invis Bunny - Disable Melee on Aggro');

-- Godan 3345
UPDATE `creature_template` SET `equipment_id` = 0 WHERE `entry` = 3345; -- 488 Fishing Pole now not used in any template

UPDATE `creature` SET `position_x` = '-185.0473', `position_y` = '206.4911', `position_z` = '78.8817' WHERE `guid` = 15507;
UPDATE `creature` SET `position_x` = '-181.6646', `position_y` = '68.2096', `position_z` = '67.8410' WHERE `guid` = 16655;

-- 3239,3240,3685 Benedict's Chest, Taillasher Eggs, Silithid Mound Lootable
UPDATE `gameobject_template` SET `faction` = 0 WHERE `entry` IN (3239,3240,3685);

DELETE FROM `creature_ai_scripts` WHERE `entryOrGUID` = 16473;
INSERT INTO `creature_ai_scripts` VALUES
('1647301','16473','0','0','70','3','5000','10000','11000','15000','11','29680','0','0','0','0','0','0','0','0','0','0','Spectral Performer - Cast Curtain Call'),
('1647302','16473','0','0','100','3','11000','17000','15000','21000','11','29679','1','32','0','0','0','0','0','0','0','0','Spectral Performer - Cast Bad Poetry'),
('1647303','16473','2','0','100','3','50','0','25000','35000','11','29683','0','1','0','0','0','0','0','0','0','0','Spectral Performer - Cast Spotlight at 50% HP'),
('1647304','16473','6','0','20','2','0','0','0','0','1','-138','0','0','0','0','0','0','0','0','0','0','Spectral Performer - Say on Death');

UPDATE `creature_template` SET `mechanic_immune_mask`='1039089663' WHERE `entry` = 16473;

DELETE FROM `gameobject` WHERE `guid` IN (13691202,13674995);
UPDATE `gameobject` SET `id` = 185444, `position_x` = '16231.7783', `position_y` = '16282.6748', `position_z` = '20.8547', `orientation` = '5.3060', `rotation0` = 0, `rotation1` = 0, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 13675185;
UPDATE `gameobject` SET `id` = 185444, `position_x` = '16229.9443', `position_y` = '16254.8974', `position_z` = '13.4824', `orientation` = '2.3175', `rotation0` = 0, `rotation1` = 0, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 14107551;
UPDATE `gameobject` SET `id` = 185444, `position_x` = '16231.1718', `position_y` = '16263.1748', `position_z` = '13.4947', `orientation` = '3.2640', `rotation0` = 0, `rotation1` = 0, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 13675189;
UPDATE `gameobject` SET `id` = 185444, `position_x` = '16219.2783', `position_y` = '16260.9707', `position_z` = '13.3842', `orientation` = '0.1538', `rotation0` = 0, `rotation1` = 0, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 13675190;
UPDATE `gameobject` SET `id` = 185444, `position_x` = '16230.2246', `position_y` = '16267.2109', `position_z` = '13.2607', `orientation` = '3.5270', `rotation0` = 0, `rotation1` = 0, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 13676379;
UPDATE `gameobject` SET `id` = 185444, `position_x` = '16219.8271', `position_y` = '16265.9970', `position_z` = '13.2733', `orientation` = '5.6005', `rotation0` = 0, `rotation1` = 0, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 14072713;
UPDATE `gameobject` SET `id` = 185444, `position_x` = '16221.7968', `position_y` = '16257.0742', `position_z` = '13.1844', `orientation` = '1.1354', `rotation0` = 0, `rotation1` = 0, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 12929294;
UPDATE `gameobject` SET `id` = 185444, `position_x` = '16231.6474', `position_y` = '16258.8544', `position_z` = '13.7686', `orientation` = '3.2364', `rotation0` = 0, `rotation1` = 0, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 12917797;
UPDATE `gameobject` SET `id` = 187345, `position_x` = '16224.1142', `position_y` = '16262.0175', `position_z` = '13.2639', `orientation` = '4.8466', `rotation0` = 0, `rotation1` = 0, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 14023982;

DELETE FROM `creature_ai_scripts` WHERE `id` = 1832501;
INSERT INTO `creature_ai_scripts` VALUES ('1832501','18325','0','0','100','7','8700','12700','10000','15000','11','27641','4','0','0','0','0','0','0','0','0','0','Sethekk Prophet - Cast Fear');

-- Tazan's Satchel
UPDATE `item_template` SET `flags` = 0 WHERE `entry` = 7209; -- 4

UPDATE `creature` SET `spawnmask` = 3, `spawntimesecs` = 86400 WHERE `id` = 17695 AND `spawntimesecs` = 7200;
DELETE FROM `pool_template` WHERE `entry` = 30028;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30028','5','Shattared Halls - Shattered Hand Assassin - Pool'); 
DELETE FROM `pool_creature` WHERE `pool_entry` = 30028;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99941,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99949,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99942,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99943,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99944,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99946,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99948,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99940,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99939,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99947,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99945,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99954,'30028','0','Shattared Halls - Shattered Hand Assassin - Pool');

DELETE FROM `creature` WHERE `guid` IN (15373,15484,15487,15466,15480,15482);
INSERT INTO `creature` VALUES (15373, 2375, 0, 1, 3617, 0, -1108.67, -39.2486, -2.84983, 0.361285, 300, 10, 0, 950, 0, 0, 1);
INSERT INTO `creature` VALUES (15466, 2349, 0, 1, 6808, 0, -285.62, -1156.22, 53.6537, 6.20492, 300, 10, 0, 664, 0, 0, 1);
INSERT INTO `creature` VALUES (15484, 2348, 0, 1, 8014, 0, -781.564, -891.376, 27.1351, 4.64985, 300, 5, 0, 788, 0, 0, 1);
INSERT INTO `creature` VALUES (15487, 2349, 0, 1, 6808, 0, -554.877, -972.102, 43.8503, 0.59589, 300, 10, 0, 664, 0, 0, 1);
INSERT INTO `creature` VALUES (15480, 2350, 0, 1, 1989, 0, -705.869, 388.254, 70.2089, 2.22054, 300, 10, 0, 494, 0, 0, 1);
INSERT INTO `creature` VALUES (15482, 2356, 0, 1, 3201, 0, -583.157, -950.196, 40.9115, 2.38018, 300, 10, 0, 944, 0, 0, 1);

-- Illidari Highlord 19797
UPDATE `creature_template` SET `speed`='1.20',`mechanic_immune_mask`='75569267',`flags_extra`='1073741824'  WHERE `entry` = 19797; -- 67110917

-- Illidari Mind Breaker 22074
UPDATE `creature_template` SET `speed`='1.20' WHERE `entry` = 22074;

-- Illidari Soldier 22075
UPDATE `creature_template` SET `speed`='1.20' WHERE `entry` = 22075;

-- Torloth the Magnificent 22076
UPDATE `creature_template` SET `speed`='1.48',`flags_extra`='1073741826' WHERE `entry` = 22076;

UPDATE `creature_template` SET `maxhealth`='22958',`speed`='0.6',`mindmg`='557',`maxdmg`='662',`mechanic_immune_mask`='650853375',`flags_extra`='1086390272' WHERE `entry` = 23375; -- 20958 0.5 100 205 -- 557 - 662

-- Aran Elemental Outsource

DELETE FROM `creature` WHERE `guid` IN (135128,135129,135130,135131,135132,135133,135138,135154);
DELETE FROM `creature_formations` WHERE `leaderguid` IN (57440,49978,50716,49805,50521,135172);
DELETE FROM `creature_formations` WHERE `memberguid` IN (57440,49978,50716,49805,50521,135172);
INSERT INTO `creature_formations` VALUES
(135172, 135172, 100, 360, 2),
(135172, 57440, 100, 360, 2),
(135172, 49978, 100, 360, 2),
(135172, 50716, 100, 360, 2),
(135172, 49805, 100, 360, 2),
(135172, 50521, 100, 360, 2);

DELETE FROM `creature_linked_respawn` WHERE `guid` = 45682;
INSERT INTO `creature_linked_respawn` VALUES (45682, 57440);

-- Shade of Aran Teleport Center 17176- Used for Elemental Check
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `AIName` = '' WHERE `entry` = 17176; -- `unit_flags` = 33554432 35 128
DELETE FROM `creature_ai_scripts` WHERE `entryOrGUID` = 17176;

UPDATE `creature` SET `spawntimesecs` = 780 WHERE `id` IN (17171,17168,17170,17169,17161,17176);
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `minmana` = 0, `maxmana` = 0, `faction_A` = 16, `faction_H` = 16, `AIName` = 'EventAI' WHERE `entry` IN (17171,17168,17170,17169);
DELETE FROM `creature_ai_scripts` WHERE `entryOrGUID` IN (17171,17168,17170,17169,17176);
INSERT INTO `creature_ai_scripts` VALUES 
(1716801, 17168, 4, 0, 100, 2, 0, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport N - Stop Movement and Stop Melee on Aggro'),
(1716802, 17168, 14, 0, 100, 2, 601630, 80, 0, 0, 11, 29962, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport N - Cast Summon Water Elemental on 40% Shade of Aran HP'), -- 40% HP 
(1716803, 17168, 14, 0, 100, 2, 606630, 80, 0, 0, 39, 5, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport N - Call for Help and Despawn'),

(1716901, 17169, 4, 0, 100, 2, 0, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport S - Stop Movement and Stop Melee on Aggro'),
(1716902, 17169, 14, 0, 100, 2, 601630, 80, 0, 0, 11, 37053, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport S - Cast Summon Water Elemental on 40% Shade of Aran HP'),
(1716903, 17169, 14, 0, 100, 2, 606630, 80, 0, 0, 39, 5, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport S - Call for Help and Despawn'),

(1717001, 17170, 4, 0, 100, 2, 0, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport E - Stop Movement and Stop Melee on Aggro'),
(1717002, 17170, 14, 0, 100, 2, 601630, 80, 0, 0, 11, 37051, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport E - Cast Summon Water Elemental on 40% Shade of Aran HP'),
(1717003, 17170, 14, 0, 100, 2, 606630, 80, 0, 0, 39, 5, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport E - Call for Help and Despawn'),

(1717101, 17171, 4, 0, 100, 2, 0, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport W - Stop Movement and Stop Melee on Aggro'),
(1717102, 17171, 14, 0, 100, 2, 601630, 80, 0, 0, 11, 37052, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport W - Cast Summon Water Elemental on 40% Shade of Aran HP'),
(1717103, 17171, 14, 0, 100, 2, 606630, 80, 0, 0, 39, 5, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0,'Shade of Aran Teleport W - Call for Help and Despawn');

-- Conjured Elemental 17167- mob_aran_elemental
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `mindmg` = 300, `maxdmg` = 600, `speed` = 1.00, `AIName` = 'EventAI', `ScriptName` = '' WHERE `entry` = 17167;
DELETE FROM `creature_ai_scripts` WHERE `entryOrGUID` = 17167;
INSERT INTO `creature_ai_scripts` VALUES ('1716701','17167','9','0','100','3','0','40','1500','4000','11','31012','1','0','0','0','0','0','0','0','0','0','Conjured Elemental - Cast Water Bolt');
INSERT INTO `creature_ai_scripts` VALUES ('1716702','17167','1','0','100','2','10000','10000','0','0','41','0','0','0','0','0','0','0','0','0','0','0','Conjured Elemental - Despawn OOC');

-- Shade of Aran 16524
UPDATE `creature` SET `position_x`='-11164.9257',`position_y`='-1912.1971',`position_z`='232.0090',`orientation`='2.2226', `MovementType` = 0 WHERE `guid` = 57440;
UPDATE `creature_template` SET `mindmg`='2295',`maxdmg`='2760',`baseattacktime`='2000',`speed`='1.71',`flags_extra` = `flags_extra`|2|1048576 WHERE `entry` = 16524; -- 3060 3679 -- 4,590 - 5,519

-- Blizzard (Shade of Aran) 17161
UPDATE `creature_template` SET `speed` = 1.20, `unit_flags`='33554432',`flags_extra`='130' WHERE `entry` = 17161; -- 1,125 33554432 128

-- https://github.com/Looking4Group/L4G_Core/pull/3385
UPDATE creature_template SET ScriptName = 'npc_bloodmaul_dire_wolf' WHERE entry = 20058;
UPDATE `quest_template` SET `ReqCreatureOrGOId1`=21176, `ReqSpellCast1`=0 WHERE entry=10506;

-- Droggam should only drop one of the quest items, not both.
-- https://github.com/Looking4Group/L4G_Core/issues/3374
DELETE FROM `creature_loot_template` WHERE  `entry`=20731 AND `item`=30415;

DELETE FROM `looking4group_string` WHERE `entry`=2026;
INSERT INTO `looking4group_string` (`entry`, `content_default`) VALUES 
('2026', '|cff00ff00Character|r %s |cff00ff00was reported for spam. Ticket entry:|r|cffff00ff %d.|r');

UPDATE `creature_template` SET `mechanic_immune_mask`='787431407' WHERE `entry` = 17546;

UPDATE `creature_template` SET `mindmg`='3956',`maxdmg`='4698' WHERE `entry` = 16181;

-- Recipe: Transmute Primal Might Restocktime
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 9000 WHERE `item` = 23574; -- 43200

UPDATE `creature` SET `spawntimesecs` = 7200 WHERE `id` IN (16595, 16596);

DELETE FROM `gameobject` WHERE `guid` IN (82599,82598,82597);

UPDATE `creature_template` SET `npcflag` = `npcflag`|64  WHERE `entry` IN (3690, 4773);

UPDATE creature_template SET ScriptName = 'npc_bloodmaul_dire_wolf' WHERE entry = 20058;
UPDATE `quest_template` SET `ReqCreatureOrGOId1`=21176, `ReqSpellCast1`=0 WHERE entry=10506;

-- change trainer_type_mount cause since patch 1.12.1 the mount trainer system was reworked
UPDATE `creature_template` SET `trainer_type` = 2 where `trainer_type` = 1;

UPDATE `gameobject` SET `spawntimesecs` = 7200, `animprogress` = 100 WHERE `id` IN (176224, 181085);
UPDATE `gameobject_template` SET `flags` = 0, `data1` = 13646 WHERE `entry` = 176224; -- 4 0
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (13646,17899);
INSERT INTO `gameobject_loot_template` VALUES (13646, 13180, 100, 0, 1, 2, 0, 0, 0);
INSERT INTO `gameobject_loot_template` VALUES (17899, 13180, 100, 0, 1, 4, 0, 0, 0);
DELETE FROM `gameobject` WHERE `guid` = 194585;
INSERT INTO `gameobject` VALUES (194585, 181085, 329, 1, 3504.23, -3371.19, 135.959, 4.18344, 0, 0, 0.86736, -0.497682, 7200, 100, 1);

-- Pattern: Heavy Knothide Leather Decrease Restocktime
UPDATE `npc_vendor` SET `incrtime` = 21600 WHERE `item` = 25720; -- 43200

UPDATE `creature_addon` SET `path_id` = 317 WHERE `guid` = 317;
DELETE FROM `waypoint_data` WHERE `id` = 317;
INSERT INTO `waypoint_data` VALUES (317, 1, 13.542, -115.249, -22.0705, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (317, 2, -32.8072, -95.2656, -21.5533, 0, 0, 0, 100, 0);

UPDATE `creature_addon` SET `path_id` = 16151 WHERE `guid` = 16151;
DELETE FROM `waypoint_data` WHERE `id` = 16151;
INSERT INTO `waypoint_data` VALUES (16151, 1, -569.682, -1401.96, 65.1979, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 2, -575.74, -1396.38, 64.9948, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 3, -584.413, -1389.3, 64.8748, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 4, -595.388, -1379.73, 64.8748, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 5, -588.171, -1386.76, 64.8748, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 6, -575.576, -1396.1, 64.9934, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 7, -568.931, -1402.08, 65.2048, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 8, -561.627, -1405.26, 65.1853, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 9, -558.839, -1407.12, 66.2219, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 10, -555.617, -1409.11, 66.222, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 11, -550.801, -1412.21, 67.9631, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 12, -543.596, -1416.84, 69.3283, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 13, -535.226, -1422.41, 68.9278, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 14, -530.073, -1425.87, 66.8384, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 15, -527.609, -1427.53, 66.222, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 16, -523.67, -1430.66, 66.2222, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 17, -528.096, -1427.69, 66.2221, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 18, -533.48, -1423.78, 68.4047, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 19, -539.745, -1419.4, 69.3461, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 20, -548.937, -1413, 68.8202, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 21, -555.197, -1408.62, 66.2221, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 22, -559.511, -1405.72, 66.222, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (16151, 23, -560.986, -1404.74, 65.1854, 0, 0, 0, 100, 0);

-- Mutanus the Devourer spawned via script
DELETE FROM `creature` WHERE `id` = 3654;

-- Ishamuhale spawned via http://db.hellfire-tbc.com/?item=10338
DELETE FROM `creature` WHERE `id` = 3257;

UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 48707;
DELETE FROM `creature_addon` WHERE `guid` = 48707;
DELETE FROM `waypoint_data` WHERE `id` = 1193;
-- INSERT INTO `waypoint_data` VALUES (48707, 1, -263.519, 150.466, -18.9955, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 2, -275.879, 148.999, -22.2309, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 3, -283.074, 148.146, -25.4312, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 4, -275.879, 148.999, -22.2309, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 5, -263.519, 150.466, -18.9955, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 6, -247.886, 140.202, -18.5693, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 7, -225.044, 153.121, -19.0445, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 8, -212.734, 154.857, -21.4755, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 9, -199.5, 155.408, -25.2446, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 10, -212.734, 154.857, -21.4755, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 11, -225.044, 153.121, -19.0445, 0, 0, 0, 100, 0);
-- -- INSERT INTO `waypoint_data` VALUES (48707, 12, -238.8606, 157.8310, -18.7639, 0, 0, 0, 100, 0);
-- INSERT INTO `waypoint_data` VALUES (48707, 13, -240.889, 165.027, -18.5517, 0, 0, 0, 100, 0);

UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 8996;

UPDATE `creature_ai_scripts` SET `event_param1` = 5000, `event_param2` = 5000 WHERE `id` = 561701;
UPDATE `creature_ai_scripts` SET `event_param1` = 0 WHERE `id` = 561703;
UPDATE `creature_ai_scripts` SET `action1_param1` = 1 WHERE `id` = 561702;

DELETE FROM `creature_ai_scripts` WHERE `entryOrGUID` = 5615;
INSERT INTO `creature_ai_scripts` VALUES
('561501','5615','1','0','100','0','1000','1000','0','0','11','22766','0','32','0','0','0','0','0','0','0','0','Wastewander Rogue - Cast Sneak OOC'),
('561502','5615','9','0','100','1','0','5','6000','10000','11','8721','1','0','0','0','0','0','0','0','0','0','Wastewander Rogue - Cast Backstab'),
('561503','5615','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Wastewander Rogue - Flee at 15% HP');
UPDATE `creature_addon` SET `auras` = NULL WHERE `guid` IN (23464,23465,23466,23467,23470,23471,23475,23479,23480,23482,23483,23484,23485,23486,23487,23488,23489,23490,23491,23492,23493,92063,92413);

UPDATE `creature`, `creature_template` SET `creature`.`curhealth` = `creature_template`.`MinHealth`, `creature`.`curmana` = `creature_template`.`MinMana` WHERE `creature`.`id` = `creature_template`.`entry` AND `creature_template`.`RegenHealth` & '1';

-- https://github.com/Looking4Group/L4G_Core/issues/964
DELETE FROM `script_texts` WHERE `entry`=-1000711;
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1000711, 'You\'ve found a cure! We will crush our enemies!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Maghar Grunt SAY_THANKS1');
DELETE FROM `script_texts` WHERE `entry`=-1000710;
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1000710, 'You\'ve restored my health! I\'m in your debt, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Maghar Grunt SAY_THANKS2');
DELETE FROM `script_texts` WHERE `entry`=-1000709;
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1000709, 'My strength.... is... returning!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Maghar Grunt SAY_THANKS3');
UPDATE creature_template SET ScriptName='npc_maghar_grunt' WHERE entry=16847;

DELETE FROM `npc_trainer` WHERE `entry` = 1000044 AND `spell` IN (29801,23881,20252,7386,23922,20243,12294);
INSERT INTO `npc_trainer` VALUES
(1000044, 29801, 0, 0, 0, 1),
(1000044, 23881, 0, 0, 0, 1),
(1000044, 20252, 0, 0, 0, 1),
(1000044, 7386, 0, 0, 0, 1),
(1000044, 23922, 0, 0, 0, 1),
(1000044, 20243, 0, 0, 0, 1),
(1000044, 12294, 0, 0, 0, 1);

UPDATE `creature_template` SET `ScriptName`='npc_fel_guard_hound' WHERE `entry`=21847; 
UPDATE `creature_template` SET `ScriptName`='', `AIName`='EventAI' WHERE `entry`=16863; 
DELETE FROM `creature_ai_scripts` WHERE `entryOrGUID`=16863;
INSERT INTO `creature_ai_scripts` (`id`,`entryOrGUID`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Deranged Helboar 
('1686301','16863','1','0','100','0','1000','1000','0','0','11','33908','0','0','0','0','0','0','0','0','0','0','Deranged Helboar - Cast Burning Spikes on Spawn'),
('1686302','16863','2','0','100','0','30','0','0','0','11','8599','0','0','1','-106','0','0','0','0','0','0','Deranged Helboar - Cast Enrage at 30% HP'),
('1686303','16863','6','0','100','0','0','0','0','0','11','37689','0','7','0','0','0','0','0','0','0','0','Deranged Helboar - Cast Tell Dog I Just Died! on Death');
-- Missing gameobject template
DELETE FROM `gameobject_template` WHERE `entry`=184981;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES
(184981, 6, 1287, 'TEMP Felhound Poo Trap', '', 0, 0, 1, 0, 0, 0, 37695, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Fix quest template for Corki quests. (values from tbc-db)
UPDATE quest_template SET ReqCreatureOrGOId1=18369, ReqCreatureOrGOCount1=1, ReqSpellCast1=0 WHERE entry=9923;
UPDATE quest_template SET ReqCreatureOrGOId1=20812, ReqCreatureOrGOCount1=1, ReqSpellCast1=0 WHERE entry=9924;
UPDATE quest_template SET ReqCreatureOrGOId1=18444, ReqCreatureOrGOCount1=1, ReqSpellCast1=0 WHERE entry=9955;
-- Our id's were totally mixed up. Update positions from tbc-db
UPDATE creature SET position_x=-2563.89, position_y=6288.29, position_z=15.295, orientation=5.23599 WHERE guid=65786;
UPDATE creature SET position_x=-918.143, position_y=8663.94, position_z=172.542, orientation=0.523599 WHERE guid=65849;
-- Quest relations also wrong
UPDATE creature_questrelation SET quest=9923 WHERE id=18369;
UPDATE creature_questrelation SET quest=9955 WHERE id=18445;
UPDATE creature_involvedrelation SET id=18445 WHERE quest=9954;

UPDATE `spell_affect` SET `spellfamilymask` = 0x20C01AF7 WHERE entry=12536;
