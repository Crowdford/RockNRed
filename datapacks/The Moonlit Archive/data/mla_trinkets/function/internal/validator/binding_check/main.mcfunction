
#scoreboard players set $cob.pres bbl.main 0
#execute store result score $cob.pres bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}].components."minecraft:enchantments"."minecraft:binding_curse"
#execute if score $cob.pres bbl.main matches 1.. run scoreboard players set @s mla.trinkets.slot.1.state 1

data modify storage mla:temp sudo_root.trinkets.binding_check.current set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}]
data modify storage mla:temp sudo_root.trinkets.binding_check.past set from storage bbl:pldata sudo_root.working_data.bbl.inventory.past_tick[{Slot:9b}]

execute unless data storage bbl:pldata sudo_root.working_data.bbl.inventory.past_tick[{Slot:9b}] run data modify storage bbl:pldata sudo_root.working_data.bbl.inventory.past_tick[{Slot:9b}].dummy set value 1
execute unless data storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}] run data modify storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:9b}].dummy set value 1

scoreboard players set $cob.check bbl.main 0
execute store success score $cob.check bbl.main run data modify storage mla:temp sudo_root.trinkets.binding_check.past set from storage mla:temp sudo_root.trinkets.binding_check.current
execute if score @s mla.trinkets.slot.1.state matches 1.. if score $cob.check bbl.main matches 1 run function mla_trinkets:internal/validator/binding_check/reject_slot/1

