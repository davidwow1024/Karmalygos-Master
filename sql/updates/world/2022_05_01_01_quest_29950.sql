UPDATE `creature_template` SET `ScriptName` = 'npc_day_off_li_li' WHERE `entry` = 56549;

DELETE FROM `spell_script_names` WHERE `spell_id`=106276;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (106276, 'spell_summon_li_li');