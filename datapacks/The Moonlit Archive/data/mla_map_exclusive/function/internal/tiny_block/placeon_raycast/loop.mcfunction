
scoreboard players remove $step mla.main 1

execute positioned ~-.05 ~-.05 ~-.05 if entity @e[type=shulker,tag=mla.object,dx=0] run tag @e[type=shulker,tag=mla.object,dx=0] add mla.hit
execute positioned ~-.99 ~-.99 ~-.99 if entity @e[type=shulker,tag=mla.hit,dx=0] positioned ~1 ~1 ~1 positioned ^ ^ ^ run function mla_map_exclusive:internal/tiny_block/placeon_raycast/stop
tag @e[distance=..4] remove mla.hit

execute if score $step mla.main matches 1.. positioned ^ ^ ^.05 run function mla_map_exclusive:internal/tiny_block/placeon_raycast/loop
