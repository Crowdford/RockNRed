
item modify entity @s[gamemode=!creative] weapon.mainhand bb:deduct

scoreboard players set $step mla.main 200

execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~ ~ run function mla_map_exclusive:internal/tiny_block/placeon_raycast/loop
