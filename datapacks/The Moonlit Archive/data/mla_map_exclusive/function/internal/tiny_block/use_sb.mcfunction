
scoreboard players set @s mla.map_exclusive.tiny_block_use 0

execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. as @e[type=minecraft:snowball,distance=..3] at @s if data entity @s Item.components."minecraft:custom_data".mla_mb run kill @s
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. run function bb:lib/pldata/read/call
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. store result storage mla:temp sudo_root.block.num int 1 run data get entity @s SelectedItemSlot
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. run scoreboard players set $block_type mla.main 0
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. run function mla_map_exclusive:internal/tiny_block/check_data with storage mla:temp sudo_root.block
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. if score $block_type mla.main matches 1.. run function mla_map_exclusive:internal/tiny_block/raycast/start
