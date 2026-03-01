
#LEG - SURVIVAL STATUS
data remove block 10000000 1 10000000 Items
item replace block 10000000 1 10000000 container.0 with clock[equippable={slot:"legs",equip_sound:"block.candle.ambient"},tooltip_style="map_exclusive:common",tooltip_display={hidden_components:["enchantments"]},item_model="mla:survival/gui/health",enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},max_stack_size=1,custom_data={mla_trinkets_data:{gui:1}}] 1

execute store result storage bbl:temp sudo_root.stats.hunger_max int 1 run scoreboard players get @s mla.survival.hunger.max
execute store result storage bbl:temp sudo_root.stats.thirst_max int 1 run scoreboard players get @s mla.survival.thirst.max
execute store result storage bbl:temp sudo_root.stats.sickness_max int 1 run scoreboard players get @s mla.survival.sickness.max
execute store result storage bbl:temp sudo_root.stats.sleep_max int 1 run scoreboard players get @s mla.survival.sleep.max
execute store result storage bbl:temp sudo_root.stats.stamina_max int 1 run scoreboard players get @s mla.survival.stamina.max
execute store result storage bbl:temp sudo_root.stats.hunger_current int 1 run scoreboard players get @s mla.survival.hunger.current
execute store result storage bbl:temp sudo_root.stats.thirst_current int 1 run scoreboard players get @s mla.survival.thirst.current
execute store result storage bbl:temp sudo_root.stats.sickness_current int 1 run scoreboard players get @s mla.survival.sickness.current
execute store result storage bbl:temp sudo_root.stats.stamina_current int 1 run scoreboard players get @s mla.survival.stamina.current
execute store result storage bbl:temp sudo_root.stats.sleep_current int 1 run scoreboard players get @s mla.survival.sleep.current

#CALC HUNGER %
scoreboard players operation $temp bbl.main = @s mla.survival.hunger.max
scoreboard players operation $temp2 bbl.main = @s mla.survival.hunger.current
scoreboard players operation $temp2 bbl.main *= $100 bbl.constant
scoreboard players operation $temp2 bbl.main /= $temp bbl.main
execute if score $temp2 bbl.main matches ..20 run data modify storage bbl:temp sudo_root.stats.hunger_color set value "AF1700"
execute if score $temp2 bbl.main matches 21..40 run data modify storage bbl:temp sudo_root.stats.hunger_color set value "AF5200"
execute if score $temp2 bbl.main matches 41..70 run data modify storage bbl:temp sudo_root.stats.hunger_color set value "AF8C00"
execute if score $temp2 bbl.main matches 70.. run data modify storage bbl:temp sudo_root.stats.hunger_color set value "00AF26"

#CALC THIRST %
scoreboard players operation $temp bbl.main = @s mla.survival.thirst.max
scoreboard players operation $temp2 bbl.main = @s mla.survival.thirst.current
scoreboard players operation $temp2 bbl.main *= $100 bbl.constant
scoreboard players operation $temp2 bbl.main /= $temp bbl.main
execute if score $temp2 bbl.main matches ..20 run data modify storage bbl:temp sudo_root.stats.thirst_color set value "AF1700"
execute if score $temp2 bbl.main matches 21..40 run data modify storage bbl:temp sudo_root.stats.thirst_color set value "AF5200"
execute if score $temp2 bbl.main matches 41..70 run data modify storage bbl:temp sudo_root.stats.thirst_color set value "AF8C00"
execute if score $temp2 bbl.main matches 70.. run data modify storage bbl:temp sudo_root.stats.thirst_color set value "00AF26"

#CALC SLEEP %
scoreboard players operation $temp bbl.main = @s mla.survival.sleep.max
scoreboard players operation $temp2 bbl.main = @s mla.survival.sleep.current
scoreboard players operation $temp2 bbl.main *= $100 bbl.constant
scoreboard players operation $temp2 bbl.main /= $temp bbl.main
execute if score $temp2 bbl.main matches ..20 run data modify storage bbl:temp sudo_root.stats.sleep_color set value "AF1700"
execute if score $temp2 bbl.main matches 21..40 run data modify storage bbl:temp sudo_root.stats.sleep_color set value "AF5200"
execute if score $temp2 bbl.main matches 41..70 run data modify storage bbl:temp sudo_root.stats.sleep_color set value "AF8C00"
execute if score $temp2 bbl.main matches 70.. run data modify storage bbl:temp sudo_root.stats.sleep_color set value "00AF26"

#CALC STAMINA %
scoreboard players operation $temp bbl.main = @s mla.survival.stamina.max
scoreboard players operation $temp2 bbl.main = @s mla.survival.stamina.current
scoreboard players operation $temp2 bbl.main *= $100 bbl.constant
scoreboard players operation $temp2 bbl.main /= $temp bbl.main
execute if score $temp2 bbl.main matches ..20 run data modify storage bbl:temp sudo_root.stats.stamina_color set value "AF1700"
execute if score $temp2 bbl.main matches 21..40 run data modify storage bbl:temp sudo_root.stats.stamina_color set value "AF5200"
execute if score $temp2 bbl.main matches 41..70 run data modify storage bbl:temp sudo_root.stats.stamina_color set value "AF8C00"
execute if score $temp2 bbl.main matches 70.. run data modify storage bbl:temp sudo_root.stats.stamina_color set value "00AF26"

#CALC SICKNESS %
scoreboard players operation $temp bbl.main = @s mla.survival.sickness.max
scoreboard players operation $temp2 bbl.main = @s mla.survival.sickness.current
scoreboard players operation $temp2 bbl.main *= $100 bbl.constant
scoreboard players operation $temp2 bbl.main /= $temp bbl.main
execute if score $temp2 bbl.main matches 80.. run data modify storage bbl:temp sudo_root.stats.sickness_color set value "AF1700"
execute if score $temp2 bbl.main matches 41..79 run data modify storage bbl:temp sudo_root.stats.sickness_color set value "AF5200"
execute if score $temp2 bbl.main matches 11..40 run data modify storage bbl:temp sudo_root.stats.sickness_color set value "AF8C00"
execute if score $temp2 bbl.main matches ..10 run data modify storage bbl:temp sudo_root.stats.sickness_color set value "00AF26"

function mla_survival:internal/slot_display/leg with storage bbl:temp sudo_root.stats
item replace entity @s armor.legs from block 10000000 1 10000000 container.0
