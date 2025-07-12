
#execute as @e[type=snowball,tag=mla.tb.stupid] at @s run function mla_map_exclusive:internal/tiny_block/raycast/stupid

execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. as @e[type=interaction,scores={mla.map_exclusive.tiny_block_type=3}] at @s run function mla_map_exclusive:internal/tiny_block/handling/spawner/loop

execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. as @e[type=interaction,scores={mla.map_exclusive.tiny_block.fog_timer=1..}] at @s run function mla_map_exclusive:internal/tiny_block/handling/fog/loop

execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. as @e[type=donkey,tag=mla.chest_donkey] at @s run function mla_map_exclusive:internal/tiny_block/handling/chest/loop
