
#THIRST
scoreboard players add @s mla.survival.thirst.exhaustion 4

execute if score @s mla.survival.thirst.exhaustion matches 100.. if score @s mla.survival.thirst.current matches 1.. run scoreboard players remove @s mla.survival.thirst.current 1
execute if score @s mla.survival.thirst.exhaustion matches 100.. run function mla_trinkets:internal/all/inventory_update
execute if score @s mla.survival.thirst.exhaustion matches 100.. run scoreboard players remove @s mla.survival.thirst.exhaustion 100
execute if score @s mla.survival.thirst.current matches ..0 run scoreboard players set @s mla.survival.thirst.current 0

#HUNGER

scoreboard players add @s mla.survival.hunger.exhaustion 3

scoreboard players set $rng_min bbl.rng 0
scoreboard players set $rng_max bbl.rng 2
function bb:lib/rng/call
execute if score $value bbl.rng matches 1.. run scoreboard players operation @s mla.survival.hunger.exhaustion += $value bbl.rng

execute if score @s mla.survival.hunger.exhaustion matches 100.. if score @s mla.survival.hunger.current matches 1.. run scoreboard players remove @s mla.survival.hunger.current 1
execute if score @s mla.survival.hunger.exhaustion matches 100.. run function mla_trinkets:internal/all/inventory_update
execute if score @s mla.survival.hunger.exhaustion matches 100.. run scoreboard players remove @s mla.survival.hunger.exhaustion 100
execute if score @s mla.survival.thirst.current matches ..0 run scoreboard players set @s mla.survival.hunger.current 0

#SLEEP

scoreboard players add @s mla.survival.sleep.exhaustion 2
scoreboard players set $rng_min bbl.rng 0
scoreboard players set $rng_max bbl.rng 3
function bb:lib/rng/call
execute if score $value bbl.rng matches 1.. run scoreboard players operation @s mla.survival.sleep.exhaustion += $value bbl.rng

execute if score @s mla.survival.sleep.exhaustion matches 100.. if score @s mla.survival.sleep.current matches 1.. run scoreboard players remove @s mla.survival.sleep.current 1
execute if score @s mla.survival.sleep.exhaustion matches 100.. run function mla_trinkets:internal/all/inventory_update
execute if score @s mla.survival.sleep.exhaustion matches 100.. run scoreboard players remove @s mla.survival.sleep.exhaustion 100
execute if score @s mla.survival.thirst.current matches ..0 run scoreboard players set @s mla.survival.sleep.current 0
