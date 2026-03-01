
#sanity cieling
execute if score @s mla.custom_attributes.hp.current > @s mla.custom_attributes.max_hp run scoreboard players operation @s mla.custom_attributes.hp.current = @s mla.custom_attributes.max_hp


#NORMAL HP
#Get player's max health
scoreboard players operation $temp bbl.main = @s mla.custom_attributes.max_hp
#Get player's current health
scoreboard players operation $temp2 bbl.main = @s mla.custom_attributes.hp.current
#Multiply current health by 100
scoreboard players operation $temp2 bbl.main *= $100 bbl.constant
#Divide current health by max health
scoreboard players operation $temp2 bbl.main /= $temp bbl.main
#Set max pip count
scoreboard players set $temp3 bbl.main 74
#Divide pip count by percentile health
scoreboard players operation $temp3 bbl.main *= $temp2 bbl.main
#Divide by 100 to get current health pip count
scoreboard players operation $temp3 bbl.main /= $100 bbl.constant
#Divide by 2 to get desired index count
scoreboard players operation $temp3 bbl.main *= $2 bbl.constant


#FLASH HP
#Get player's max health
scoreboard players operation $temp5 bbl.main = @s mla.custom_attributes.max_hp
#Get player's flash health
scoreboard players operation $temp6 bbl.main = @s mla.custom_attributes.hp.flashed
#Multiply current health by 100
scoreboard players operation $temp6 bbl.main *= $100 bbl.constant
#Divide current health by max health
scoreboard players operation $temp6 bbl.main /= $temp5 bbl.main
#Set max pip count
scoreboard players set $temp7 bbl.main 74
#Divide pip count by percentile health
scoreboard players operation $temp7 bbl.main *= $temp6 bbl.main
#Divide by 100 to get current health pip count
scoreboard players operation $temp7 bbl.main /= $100 bbl.constant
#Divide by 2 to get desired index count
scoreboard players operation $temp7 bbl.main *= $2 bbl.constant

#get current hp
scoreboard players operation $temp8 bbl.main = @s mla.custom_attributes.hp.current


#get blink timer
scoreboard players operation $temp4 bbl.main = @s mla.custom_attributes.hp.blink_timer
#decrement blink timer
execute if score @s mla.custom_attributes.hp.blink_timer matches 2.. run scoreboard players remove @s mla.custom_attributes.hp.blink_timer 1
#if blink timer out, cleanup
execute if score @s mla.custom_attributes.hp.blink_timer matches 1 run function mla_survival:internal/compile_bars/health/blink_end

data modify storage mla:survival sudo_root.built.hud.bar.health.outline set from storage mla:survival sudo_root.prebuilt.hud.bars.health.empty.outer.black

execute if score $temp4 bbl.main matches 2..4 run data modify storage mla:survival sudo_root.built.hud.bar.health.outline set from storage mla:survival sudo_root.prebuilt.hud.bars.health.empty.outer.black
execute if score $temp4 bbl.main matches 5..7 run data modify storage mla:survival sudo_root.built.hud.bar.health.outline set from storage mla:survival sudo_root.prebuilt.hud.bars.health.empty.outer.flash
execute if score $temp4 bbl.main matches 8..10 run data modify storage mla:survival sudo_root.built.hud.bar.health.outline set from storage mla:survival sudo_root.prebuilt.hud.bars.health.empty.outer.black
execute if score $temp4 bbl.main matches 11..13 run data modify storage mla:survival sudo_root.built.hud.bar.health.outline set from storage mla:survival sudo_root.prebuilt.hud.bars.health.empty.outer.flash
execute if score $temp4 bbl.main matches 14..16 run data modify storage mla:survival sudo_root.built.hud.bar.health.outline set from storage mla:survival sudo_root.prebuilt.hud.bars.health.empty.outer.black
execute if score $temp4 bbl.main matches 17..19 run data modify storage mla:survival sudo_root.built.hud.bar.health.outline set from storage mla:survival sudo_root.prebuilt.hud.bars.health.empty.outer.flash

execute store result storage mla:survival sudo_root.temp.health_calc.index_normal int 1 run scoreboard players get $temp3 bbl.main
execute store result storage mla:survival sudo_root.temp.health_calc.index_flash int 1 run scoreboard players get $temp7 bbl.main
execute store result storage mla:survival sudo_root.temp.health_calc.current_hp int 1 run scoreboard players get $temp8 bbl.main

function mla_survival:internal/compile_bars/health/macro with storage mla:survival sudo_root.temp.health_calc

execute if score $temp4 bbl.main matches 2..4 run data modify storage mla:survival sudo_root.built.hud.bar.health.flash set from storage mla:survival sudo_root.prebuilt.hud.bars.health.void
execute if score $temp4 bbl.main matches 8..10 run data modify storage mla:survival sudo_root.built.hud.bar.health.flash set from storage mla:survival sudo_root.prebuilt.hud.bars.health.void
execute if score $temp4 bbl.main matches 2..4 run data modify storage mla:survival sudo_root.built.hud.bar.health.flash set from storage mla:survival sudo_root.prebuilt.hud.bars.health.void
execute if score $temp4 bbl.main matches 14..16 run data modify storage mla:survival sudo_root.built.hud.bar.health.flash set from storage mla:survival sudo_root.prebuilt.hud.bars.health.void
