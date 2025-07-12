
execute as @p[advancements={mla_dev_tools:interact/right=true}] at @s run function bb:lib/pldata/read/call

execute store result storage mla:temp sudo_root.block.num int 1 run data get entity @p[advancements={mla_dev_tools:interact/right=true}] SelectedItemSlot

scoreboard players set $block_type mla.main 0

function mla_map_exclusive:internal/tiny_block/check_data with storage mla:temp sudo_root.block

execute as @p[advancements={mla_dev_tools:interact/right=true}] if data entity @s SelectedItem.components."minecraft:custom_data".mla_mb run function mla_map_exclusive:internal/tiny_block/placeon_raycast/start

