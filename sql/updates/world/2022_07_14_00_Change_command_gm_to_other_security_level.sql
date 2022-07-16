/*Change command gm to other security level*/

UPDATE `command` SET `security` = 3 WHERE `name` = 'gm';
UPDATE `command` SET `security` = 3 WHERE `name` = 'gm visible';
UPDATE `command` SET `security` = 1 WHERE `name` = 'gm chat';
