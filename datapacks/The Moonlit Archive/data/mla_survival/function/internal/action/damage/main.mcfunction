
#temp
#scoreboard players set $incoming_damage.amount bbl.main 20
#scoreboard players set $incoming_damage.type bbl.main 1

#stat save
scoreboard players operation @s mla.statistic.pre_mit_damage_taken += $incoming_damage.amount bbl.main

#set time to have fast refreshes
scoreboard players set @s mla.custom_attributes.hp.fast_refresh_timer 20
#set time to blink between black/white
scoreboard players set @s mla.custom_attributes.hp.blink_timer 20

#if no flashed present, set to current hp
scoreboard players add @s mla.custom_attributes.hp.flashed 0
execute if score @s mla.custom_attributes.hp.flashed matches 0 run scoreboard players operation @s mla.custom_attributes.hp.flashed = @s mla.custom_attributes.hp.current

#apply damage
scoreboard players operation @s mla.custom_attributes.hp.current -= $incoming_damage.amount bbl.main

#floor
execute if score @s mla.custom_attributes.hp.current matches ..0 run scoreboard players set @s mla.custom_attributes.hp.current 0

tag @s add self
playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1.2
playsound minecraft:entity.player.hurt player @a[distance=..16,tag=!self] ~ ~ ~ 0.5 1.2
tag @s remove self

function mla_survival:internal/compile_bars/main

function mla_trinkets:internal/inventory_or_slot_changed
