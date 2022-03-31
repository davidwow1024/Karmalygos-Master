-- Fix Quest Breaking the Bonds 25514
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 202955;

DELETE FROM `smart_scripts` WHERE (`source_type` = 1 AND `entryorguid` = 202955);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(202955, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 33, 40545, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Give credit to player'),
(202955, 1, 1, 0, 64, 0, 100, 0, 0, 0, 0, 0, 12, 40551, 4, 500, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'summon creature');