DELETE FROM `terrain_swap_defaults` WHERE `MapId`=648;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(648, 661, 'Lost Isles: QC-14245 || QR-14245 && !QR-24958'),
(648, 659, 'Lost Isles: QC-24958 || QR-24958');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry`=661;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 661, 0, 0, 28, 0, 14245, 0, 0, 0, 0, 0, '', ''),
(27, 0, 661, 0, 1, 8, 0, 14245, 0, 0, 0, 0, 0, '', ''),
(27, 0, 661, 0, 1, 8, 0, 24958, 0, 0, 1, 0, 0, '', '');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry`=659;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 659, 0, 0, 28, 0, 24958, 0, 0, 0, 0, 0, '', ''),
(27, 0, 659, 0, 1, 8, 0, 24958, 0, 0, 0, 0, 0, '', '');


DELETE FROM `terrain_swap_defaults` WHERE `MapId`=654;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(654, 638, 'Gilneas default terrain'),
(654, 655, 'Gilneas duskhaven: phase 1'),
(654, 656, 'Gilneas duskhaven: phase 2');



/* No terminado (Worgen Zones)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry` in (638,655,656);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 638, 0, 0,  8, 0, 14222, 0, 0, 1, 0, 0, '', ''),

(27, 0, 655, 0, 0,  9, 0, 14396, 0, 0, 0, 0, 0, '', ''),
(27, 0, 655, 0, 0, 28, 0, 14396, 0, 0, 0, 0, 0, '', ''),
(27, 0, 655, 0, 0,  8, 0, 14396, 0, 0, 0, 0, 0, '', ''),

(27, 0, 655, 0, 0,  9, 0, 14467, 0, 0, 1, 0, 0, '', ''),
(27, 0, 655, 0, 0, 28, 0, 14467, 0, 0, 1, 0, 0, '', ''),
(27, 0, 655, 0, 0,  8, 0, 14467, 0, 0, 1, 0, 0, '', ''),

(27, 0, 656, 0, 0,  9, 0, 14467, 0, 0, 0, 0, 0, '', ''),
(27, 0, 656, 0, 0, 28, 0, 14467, 0, 0, 0, 0, 0, '', ''),
(27, 0, 656, 0, 0,  8, 0, 14467, 0, 0, 0, 0, 0, '', '');




[Resistencia final] 14222

655 8 14386
656 8 14466

*/