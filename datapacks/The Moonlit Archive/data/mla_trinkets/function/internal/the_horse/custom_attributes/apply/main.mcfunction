
scoreboard players set @s mla.custom_attributes.speed 1150
scoreboard players set @s mla.custom_attributes.max_hp 100
scoreboard players set @s mla.custom_attributes.might 0
scoreboard players set @s mla.custom_attributes.magic 0
scoreboard players set @s mla.custom_attributes.manip 0

scoreboard players set @s mla.survival.hunger.max 100
scoreboard players set @s mla.survival.thirst.max 100
scoreboard players set @s mla.survival.sleep.max 100
scoreboard players set @s mla.survival.stamina.max 100
scoreboard players set @s mla.survival.sickness.max 100

execute if data storage mla:temp sudo_root.trinkets.working.sort.temp.consol.final[0] run function mla_trinkets:internal/the_horse/custom_attributes/apply/munch

data remove storage mla:temp sudo_root.trinkets.working.stat
execute store result storage mla:temp sudo_root.trinkets.working.stat.speed int 1 run scoreboard players get @s mla.custom_attributes.speed
function mla_trinkets:internal/the_horse/custom_attributes/apply/real with storage mla:temp sudo_root.trinkets.working.stat
