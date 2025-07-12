
$execute unless entity @s[tag=mla.cancel] positioned $(tile_x) $(tile_y) $(tile_z) align xyz positioned ~$(point_x) ~$(point_y) ~$(point_z) run summon marker ~ ~ ~ {Tags:["mla.tb.hit_point"]}
tag @s remove mla.cancel

scoreboard players operation @e[type=marker,tag=mla.tb.hit_point] mla.map_exclusive.tiny_block_type = $block_type mla.main

tag @s add this

execute as @e[type=marker,tag=mla.tb.hit_point] at @s run tp @s ~ ~ ~ facing entity @p[tag=this] eyes
execute as @e[type=marker,tag=mla.tb.hit_point] at @s run tp @s ^ ^ ^.1

execute as @e[type=marker,tag=mla.tb.hit_point] at @s run summon snowball ~ ~ ~ {Tags:["mla.tb.stupid"],Item:{id:"minecraft:orange_glazed_terracotta",count:1}}

#execute as @e[type=snowball,limit=1] at @s run particle minecraft:electric_spark ~ ~ ~

#execute as @e[type=marker,tag=mla.tb.hit_point] at @s run summon spectral_arrow ~ ~ ~ {Tags:["mla.tb.stupid"]}
#execute as @e[type=arrow,distance=..2,tag=mla.tb.stupid] at @s run scoreboard players set @s mla.map_exclusive.tiny_block_stupid 2
#if data entity @s {inGround:1b} run say in
#kill @e[type=arrow]

#execute as @e[type=marker,tag=mla.tb.hit_point] at @s run particle minecraft:happy_villager ~ ~ ~

tag @s remove this

scoreboard players set @s mla.map_exclusive.tiny_block_stupid 2

#$execute positioned $(tile_x) $(tile_y) $(tile_z) align xyz positioned ~$(point_x) ~$(point_y) ~$(point_z) run particle minecraft:electric_spark ~ ~ ~

#$say $(tile_x)$(point_x) $(tile_y)$(point_y) $(tile_z)$(point_z)

#kill @e[type=minecraft:marker,tag=mla.tb.hit_point]
