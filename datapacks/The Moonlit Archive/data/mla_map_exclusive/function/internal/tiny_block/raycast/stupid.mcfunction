
scoreboard players remove @s mla.map_exclusive.tiny_block_stupid 1

execute if score @s mla.map_exclusive.tiny_block_stupid matches ..0 unless entity @e[type=snowball,tag=mla.tb.stupid] run function mla_map_exclusive:internal/tiny_block/raycast/stupid_stupid
execute if score @s mla.map_exclusive.tiny_block_stupid matches ..0 if entity @e[type=snowball,tag=mla.tb.stupid] run kill @e[type=snowball,tag=mla.tb.stupid]
#execute if score @s mla.map_exclusive.tiny_block_stupid matches ..0 as @e[type=marker,tag=mla.tb.hit_point] at @s run particle minecraft:electric_spark ~ ~ ~
execute if score @s mla.map_exclusive.tiny_block_stupid matches ..0 run function mla_map_exclusive:internal/tiny_block/check_bound
