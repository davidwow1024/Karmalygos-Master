-- 5161
DELETE FROM `creature` WHERE `guid`=582918;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
(582918, 5161, 0, 1537, 4679, 1, 1, -4609.25, -1093.96, 505.086, 3.1765, 300);


-- 29930
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `ENTRY` = 56467;

DELETE FROM `smart_scripts` WHERE `entryorguid`=56467 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(56467, 0, 0, 0, 19, 0, 100, 0, 29930, 0, 0, 0, 33, 56508, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


-- 30568
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `ENTRY` = 55122;

DELETE FROM `smart_scripts` WHERE `entryorguid`=55122 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(55122, 0, 0, 1, 19, 0, 100, 0, 30568, 0, 0, 0, 33, 59572, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(55122, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 33, 59562, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(55122, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 59609, 0, 3, 3, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');



-- 30317
DELETE FROM `smart_scripts` WHERE `entryorguid`=57298 AND `source_type`=0 AND `id` in (3,4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(57298, 0, 3, 4, 19, 0, 100, 0, 30317, 0, 0, 0, 33, 59574, 0, 35, 35, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(57298, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 208, 30317, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 30470
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `ENTRY` = 58761;

DELETE FROM `smart_scripts` WHERE `entryorguid`=58761 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(58761, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 208, 30470, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=58761;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 58761, 0, 0, 2, 0, 80134, 1, 0, 0, 0, 0, '', '');


-- 31338
UPDATE `creature_template` SET `npcflag`= 1, `AIName`= 'SmartAI' WHERE `ENTRY` = 64385;

DELETE FROM `smart_scripts` WHERE `entryorguid`=64385 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(64385, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sheepie'),
(64385, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, 86446, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sheepie');

-- 30321
DELETE FROM `smart_scripts` WHERE `entryorguid`=58710 AND `source_type`=0 AND `id` in (2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(58710, 0, 2, 3, 19, 0, 100, 0, 30321, 0, 0, 0, 33, 59524, 0, 100, 100, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(58710, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 208, 30321, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


