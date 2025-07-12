
scoreboard players add @s mla.map_exclusive.tiny_block.fog_timer 1
execute if score @s mla.map_exclusive.tiny_block.fog_timer matches 320.. run function mla_map_exclusive:internal/tiny_block/handling/fog/remove
