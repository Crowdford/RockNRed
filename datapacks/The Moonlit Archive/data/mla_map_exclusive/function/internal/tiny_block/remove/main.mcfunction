
execute on vehicle on passengers if entity @s[type=minecraft:shulker] run tp @s ~ -999 ~
execute on vehicle on passengers if entity @s[type=minecraft:shulker] run kill @s
execute on vehicle on passengers if entity @s[type=minecraft:donkey] run tag @s add die

execute on vehicle run kill @s

execute if score @s mla.map_exclusive.tiny_block_type matches 1 run function mla_map_exclusive:internal/tiny_block/remove/moss
execute if score @s mla.map_exclusive.tiny_block_type matches 2 run function mla_map_exclusive:internal/tiny_block/remove/chest
execute if score @s mla.map_exclusive.tiny_block_type matches 3 run function mla_map_exclusive:internal/tiny_block/remove/spawner
execute if score @s mla.map_exclusive.tiny_block_type matches 4 run function mla_map_exclusive:internal/tiny_block/remove/plank
execute if score @s mla.map_exclusive.tiny_block_type matches 5 run function mla_map_exclusive:internal/tiny_block/remove/stone_brick
execute if score @s mla.map_exclusive.tiny_block_type matches 6 run function mla_map_exclusive:internal/tiny_block/remove/glass
execute if score @s mla.map_exclusive.tiny_block_type matches 7 run function mla_map_exclusive:internal/tiny_block/remove/obsidian
execute if score @s mla.map_exclusive.tiny_block_type matches 8 run function mla_map_exclusive:internal/tiny_block/remove/bricks
execute if score @s mla.map_exclusive.tiny_block_type matches 9 run function mla_map_exclusive:internal/tiny_block/remove/glowstone
execute if score @s mla.map_exclusive.tiny_block_type matches 10 run function mla_map_exclusive:internal/tiny_block/remove/fog
execute if score @s mla.map_exclusive.tiny_block_type matches 11 run function mla_map_exclusive:internal/tiny_block/remove/lapis
execute if score @s mla.map_exclusive.tiny_block_type matches 12 run function mla_map_exclusive:internal/tiny_block/remove/wool
execute if score @s mla.map_exclusive.tiny_block_type matches 13 run function mla_map_exclusive:internal/tiny_block/remove/cat

kill @s
