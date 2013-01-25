-- ----------------------------
-- Table structure for `ARMOR_SETS`
-- ----------------------------
DROP TABLE IF EXISTS `ARMOR_SETS`;
CREATE TABLE `ARMOR_SETS` (
  `ID` INT NOT NULL,
  `NOTE` VARCHAR(255) DEFAULT NULL,
  `SETS` VARCHAR(1000) NOT NULL,
  `POLY_ID` INT NOT NULL DEFAULT '-1',
  `AC` TINYINT NOT NULL DEFAULT '0',
  `HP` INT NOT NULL DEFAULT '0',
  `MP` INT NOT NULL DEFAULT '0',
  `HPR` INT NOT NULL DEFAULT '0',
  `MPR` INT NOT NULL DEFAULT '0',
  `STR` TINYINT NOT NULL DEFAULT '0',
  `DEX` TINYINT NOT NULL DEFAULT '0',
  `CON` TINYINT NOT NULL DEFAULT '0',
  `WIS` TINYINT NOT NULL DEFAULT '0',
  `CHA` TINYINT NOT NULL DEFAULT '0',
  `INT` TINYINT NOT NULL DEFAULT '0',
  `SP` TINYINT NOT NULL DEFAULT '0',
  `MR` TINYINT NOT NULL DEFAULT '0',
  `DAMAGE_REDUCTION` TINYINT NOT NULL DEFAULT '0',
  `WEIGHT_REDUCTION` TINYINT NOT NULL DEFAULT '0',
  `HIT_MODIFIER` TINYINT NOT NULL DEFAULT '0',
  `DMG_MODIFIER` TINYINT NOT NULL DEFAULT '0',
  `BOW_HIT_MODIFIER` TINYINT NOT NULL DEFAULT '0',
  `BOW_DMG_MODIFIER` TINYINT NOT NULL DEFAULT '0',
  `DEFENSE_WATER` TINYINT NOT NULL DEFAULT '0',
  `DEFENSE_WIND` TINYINT NOT NULL DEFAULT '0',
  `DEFENSE_FIRE` TINYINT NOT NULL DEFAULT '0',
  `DEFENSE_EARTH` TINYINT NOT NULL DEFAULT '0',
  `RESIST_STUN` TINYINT NOT NULL DEFAULT '0',
  `RESIST_STONE` TINYINT NOT NULL DEFAULT '0',
  `RESIST_SLEEP` TINYINT NOT NULL DEFAULT '0',
  `RESIST_FREEZE` TINYINT NOT NULL DEFAULT '0',
  `RESIST_HOLD` TINYINT NOT NULL DEFAULT '0',
  `RESIST_BLIND` TINYINT NOT NULL DEFAULT '0',
  `IS_HASTE` BOOLEAN NOT NULL DEFAULT '0',
  `EXP_BONUS` TINYINT NOT NULL DEFAULT '0',
  `POTION_RECOVERY_RATE` TINYINT NOT NULL DEFAULT '0';
);
-- ----------------------------
-- Index for `ARMOR_SETS`
-- ----------------------------
CREATE PRIMARY KEY `ARMOR_SETS_PK` ON `ARMOR_SETS`(`ID`);
