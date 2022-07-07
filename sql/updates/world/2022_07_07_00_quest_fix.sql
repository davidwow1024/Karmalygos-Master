-- 30774
UPDATE `creature_template` SET `AIName`= '' WHERE `ENTRY` = 60899;
UPDATE `gameobject_template` SET `AIName`= '' WHERE `ENTRY` = 211511;


-- 30993
DELETE FROM `smart_scripts` WHERE `entryorguid`=61819 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(61819, 0, 0, 0, 19, 0, 100, 0, 30752, 0, 0, 0, 11, 121187, 16, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ban Bearheart - On Quest 30752 Accept - Cast Spell 121187'),
(61819, 0, 1, 2, 62, 0, 100, 0, 13831, 0, 0, 0, 33, 61819, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - give credit'),
(61819, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 33, 63603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - give credit'),
(61819, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 62, 870, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3555.8, 2632.07, 755.89, 5.7, 'On gossip select - Tele player');

DELETE FROM `creature` WHERE `guid`=582917;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
(582917, 61819, 870, 5841, 6173, 1, 1, 0, 0, 3562.26, 2631.5, 755.782, 4.64966, 300);

-- 30000
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `ENTRY` = 56784;

DELETE FROM `smart_scripts` WHERE `entryorguid`=56784 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(56784, 0, 0, 0, 19, 0, 100, 0, 30000, 0, 0, 0, 33, 57243, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 30144, 30145, 30187
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `ENTRY` = 58420;

DELETE FROM `smart_scripts` WHERE `entryorguid`=58420 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(58420, 0, 0, 0, 19, 0, 100, 0, 30144, 0, 0, 0, 33, 58426, 0, 6, 6, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(58420, 0, 1, 0, 19, 0, 100, 0, 30145, 0, 0, 0, 33, 58444, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(58420, 0, 2, 3, 19, 0, 100, 0, 30187, 0, 0, 0, 33, 58438, 0, 10, 10, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(58420, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 208, 30187, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 30188, 31810, 31811
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `ENTRY` = 58564;

DELETE FROM `smart_scripts` WHERE `entryorguid`=58564 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(58564, 0, 0, 0, 19, 0, 100, 0, 30188, 0, 0, 0, 33, 58594, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(58564, 0, 1, 0, 19, 0, 100, 0, 31810, 0, 0, 0, 33, 58594, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(58564, 0, 2, 0, 19, 0, 100, 0, 31811, 0, 0, 0, 33, 58594, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 29999 Oscar
UPDATE `creature_template` SET `AIName`= 'SmartAI', `npcflag`= 1 WHERE `ENTRY` in (56851,56853,56850,56852);


DELETE FROM `smart_scripts` WHERE `entryorguid`=56850 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(56850, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 33, 56860, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Kc dragon dorado');

DELETE FROM `smart_scripts` WHERE `entryorguid`=56851 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(56851, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 33, 56859, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Kc dragon esmeralda');

DELETE FROM `smart_scripts` WHERE `entryorguid`=56853 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(56853, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 33, 56856, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Kc dragon azur');


DELETE FROM `smart_scripts` WHERE `entryorguid`=56852 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(56852, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 33, 56858, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Kc dragon carmesi');

