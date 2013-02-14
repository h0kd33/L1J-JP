-- ----------------------------
-- Table structure for `SKILLS`
-- ----------------------------
DROP TABLE IF EXISTS `SKILLS`;
CREATE TABLE `SKILLS` (
  `SKILL_ID` INT NOT NULL,
  `NAME` VARCHAR(255) NOT NULL DEFAULT '',
  `SKILL_LEVEL` INT NOT NULL DEFAULT '0',
  `SKILL_NUMBER` INT NOT NULL DEFAULT '0',
  `CONSUME_MP` INT NOT NULL DEFAULT '0',
  `CONSUME_HP` INT NOT NULL DEFAULT '0',
  `CONSUME_ITEM_ID` INT NOT NULL DEFAULT '0',
  `CONSUME_AMOUNT` INT NOT NULL DEFAULT '0',
  `REUSE_DELAY` INT NOT NULL DEFAULT '0',
  `BUFF_DURATION` INT NOT NULL DEFAULT '0',
  `TARGET` VARCHAR(255) NOT NULL DEFAULT '',
  `TARGET_TO` INT NOT NULL DEFAULT '0',
  `DAMAGE_VALUE` DOUBLE NOT NULL DEFAULT '0.0',
  `DAMAGE_DICE` INT NOT NULL DEFAULT '0',
  `DAMAGE_DICE_COUNT` INT NOT NULL DEFAULT '0',
  `PROBABILITY_VALUE` INT NOT NULL DEFAULT '0',
  `PROBABILITY_DICE` INT NOT NULL DEFAULT '0',
  `PROBABILITY_MAX` INT NOT NULL DEFAULT '-1',
  `ATTR` INT NOT NULL DEFAULT '0',
  `TYPE` INT NOT NULL DEFAULT '0',
  `LAWFUL` INT NOT NULL DEFAULT '0',
  `RANGED` INT NOT NULL DEFAULT '0',
  `AREA` INT NOT NULL DEFAULT '0',
  `THROUGH` INT NOT NULL DEFAULT '0',
  `ID` INT NOT NULL DEFAULT '0',
  `NAME_ID` VARCHAR(255) NOT NULL DEFAULT '',
  `ACTION_ID` INT NOT NULL DEFAULT '0',
  `CAST_GFX` INT NOT NULL DEFAULT '-1',
  `CAST_GFX2` INT NOT NULL DEFAULT '-1',
  `SYS_MSG_ID_HAPPEN` INT NOT NULL DEFAULT '0',
  `SYS_MSG_ID_STOP` INT NOT NULL DEFAULT '0',
  `SYS_MSG_ID_FAIL` INT NOT NULL DEFAULT '0',
  `CAN_CAST_WITH_INVIS` BOOLEAN NOT NULL DEFAULT '0',
  `IGNORES_COUNTER_MAGIC` BOOLEAN NOT NULL DEFAULT '0',
  `IS_BUFF` BOOLEAN NOT NULL DEFAULT '0',
  `IMPL` VARCHAR(255) DEFAULT NULL
);
-- ----------------------------
-- Index for `SKILLS`
-- ----------------------------
CREATE PRIMARY KEY `SKILLS_PK` ON `SKILLS`(`SKILL_ID`);
