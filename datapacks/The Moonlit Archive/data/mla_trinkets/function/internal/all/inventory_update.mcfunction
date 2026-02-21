


function mla_trinkets:internal/validator/main

execute unless score @s mla.trinkets.update_cd matches 1.. run function mla_trinkets:internal/the_horse/on_update

function mla_trinkets:internal/slot_display/main

execute if entity @s[tag=mla_trinkets_open_container] as @e[type=minecraft:area_effect_cloud,distance=..12,tag=mla_trinkets_cloud] at @s run data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{mla_trinkets_data:{gui:1}}}}]
