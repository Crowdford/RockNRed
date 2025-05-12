
execute if score $module_enabled.trinkets mla.main matches 1 if entity @s[tag=mla_trinkets_open_container] as @e[type=minecraft:area_effect_cloud,distance=..12,tag=mla_trinkets_cloud] at @s run data merge entity @s {Age:1}
