
particle minecraft:explosion ~ ~.1 ~ 0.1 0.1 0.1 0.01 1 normal

playsound minecraft:entity.explode player @a[distance=..16] ~ ~ ~ 0.4 2

execute if entity @p[advancements={mla_main:interact/left=true},gamemode=!creative] run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":{"color":"white","italic":false,"text":"ᵐᵉᵒʷ"},"minecraft:item_model":"map_exclusive:blocks/gato","minecraft:custom_data":{mla_mb:13},"minecraft:max_stack_size":64}}}

execute as @a[distance=..2] at @s run damage @s 1 minecraft:explosion
execute as @e[distance=..2,type=#bb:hostile] at @s run damage @s 1 minecraft:explosion
