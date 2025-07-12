
scoreboard players set @s mla.map_exclusive.tiny_block_stupid 1

execute as @e[type=marker,tag=mla.tb.hit_point,limit=1,sort=nearest] at @s run summon snowball ~ ~ ~ {Tags:["mla.tb.stupid"],Item:{id:"minecraft:orange_glazed_terracotta",count:1}}

execute as @e[type=marker,tag=mla.tb.hit_point,limit=1,sort=nearest] at @s run tp @s ^ ^ ^.2
