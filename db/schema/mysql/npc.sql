SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `npc`
-- ----------------------------
DROP TABLE IF EXISTS `npc`;
CREATE TABLE `npc` (
  `npc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_id` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `impl` varchar(255) NOT NULL DEFAULT '',
  `gfx_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `hp` int(10) unsigned NOT NULL DEFAULT '0',
  `mp` int(10) unsigned NOT NULL DEFAULT '0',
  `ac` int(10) NOT NULL DEFAULT '0',
  `str` int(10) NOT NULL DEFAULT '0',
  `con` int(10) NOT NULL DEFAULT '0',
  `dex` int(10) NOT NULL DEFAULT '0',
  `wis` int(10) NOT NULL DEFAULT '0',
  `int` int(10) NOT NULL DEFAULT '0',
  `mr` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `lawful` int(10) NOT NULL DEFAULT '0',
  `size` varchar(10) NOT NULL DEFAULT '',
  `weak_attr` int(10) NOT NULL DEFAULT '0',
  `ranged` int(10) unsigned NOT NULL DEFAULT '0',
  `tamable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `move_speed` int(10) unsigned NOT NULL DEFAULT '0',
  `atk_speed` int(10) unsigned NOT NULL DEFAULT '0',
  `alt_atk_speed` int(10) unsigned NOT NULL DEFAULT '0',
  `atk_magic_speed` int(10) unsigned NOT NULL DEFAULT '0',
  `sub_magic_speed` int(10) unsigned NOT NULL DEFAULT '0',
  `undead` int(10) unsigned NOT NULL DEFAULT '0',
  `poison_atk` int(10) unsigned NOT NULL DEFAULT '0',
  `paralysis_atk` int(10) unsigned NOT NULL DEFAULT '0',
  `agro` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agro_sosc` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agro_coi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `family` varchar(255) NOT NULL DEFAULT '',
  `agro_family` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agro_gfx_id1` int(10) NOT NULL DEFAULT '-1',
  `agro_gfx_id2` int(10) NOT NULL DEFAULT '-1',
  `pickup_item` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `digest_item` int(1) unsigned NOT NULL DEFAULT '0',
  `brave_speed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hpr_interval` int(10) unsigned NOT NULL DEFAULT '0',
  `hpr` int(10) unsigned NOT NULL DEFAULT '0',
  `mpr_interval` int(10) unsigned NOT NULL DEFAULT '0',
  `mpr` int(10) unsigned NOT NULL DEFAULT '0',
  `teleport` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `random_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `random_hp` int(10) unsigned NOT NULL DEFAULT '0',
  `random_mp` int(10) unsigned NOT NULL DEFAULT '0',
  `random_ac` tinyint(3) NOT NULL DEFAULT '0',
  `random_exp` int(10) unsigned NOT NULL DEFAULT '0',
  `random_lawful` int(10) NOT NULL DEFAULT '0',
  `damage_reduction` int(10) unsigned NOT NULL DEFAULT '0',
  `hard` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `doppel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_tu` tinyint(1) NOT NULL DEFAULT '0',
  `enable_erase` tinyint(1) NOT NULL DEFAULT '0',
  `bow_act_id` int(10) unsigned NOT NULL DEFAULT '0',
  `karma` int(10) NOT NULL DEFAULT '0',
  `transform_id` int(10) NOT NULL DEFAULT '-1',
  `transform_gfx_id` int(10) NOT NULL DEFAULT '0',
  `light_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount_fixed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `change_head` tinyint(1) NOT NULL DEFAULT '0',
  `cant_resurrect` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_equality_drop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `boss` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`npc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97006 DEFAULT CHARSET=utf8;
