
-- START OF UPDATE
UPDATE item_template
SET
    `requiredlevel` = 10
WHERE
    `entry` IN (2411,5864,8629,13322,28481,5665,13331,15277,8588,29221);
-- END OF UPDATE
-- START OF UPDATE
UPDATE npc_trainer
SET
    `moneycost` = 100,
    `requiredlevel` = 10
WHERE
    `SpellID` IN (33388);
-- END OF UPDATE