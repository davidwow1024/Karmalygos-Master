-- eliminados spawns de los worldbosses y de unos vendedores de ropa alta
DELETE FROM `creature` WHERE `guid`=564260;
DELETE FROM `creature` WHERE `guid`=564259;
DELETE FROM `creature` WHERE `guid`=564258;
DELETE FROM `creature` WHERE `guid`=564257;
DELETE FROM `creature` WHERE `guid`=564256;
DELETE FROM `creature` WHERE `guid`=516616;
DELETE FROM `creature` WHERE `guid`=524060;
DELETE FROM `creature` WHERE `guid`=527449;/*
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawntimesecs_max`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(564260, 60491, 870, 5841, 6152, 1, 1, 0, 0, 2955.4, 407.047, 507.075, 1.45169, 86400, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(564259, 60491, 870, 5841, 6090, 1, 1, 0, 0, 2924.01, 1476, 648.314, 3.58546, 86400, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(564258, 60491, 870, 5841, 6090, 1, 1, 0, 0, 2737.45, 1711.46, 647.72, 0.249445, 86400, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(564257, 60491, 870, 5841, 6415, 1, 1, 0, 0, 2361.8, 595.601, 494.394, 0.89169, 86400, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(564256, 60491, 870, 5841, 6415, 1, 1, 0, 0, 1958.73, 1634.28, 482.576, 0.491481, 86400, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(516616, 62346, 870, 5805, 6387, 1, 1, 0, 0, -572.945, -102.899, 156.181, 1.61634, 86400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(524060, 64595, 870, 5842, 6197, 1, 1, 0, 0, 1855.02, 4272.08, 148.868, 3.98206, 300, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(527449, 64599, 870, 6138, 6315, 1, 65535, 0, 0, 150.167, 3184.61, 214.716, 0.00266838, 300, 0, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0);
*/