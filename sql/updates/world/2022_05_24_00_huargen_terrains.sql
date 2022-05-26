DELETE FROM `terrain_swap_defaults` WHERE `MapId`=654;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(654, 638, 'Gilneas City Starter Zone'),
(654, 655, 'Gilneas Duskhaven Before Broken'),
(654, 656, 'Gilneas Duskhaven After Broken');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry` in (638,655,656);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 638, 0, 0, 8, 0, 14386, 0, 0, 1, 0, 0, '', 'Terrain Guilneas City - if 14222 not rewarded'),

(27, 0, 655, 0, 0, 8, 0, 14386, 0, 0, 0, 0, 0, '', 'Terrain Guilneas Duskhaven - if 14222 rewarded'),
(27, 0, 655, 0, 0, 8, 0, 14466, 0, 0, 1, 0, 0, '', 'Terrain Guilneas Duskhaven - if 14465 not rewarded'),

(27, 0, 656, 0, 0,  8, 0, 14466, 0, 0, 0, 0, 0, '', 'Terrain Guilneas Broken - if 14465 rewarded'),
(27, 0, 656, 0, 0,  8, 0, 14434, 0, 0, 1, 0, 0, '', 'Terrain Guilneas Broken - if 14386 not rewarded');