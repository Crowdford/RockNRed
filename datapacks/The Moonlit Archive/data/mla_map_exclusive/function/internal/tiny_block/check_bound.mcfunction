
execute at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~-.5 ~-.5 ~-.5 if entity @e[dx=0,dy=0,dz=0,type=marker,tag=mla.tb.hit_point] at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.25 ~ ~.25 run function mla_map_exclusive:internal/tiny_block/place_block/main
execute at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.5 ~-.5 ~-.5 if entity @e[dx=0,dy=0,dz=0,type=marker,tag=mla.tb.hit_point] at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.75 ~ ~.25 run function mla_map_exclusive:internal/tiny_block/place_block/main
execute at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~-.5 ~-.5 ~.5 if entity @e[dx=0,dy=0,dz=0,type=marker,tag=mla.tb.hit_point] at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.25 ~ ~.75 run function mla_map_exclusive:internal/tiny_block/place_block/main
execute at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.5 ~-.5 ~.5 if entity @e[dx=0,dy=0,dz=0,type=marker,tag=mla.tb.hit_point] at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.75 ~ ~.75 run function mla_map_exclusive:internal/tiny_block/place_block/main

execute at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~-.5 ~.5 ~-.5 if entity @e[dx=0,dy=0,dz=0,type=marker,tag=mla.tb.hit_point] at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.25 ~.5 ~.25 run function mla_map_exclusive:internal/tiny_block/place_block/main
execute at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.5 ~.5 ~-.5 if entity @e[dx=0,dy=0,dz=0,type=marker,tag=mla.tb.hit_point] at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.75 ~.5 ~.25 run function mla_map_exclusive:internal/tiny_block/place_block/main
execute at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~-.5 ~.5 ~.5 if entity @e[dx=0,dy=0,dz=0,type=marker,tag=mla.tb.hit_point] at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.25 ~.5 ~.75 run function mla_map_exclusive:internal/tiny_block/place_block/main
execute at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.5 ~.5 ~.5 if entity @e[dx=0,dy=0,dz=0,type=marker,tag=mla.tb.hit_point] at @e[type=marker,tag=mla.tb.hit_point,limit=1] align xyz positioned ~.75 ~.5 ~.75 run function mla_map_exclusive:internal/tiny_block/place_block/main

scoreboard players operation @e[type=interaction,tag=mla.interaction.tiny_block.new] mla.map_exclusive.tiny_block_type = @e[type=marker,tag=mla.tb.hit_point,limit=1,sort=nearest] mla.map_exclusive.tiny_block_type
execute as @e[type=interaction,tag=mla.interaction.tiny_block.new] at @s run function mla_map_exclusive:internal/tiny_block/transform/main
tag @e[type=interaction,tag=mla.interaction.tiny_block.new] remove mla.interaction.tiny_block.new

kill @e[type=marker,tag=mla.tb.hit_point]
