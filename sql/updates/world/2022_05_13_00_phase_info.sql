DELETE FROM `command` WHERE `name`='modify phaseid';
DELETE FROM `command` WHERE `name`='npc set phaseid';
DELETE FROM `command` WHERE `name`='gobject set phaseid';
INSERT INTO `command` (`name`, `security`, `help`) VALUES 
('modify phaseid', 2, 'Syntax: .modify phaseid #phaseid\r\n\r\nSelected character phaseid changed to #phasemask with related world vision update. Change active until in game phase changed, or GM-mode enable/disable, or re-login. Character pts phaseid update to same value.');
INSERT INTO `command` (`name`, `security`, `help`) VALUES 
('gobject set phaseid', 5, 'Syntax: .gobject set phaseid #guid #phaseid\r\n\r\nGameobject with DB guid #guid phaseid changed to #phaseid with related world vision update for players. Gameobject state saved to DB and persistent.');
INSERT INTO `command` (`name`, `security`, `help`) VALUES 
('npc set phaseid', 5, 'Syntax: .npc set phaseid #phaseid\r\n\r\nSelected unit or pet phaseid changed to #phasemask with related world vision update for players. In creature case state saved to DB and persistent. In pet case change active until in game phase changed for owner, owner re-login, or GM-mode enable/disable..');



UPDATE `phase_definitions` SET `terrainswapmap`= 0;

-- Falta a;adir en el comentario cuando deben de cambiar y hacerles las condiciones
DELETE FROM `terrain_swap_defaults` WHERE `MapId`=648;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(648, 661, 'Lost Isles: '),
(648, 659, 'Lost Isles: ');
DELETE FROM `terrain_swap_defaults` WHERE `MapId`=654;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(654, 638, 'Gilneas: '),
(654, 656, 'Gilneas: ');


DELETE FROM `terrain_swap_defaults` WHERE `MapId`=0;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(0, 1066, 'Stormwind Gunship (Pandaria Start Area)'); -- not condition?

DELETE FROM `terrain_swap_defaults` WHERE `MapId`=1;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(1, 1074, 'Orgrimmar Gunship (Pandaria Start Area)'); -- not condition?


DELETE FROM `terrain_swap_defaults` WHERE `MapId`=860;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(860, 975, 'Wandering Island - Turtle Hurted'),
(860, 976, 'Wandering Island - Turtle Healed');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry`=975;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 975, 0, 0, 8, 0, 29799, 0, 0, 1, 0, 0, '', ''),
(27, 0, 975, 0, 0, 8, 0, 30767, 0, 0, 0, 0, 0, '', ''),
(27, 0, 975, 0, 1, 28, 0, 30767, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry`=976;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 976, 0, 0, 8, 0, 29799, 0, 0, 0, 0, 0, '', '');


DELETE FROM `terrain_swap_defaults` WHERE `MapId`=870;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(870,  972, 'Jade Forest Battlefield Phase'),  -- not condition?
(870,  971, 'Jade Forest Alliance Hub Phase'), -- not condition?
(870, 1061, 'Horde Beach Daily Area'),
(870, 1062, 'Alliance Beach Daily Area'),
(870, 1076, 'Jade Forest Horde Starting Area'); -- not condition?

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry`=1061;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 1061, 0, 0, 8, 0, 32108, 0, 0, 0, 0, 0, '', ''),
(27, 0, 1061, 0, 1, 8, 0, 32109, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry`=1062;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 1062, 0, 0, 8, 0, 32108, 0, 0, 0, 0, 0, '', ''),
(27, 0, 1062, 0, 1, 8, 0, 32109, 0, 0, 0, 0, 0, '', '');

DELETE FROM `terrain_swap_defaults` WHERE `MapId`=1064;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES 
(1064, 1120, 'Thunder King Horde Hub'),
(1064, 1121, 'Thunder Island Alliance Hub');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry`=1120;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 1120, 0, 0, 28, 0, 32644, 0, 0, 1, 0, 0, '', ''),
(27, 0, 1120, 0, 0, 8, 0, 32212, 0, 0, 1, 0, 0, '', ''),
(27, 0, 1120, 0, 0, 28, 0, 32212, 0, 0, 1, 0, 0, '', ''),
(27, 0, 1120, 0, 0, 8, 0, 32644, 0, 0, 1, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry`=1121;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 1121, 0, 0, 28, 0, 32212, 0, 0, 1, 0, 0, '', ''),
(27, 0, 1121, 0, 0, 8, 0, 32212, 0, 0, 1, 0, 0, '', ''),
(27, 0, 1121, 0, 0, 8, 0, 32644, 0, 0, 1, 0, 0, '', ''),
(27, 0, 1121, 0, 0, 28, 0, 32644, 0, 0, 1, 0, 0, '', '');

DELETE FROM `terrain_swap_defaults` WHERE `MapId`=1 AND `TerrainSwapMap`=719;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES (1, 719, 'Mount Hyjal default terrain');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=27 AND `SourceGroup`=0 AND `SourceEntry`=719;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(27, 0, 719, 0, 0, 8, 0, 25372, 0, 0, 1, 0, 0, '', '');
