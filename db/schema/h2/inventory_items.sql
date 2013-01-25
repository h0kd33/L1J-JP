-- ----------------------------
-- Table structure for `INVENTORY_ITEMS`
-- ----------------------------
CREATE TABLE IF NOT EXISTS `INVENTORY_ITEMS` (
  `ID` INT NOT NULL,
  `OWNER_ID` INT NOT NULL,
  `LOCATION` INT NOT NULL,
  `ITEM_ID` INT NOT NULL,
  `ITEM_COUNT` INT NOT NULL,
  `IS_EQUIPPED` BOOLEAN NOT NULL,
  `ENCHANT_LEVEL` TINYINT NOT NULL,
  `IS_IDENTIFIED` BOOLEAN NOT NULL,
  `DURABILITY` INT NOT NULL,
  `CHARGE_COUNT` INT NOT NULL,
  `CHARGE_TIME` INT NOT NULL,
  `EXPIRATION_TIME` DATETIME DEFAULT NULL,
  `LAST_USED` DATETIME DEFAULT NULL,
  `IS_SEALED` BOOLEAN NOT NULL,
  `ATTR_ENCHANT_KIND` TINYINT NOT NULL,
  `ATTR_ENCHANT_LEVEL` TINYINT NOT NULL,
  `AC` TINYINT DEFAULT '0',
  `STR` TINYINT NOT NULL DEFAULT '0',
  `CON` TINYINT NOT NULL DEFAULT '0',
  `DEX` TINYINT NOT NULL DEFAULT '0',
  `WIS` TINYINT NOT NULL DEFAULT '0',
  `CHA` TINYINT NOT NULL DEFAULT '0',
  `INT` TINYINT NOT NULL DEFAULT '0',
  `HP` INT NOT NULL DEFAULT '0',
  `HPR` INT NOT NULL DEFAULT '0',
  `MP` INT NOT NULL DEFAULT '0',
  `MPR` INT NOT NULL DEFAULT '0',
  `MR` TINYINT NOT NULL DEFAULT '0',
  `SP` TINYINT NOT NULL DEFAULT '0',
  `HIT_MODIFIER` TINYINT NOT NULL DEFAULT '0',
  `DMG_MODIFIER` TINYINT NOT NULL DEFAULT '0',
  `BOW_HIT_MODIFIER` TINYINT NOT NULL DEFAULT '0',
  `BOW_DMG_MODIFIER` TINYINT NOT NULL DEFAULT '0',
  `DEFENSE_EARTH` TINYINT NOT NULL DEFAULT '0',
  `DEFENSE_WATER` TINYINT NOT NULL DEFAULT '0',
  `DEFENSE_FIRE` TINYINT NOT NULL DEFAULT '0',
  `DEFENSE_WIND` TINYINT NOT NULL DEFAULT '0',
  `RESIST_STUN` TINYINT NOT NULL DEFAULT '0',
  `RESIST_STONE` TINYINT NOT NULL DEFAULT '0',
  `RESIST_SLEEP` TINYINT NOT NULL DEFAULT '0',
  `RESIST_FREEZE` TINYINT NOT NULL DEFAULT '0',
  `RESIST_HOLD` TINYINT NOT NULL DEFAULT '0',
  `RESIST_BLIND` TINYINT NOT NULL DEFAULT '0',
  `EXP_BONUS` TINYINT NOT NULL DEFAULT '0',
  `IS_HASTE` BOOLEAN NOT NULL DEFAULT '0',
  `CAN_BE_DMG` BOOLEAN NOT NULL DEFAULT '1',
  `IS_UNIQUE` BOOLEAN NOT NULL DEFAULT '0',
  `POTION_RECOVERY_RATE` TINYINT NOT NULL DEFAULT '0'
);
-- ----------------------------
-- Index for `INVENTORY_ITEMS`
-- ----------------------------
CREATE PRIMARY KEY IF NOT EXISTS `INVENTORY_ITEMS_PK` ON `INVENTORY_ITEMS`(`ID`);
CREATE INDEX IF NOT EXISTS `INVENTORY_ITEMS_OWNER_ID` ON `INVENTORY_ITEMS`(`OWNER_ID`);
