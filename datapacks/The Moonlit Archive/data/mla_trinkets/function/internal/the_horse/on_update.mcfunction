
clear @s clock[minecraft:custom_data={mla_trinkets_data:{gui:1}}]

scoreboard players set @s mla.trinkets.update_cd 3

item replace entity @s armor.head with clock[item_model="trinkets:gui/empty",equippable={slot:"head",equip_sound:"ui.loom.take_result",swappable:false,damage_on_hurt:false},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},max_stack_size=1,custom_data={a:1},tooltip_display={hide_tooltip:true}] 1
item replace entity @s armor.chest with clock[item_model="trinkets:gui/empty",equippable={slot:"chest",equip_sound:"ui.loom.take_result",swappable:false,damage_on_hurt:false},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},max_stack_size=1,custom_data={a:1},tooltip_display={hide_tooltip:true}] 1
item replace entity @s armor.legs with clock[item_model="trinkets:gui/empty",equippable={slot:"legs",equip_sound:"ui.loom.take_result",swappable:false,damage_on_hurt:false},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},max_stack_size=1,custom_data={a:1},tooltip_display={hide_tooltip:true}] 1
item replace entity @s armor.feet with clock[item_model="trinkets:gui/empty",equippable={slot:"feet",equip_sound:"ui.loom.take_result",swappable:false,damage_on_hurt:false},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},max_stack_size=1,custom_data={a:1},tooltip_display={hide_tooltip:true}] 1

item replace entity @s armor.body with air
data remove storage bbl:buildhorse sudo_root.build_enchants
data remove storage bbl:buildhorse sudo_root.build_attributes
data modify storage bbl:buildhorse sudo_root.build_enchants set value [{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}]

item replace block 10000000 1 10000000 container.0 with clock[equippable={slot:"body",equip_sound:"block.candle.ambient",swappable:false,damage_on_hurt:false},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},unbreakable={},max_stack_size=1,custom_name={"bold":true,"color":"#FF2921","italic":false,"text":"The Evil and Intimidating Horse:"}] 1
data modify storage bbl:buildhorse sudo_root.horse set from block 10000000 1 10000000 Items[0]

#say check

function bb:lib/pldata/read/call

#1
data remove storage bbl:temp sudo_root
data modify storage bbl:temp sudo_root.trinkets.working.slot set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}]
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}] run function mla_trinkets:internal/the_horse/process_working_slot/main

#2
data remove storage bbl:temp sudo_root
data modify storage bbl:temp sudo_root.trinkets.working.slot set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:10b}]
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:10b}] run function mla_trinkets:internal/the_horse/process_working_slot/main

#3
data remove storage bbl:temp sudo_root
data modify storage bbl:temp sudo_root.trinkets.working.slot set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:11b}]
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:11b}] run function mla_trinkets:internal/the_horse/process_working_slot/main

#4
data remove storage bbl:temp sudo_root
data modify storage bbl:temp sudo_root.trinkets.working.slot set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:12b}]
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:12b}] run function mla_trinkets:internal/the_horse/process_working_slot/main

#5
data remove storage bbl:temp sudo_root
data modify storage bbl:temp sudo_root.trinkets.working.slot set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:13b}]
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:13b}] run function mla_trinkets:internal/the_horse/process_working_slot/main

#6
data remove storage bbl:temp sudo_root
data modify storage bbl:temp sudo_root.trinkets.working.slot set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:14b}]
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:14b}] run function mla_trinkets:internal/the_horse/process_working_slot/main

#7
data remove storage bbl:temp sudo_root
data modify storage bbl:temp sudo_root.trinkets.working.slot set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:15b}]
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:15b}] run function mla_trinkets:internal/the_horse/process_working_slot/main

#8
data remove storage bbl:temp sudo_root
data modify storage bbl:temp sudo_root.trinkets.working.slot set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:16b}]
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:16b}] run function mla_trinkets:internal/the_horse/process_working_slot/main

#9
data remove storage bbl:temp sudo_root
data modify storage bbl:temp sudo_root.trinkets.working.slot set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:17b}]
execute if data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:17b}] run function mla_trinkets:internal/the_horse/process_working_slot/main


execute if data storage bbl:buildhorse sudo_root.build_enchants run function mla_trinkets:internal/the_horse/enchants/compile
function mla_trinkets:internal/the_horse/enchants/set_enchants with storage bbl:concat sudo_root

data modify storage bbl:buildhorse sudo_root.horse.components."minecraft:attribute_modifiers" set from storage bbl:buildhorse sudo_root.build_attributes

data modify block 10000000 1 10000000 Items[0] set from storage bbl:buildhorse sudo_root.horse
item replace entity @s armor.body from block 10000000 1 10000000 container.0
stopsound @s * minecraft:block.candle.ambient


#execute store result score $slot_check bbl.main run scoreboard players get @s mla.trinkets.slot.1.type

