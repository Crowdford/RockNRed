
#stat save
scoreboard players add @s mla.statistic.stamina_spent 1

#set time to have fast refreshes
scoreboard players set @s mla.custom_attributes.hp.fast_refresh_timer 11
#set time to blink between black/white
scoreboard players set @s mla.survival.stamina.blink_timer 10

#if no flashed present, set to current hp
scoreboard players add @s mla.survival.stamina.flashed 0
execute if score @s mla.survival.stamina.flashed matches 0 run scoreboard players operation @s mla.survival.stamina.flashed = @s mla.survival.stamina.current

scoreboard players remove @s mla.survival.stamina.current 1

#tag @s add self
#playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1.2
#playsound minecraft:entity.player.hurt player @a[distance=..16,tag=!self] ~ ~ ~ 0.5 1.2
#tag @s remove self
