
#reset valid flag
tag @s remove valid
#store slots flag
execute store result score $slot_flag bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}].components."minecraft:custom_data".mla_trinkets_data.slots
scoreboard players set $is_gui bbl.main 0
execute store result score $is_gui bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}].components."minecraft:custom_data".mla_trinkets_data.gui
#store current slots type
scoreboard players operation $slot_type bbl.main = @s mla.trinkets.slot.1.type
#compare
function mla_trinkets:internal/validator/check

#scoreboard players set $cob.pres bbl.main 0
#execute store result score $cob.pres bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}].components."minecraft:enchantments"."minecraft:binding_curse"
#execute if score $cob.pres bbl.main matches 1.. run scoreboard players set @s mla.trinkets.slot.1.state 1

#Locked
execute if score @s mla.trinkets.slot.1.state matches 2.. run tag @s remove valid
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}].components."minecraft:custom_data".mla_trinkets_data.locked run tag @s add valid
#dropo
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}] if entity @s[tag=!valid] run function mla_trinkets:internal/validator/reject_slot/1




#reset valid flag
tag @s remove valid
#store slots flag
execute store result score $slot_flag bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:10b}].components."minecraft:custom_data".mla_trinkets_data.slots
scoreboard players set $is_gui bbl.main 0
execute store result score $is_gui bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:10b}].components."minecraft:custom_data".mla_trinkets_data.gui
#store current slots type
scoreboard players operation $slot_type bbl.main = @s mla.trinkets.slot.2.type
#compare
function mla_trinkets:internal/validator/check
#Locked
execute if score @s mla.trinkets.slot.2.state matches 2.. run tag @s remove valid
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:1b}].components."minecraft:custom_data".mla_trinkets_data.locked run tag @s add valid
#dropo
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:10b}] if entity @s[tag=!valid] run function mla_trinkets:internal/validator/reject_slot/2



#reset valid flag
tag @s remove valid
#store slots flag
execute store result score $slot_flag bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:11b}].components."minecraft:custom_data".mla_trinkets_data.slots
scoreboard players set $is_gui bbl.main 0
execute store result score $is_gui bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:11b}].components."minecraft:custom_data".mla_trinkets_data.gui
#store current slots type
scoreboard players operation $slot_type bbl.main = @s mla.trinkets.slot.3.type
#compare
function mla_trinkets:internal/validator/check
#Locked
execute if score @s mla.trinkets.slot.3.state matches 2.. run tag @s remove valid
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:11b}].components."minecraft:custom_data".mla_trinkets_data.locked run tag @s add valid
#dropo
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:11b}] if entity @s[tag=!valid] run function mla_trinkets:internal/validator/reject_slot/3



#reset valid flag
tag @s remove valid
#store slots flag
execute store result score $slot_flag bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:12b}].components."minecraft:custom_data".mla_trinkets_data.slots
scoreboard players set $is_gui bbl.main 0
execute store result score $is_gui bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:12b}].components."minecraft:custom_data".mla_trinkets_data.gui
#store current slots type
scoreboard players operation $slot_type bbl.main = @s mla.trinkets.slot.4.type
#compare
function mla_trinkets:internal/validator/check
#Locked
execute if score @s mla.trinkets.slot.4.state matches 2.. run tag @s remove valid
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:12b}].components."minecraft:custom_data".mla_trinkets_data.locked run tag @s add valid
#dropo
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:12b}] if entity @s[tag=!valid] run function mla_trinkets:internal/validator/reject_slot/4



#reset valid flag
tag @s remove valid
#store slots flag
execute store result score $slot_flag bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:13b}].components."minecraft:custom_data".mla_trinkets_data.slots
scoreboard players set $is_gui bbl.main 0
execute store result score $is_gui bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:13b}].components."minecraft:custom_data".mla_trinkets_data.gui
#store current slots type
scoreboard players operation $slot_type bbl.main = @s mla.trinkets.slot.5.type
#compare
function mla_trinkets:internal/validator/check
#Locked
execute if score @s mla.trinkets.slot.5.state matches 2.. run tag @s remove valid
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:13b}].components."minecraft:custom_data".mla_trinkets_data.locked run tag @s add valid
#dropo
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:13b}] if entity @s[tag=!valid] run function mla_trinkets:internal/validator/reject_slot/5



#reset valid flag
tag @s remove valid
#store slots flag
execute store result score $slot_flag bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:14b}].components."minecraft:custom_data".mla_trinkets_data.slots
scoreboard players set $is_gui bbl.main 0
execute store result score $is_gui bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:14b}].components."minecraft:custom_data".mla_trinkets_data.gui
#store current slots type
scoreboard players operation $slot_type bbl.main = @s mla.trinkets.slot.6.type
#compare
function mla_trinkets:internal/validator/check
#Locked
execute if score @s mla.trinkets.slot.6.state matches 2.. run tag @s remove valid
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:14b}].components."minecraft:custom_data".mla_trinkets_data.locked run tag @s add valid
#dropo
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:14b}] if entity @s[tag=!valid] run function mla_trinkets:internal/validator/reject_slot/6



#reset valid flag
tag @s remove valid
#store slots flag
execute store result score $slot_flag bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:15b}].components."minecraft:custom_data".mla_trinkets_data.slots
scoreboard players set $is_gui bbl.main 0
execute store result score $is_gui bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:15b}].components."minecraft:custom_data".mla_trinkets_data.gui
#store current slots type
scoreboard players operation $slot_type bbl.main = @s mla.trinkets.slot.7.type
#compare
function mla_trinkets:internal/validator/check
#Locked
execute if score @s mla.trinkets.slot.7.state matches 2.. run tag @s remove valid
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:15b}].components."minecraft:custom_data".mla_trinkets_data.locked run tag @s add valid
#dropo
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:15b}] if entity @s[tag=!valid] run function mla_trinkets:internal/validator/reject_slot/7



#reset valid flag
tag @s remove valid
#store slots flag
execute store result score $slot_flag bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:16b}].components."minecraft:custom_data".mla_trinkets_data.slots
scoreboard players set $is_gui bbl.main 0
execute store result score $is_gui bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:16b}].components."minecraft:custom_data".mla_trinkets_data.gui
#store current slots type
scoreboard players operation $slot_type bbl.main = @s mla.trinkets.slot.8.type
#compare
function mla_trinkets:internal/validator/check
#Locked
execute if score @s mla.trinkets.slot.1.state matches 8.. run tag @s remove valid
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:16b}].components."minecraft:custom_data".mla_trinkets_data.locked run tag @s add valid
#dropo
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:16b}] if entity @s[tag=!valid] run function mla_trinkets:internal/validator/reject_slot/8



#reset valid flag
tag @s remove valid
#store slots flag
execute store result score $slot_flag bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:17b}].components."minecraft:custom_data".mla_trinkets_data.slots
scoreboard players set $is_gui bbl.main 0
execute store result score $is_gui bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:17b}].components."minecraft:custom_data".mla_trinkets_data.gui
#store current slots type
scoreboard players operation $slot_type bbl.main = @s mla.trinkets.slot.9.type
#compare
function mla_trinkets:internal/validator/check
#Locked
execute if score @s mla.trinkets.slot.9.state matches 2.. run tag @s remove valid
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:17b}].components."minecraft:custom_data".mla_trinkets_data.locked run tag @s add valid
#dropo
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:17b}] if entity @s[tag=!valid] run function mla_trinkets:internal/validator/reject_slot/9

data remove block 10000000 1 10000000 Items
item replace block 10000000 1 10000000 container.0 from entity @s player.cursor
execute if data block 10000000 1 10000000 Items[0].components."minecraft:custom_data".mla_trinkets_data.gui run item replace entity @s player.cursor with air
