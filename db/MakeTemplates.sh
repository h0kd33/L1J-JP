#!/bin/bash
driver='mysql'
locale='ja'
mkdir -p ./templates
type ./schema/$driver/accounts.sql > ./templates/accounts.sql
type ./schema/$driver/armors.sql > ./templates/armors.sql
type ./schema/$driver/armor_sets.sql > ./templates/armor_sets.sql
type ./schema/$driver/ban_ips.sql > ./templates/ban_ips.sql
type ./schema/$driver/beginner_items.sql > ./templates/beginner_items.sql
type ./schema/$driver/board.sql > ./templates/board.sql
type ./schema/$driver/house_auction.sql > ./templates/house_auction.sql
type ./schema/$driver/castles.sql > ./templates/castles.sql
type ./schema/$driver/character_buddys.sql > ./templates/character_buddys.sql
type ./schema/$driver/character_buffs.sql > ./templates/character_buffs.sql
type ./schema/$driver/character_configs.sql > ./templates/character_configs.sql
type ./schema/$driver/character_quests.sql > ./templates/character_quests.sql
type ./schema/$driver/character_skills.sql > ./templates/character_skills.sql
type ./schema/$driver/character_bookmarks.sql > ./templates/character_bookmarks.sql
type ./schema/$driver/characters.sql > ./templates/characters.sql
type ./schema/$driver/clans.sql > ./templates/clans.sql
type ./schema/$driver/commands.sql > ./templates/commands.sql
type ./schema/$driver/cooking_ingredients.sql > ./templates/cooking_ingredients.sql
type ./schema/$driver/cooking_recipes.sql > ./templates/cooking_recipes.sql
type ./schema/$driver/door_gfxs.sql > ./templates/door_gfxs.sql
type ./schema/$driver/drop_rates.sql > ./templates/drop_rates.sql
type ./schema/$driver/drop_items.sql > ./templates/drop_items.sql
type ./schema/$driver/dungeons.sql > ./templates/dungeons.sql
type ./schema/$driver/dungeon_random.sql > ./templates/dungeon_random.sql
type ./schema/$driver/etc_items.sql > ./templates/etc_items.sql
type ./schema/$driver/return_locations.sql > ./templates/return_locations.sql
type ./schema/$driver/restart_locations.sql > ./templates/restart_locations.sql
type ./schema/$driver/houses.sql > ./templates/houses.sql
type ./schema/$driver/inns.sql > ./templates/inns.sql
type ./schema/$driver/inn_keys.sql > ./templates/inn_keys.sql
type ./schema/$driver/inventory_items.sql > ./templates/inventory_items.sql
type ./schema/$driver/letters.sql > ./templates/letters.sql
type ./schema/$driver/log_accelerator.sql > ./templates/log_accelerator.sql
type ./schema/$driver/log_chat.sql > ./templates/log_chat.sql
type ./schema/$driver/log_enchant.sql > ./templates/log_enchant.sql
type ./schema/$driver/magic_dolls.sql > ./templates/magic_dolls.sql
type ./schema/$driver/mails.sql > ./templates/mails.sql
type ./schema/$driver/map_ids.sql > ./templates/map_ids.sql
type ./schema/$driver/map_timers.sql > ./templates/map_timers.sql
type ./schema/$driver/mob_groups.sql > ./templates/mob_groups.sql
type ./schema/$driver/mob_skills.sql > ./templates/mob_skills.sql
type ./schema/$driver/npc.sql > ./templates/npc.sql
type ./schema/$driver/npc_actions.sql > ./templates/npc_actions.sql
type ./schema/$driver/npc_chats.sql > ./templates/npc_chats.sql
type ./schema/$driver/pet_items.sql > ./templates/pet_items.sql
type ./schema/$driver/pets.sql > ./templates/pets.sql
type ./schema/$driver/pet_types.sql > ./templates/pet_types.sql
type ./schema/$driver/polymorphs.sql > ./templates/polymorphs.sql
type ./schema/$driver/race_tickets.sql > ./templates/race_tickets.sql
type ./schema/$driver/resolvents.sql > ./templates/resolvents.sql
type ./schema/$driver/shops.sql > ./templates/shops.sql
type ./schema/$driver/skills.sql > ./templates/skills.sql
type ./schema/$driver/spawn_mobs.sql > ./templates/spawn_mobs.sql
type ./schema/$driver/spawn_boss.sql > ./templates/spawn_boss.sql
type ./schema/$driver/spawn_doors.sql > ./templates/spawn_doors.sql
type ./schema/$driver/spawn_furnitures.sql > ./templates/spawn_furnitures.sql
type ./schema/$driver/spawn_lights.sql > ./templates/spawn_lights.sql
type ./schema/$driver/spawn_npc.sql > ./templates/spawn_npc.sql
type ./schema/$driver/spawn_times.sql > ./templates/spawn_times.sql
type ./schema/$driver/spawn_traps.sql > ./templates/spawn_traps.sql
type ./schema/$driver/spawn_ub.sql > ./templates/spawn_ub.sql
type ./schema/$driver/spr_actions.sql > ./templates/spr_actions.sql
type ./schema/$driver/towns.sql > ./templates/towns.sql
type ./schema/$driver/traps.sql > ./templates/traps.sql
type ./schema/$driver/ub_managers.sql > ./templates/ub_managers.sql
type ./schema/$driver/ub_settings.sql > ./templates/ub_settings.sql
type ./schema/$driver/ub_times.sql > ./templates/ub_times.sql
type ./schema/$driver/weapons.sql > ./templates/weapons.sql
type ./schema/$driver/weapon_skills.sql > ./templates/weapon_skills.sql
type ./records/$locale/armors.sql >> ./templates/armors.sql
type ./records/$locale/armor_sets.sql >> ./templates/armor_sets.sql
type ./records/$locale/beginner_items.sql >> ./templates/beginner_items.sql
type ./records/$locale/house_auction.sql >> ./templates/house_auction.sql
type ./records/$locale/castles.sql >> ./templates/castles.sql
type ./records/$locale/commands.sql >> ./templates/commands.sql
type ./records/$locale/cooking_ingredients.sql >> ./templates/cooking_ingredients.sql
type ./records/$locale/cooking_recipes.sql >> ./templates/cooking_recipes.sql
type ./records/$locale/door_gfxs.sql >> ./templates/door_gfxs.sql
type ./records/$locale/drop_rates.sql >> ./templates/drop_rates.sql
type ./records/$locale/drop_items.sql >> ./templates/drop_items.sql
type ./records/$locale/dungeons.sql >> ./templates/dungeons.sql
type ./records/$locale/dungeon_random.sql >> ./templates/dungeon_random.sql
type ./records/$locale/etc_items.sql >> ./templates/etc_items.sql
type ./records/$locale/return_locations.sql >> ./templates/return_locations.sql
type ./records/$locale/restart_locations.sql >> ./templates/restart_locations.sql
type ./records/$locale/houses.sql >> ./templates/houses.sql
type ./records/$locale/inns.sql >> ./templates/inns.sql
type ./records/$locale/magic_dolls.sql >> ./templates/magic_dolls.sql
type ./records/$locale/map_ids.sql >> ./templates/map_ids.sql
type ./records/$locale/mob_groups.sql >> ./templates/mob_groups.sql
type ./records/$locale/mob_skills.sql >> ./templates/mob_skills.sql
type ./records/$locale/npc.sql >> ./templates/npc.sql
type ./records/$locale/npc_actions.sql >> ./templates/npc_actions.sql
type ./records/$locale/npc_chats.sql >> ./templates/npc_chats.sql
type ./records/$locale/pet_items.sql >> ./templates/pet_items.sql
type ./records/$locale/pet_types.sql >> ./templates/pet_types.sql
type ./records/$locale/polymorphs.sql >> ./templates/polymorphs.sql
type ./records/$locale/resolvents.sql >> ./templates/resolvents.sql
type ./records/$locale/shops.sql >> ./templates/shops.sql
type ./records/$locale/skills.sql >> ./templates/skills.sql
type ./records/$locale/spawn_mobs.sql >> ./templates/spawn_mobs.sql
type ./records/$locale/spawn_boss.sql >> ./templates/spawn_boss.sql
type ./records/$locale/spawn_doors.sql >> ./templates/spawn_doors.sql
type ./records/$locale/spawn_lights.sql >> ./templates/spawn_lights.sql
type ./records/$locale/spawn_npc.sql >> ./templates/spawn_npc.sql
type ./records/$locale/spawn_times.sql >> ./templates/spawn_times.sql
type ./records/$locale/spawn_traps.sql >> ./templates/spawn_traps.sql
type ./records/$locale/spawn_ub.sql >> ./templates/spawn_ub.sql
type ./records/$locale/spr_actions.sql >> ./templates/spr_actions.sql
type ./records/$locale/towns.sql >> ./templates/towns.sql
type ./records/$locale/traps.sql >> ./templates/traps.sql
type ./records/$locale/ub_managers.sql >> ./templates/ub_managers.sql
type ./records/$locale/ub_settings.sql >> ./templates/ub_settings.sql
type ./records/$locale/ub_times.sql >> ./templates/ub_times.sql
type ./records/$locale/weapons.sql >> ./templates/weapons.sql
type ./records/$locale/weapon_skills.sql >> ./templates/weapon_skills.sql
