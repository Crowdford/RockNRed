
execute if score @s mla.map_exclusive.shrink.loop matches 1 run function mla_map_exclusive:internal/shrink/unshrunk
execute if score @s mla.map_exclusive.shrink.loop matches 2 run attribute @s minecraft:scale base set 0.97
execute if score @s mla.map_exclusive.shrink.loop matches 3 run attribute @s minecraft:scale base set 0.94
execute if score @s mla.map_exclusive.shrink.loop matches 4 run attribute @s minecraft:scale base set 0.91
execute if score @s mla.map_exclusive.shrink.loop matches 5 run attribute @s minecraft:scale base set 0.88
execute if score @s mla.map_exclusive.shrink.loop matches 6 run attribute @s minecraft:scale base set 0.85
execute if score @s mla.map_exclusive.shrink.loop matches 7 run attribute @s minecraft:scale base set 0.82
execute if score @s mla.map_exclusive.shrink.loop matches 8 run attribute @s minecraft:scale base set 0.79
execute if score @s mla.map_exclusive.shrink.loop matches 9 run attribute @s minecraft:scale base set 0.76
execute if score @s mla.map_exclusive.shrink.loop matches 10 run attribute @s minecraft:scale base set 0.73
execute if score @s mla.map_exclusive.shrink.loop matches 11 run attribute @s minecraft:scale base set 0.70
execute if score @s mla.map_exclusive.shrink.loop matches 12 run attribute @s minecraft:scale base set 0.67
execute if score @s mla.map_exclusive.shrink.loop matches 13 run attribute @s minecraft:scale base set 0.64
execute if score @s mla.map_exclusive.shrink.loop matches 14 run attribute @s minecraft:scale base set 0.61
execute if score @s mla.map_exclusive.shrink.loop matches 15 run attribute @s minecraft:scale base set 0.58
execute if score @s mla.map_exclusive.shrink.loop matches 16 run attribute @s minecraft:scale base set 0.55
execute if score @s mla.map_exclusive.shrink.loop matches 17 run attribute @s minecraft:scale base set 0.52
execute if score @s mla.map_exclusive.shrink.loop matches 18 run attribute @s minecraft:scale base set 0.49
execute if score @s mla.map_exclusive.shrink.loop matches 19 run attribute @s minecraft:scale base set 0.46
execute if score @s mla.map_exclusive.shrink.loop matches 20 run attribute @s minecraft:scale base set 0.43
execute if score @s mla.map_exclusive.shrink.loop matches 21 run attribute @s minecraft:scale base set 0.40
execute if score @s mla.map_exclusive.shrink.loop matches 22 run attribute @s minecraft:scale base set 0.37
execute if score @s mla.map_exclusive.shrink.loop matches 23 run attribute @s minecraft:scale base set 0.34
execute if score @s mla.map_exclusive.shrink.loop matches 24 run attribute @s minecraft:scale base set 0.31
execute if score @s mla.map_exclusive.shrink.loop matches 25 run attribute @s minecraft:scale base set 0.28
execute if score @s mla.map_exclusive.shrink.loop matches 26 run attribute @s minecraft:scale base set 0.25
execute if score @s mla.map_exclusive.shrink.loop matches 27 run attribute @s minecraft:scale base set 0.22
execute if score @s mla.map_exclusive.shrink.loop matches 28 run function mla_map_exclusive:internal/shrink/full_shrunk

scoreboard players set $rng_max bbl.rng 5
scoreboard players set $rng_min bbl.rng 1
function bb:lib/rng/call
execute if score @s mla.map_exclusive.shrink.loop matches 2..28 if score $value bbl.rng matches 1 run playsound minecraft:entity.slime.jump player @s ~ ~ ~ 0.4 1.3

scoreboard players set $rng_max bbl.rng 4
scoreboard players set $rng_min bbl.rng 1
function bb:lib/rng/call
execute if score @s mla.map_exclusive.shrink.loop matches 2..28 if score $value bbl.rng matches 1 run playsound minecraft:block.bone_block.break player @s ~ ~ ~ 0.3 0.8

scoreboard players set $rng_max bbl.rng 9
scoreboard players set $rng_min bbl.rng 1
function bb:lib/rng/call
execute if score @s mla.map_exclusive.shrink.loop matches 2..28 if score $value bbl.rng matches 1 run playsound minecraft:entity.skeleton.hurt player @s ~ ~ ~ 0.5 0.8


execute if score @s mla.map_exclusive.shrink.loop matches 2..28 run particle minecraft:enchanted_hit ~ ~.5 ~ 0.4 0.5 0.4 0.01 2
execute if score @s mla.map_exclusive.shrink.loop matches 2..28 run particle item{item:"red_terracotta"} ~ ~.5 ~ 0.4 0.5 0.4 0.001 2 normal
execute if score @s mla.map_exclusive.shrink.loop matches 2..28 run particle item{item:"bone_block"} ~ ~.5 ~ 0.4 0.5 0.4 0.001 1 normal
