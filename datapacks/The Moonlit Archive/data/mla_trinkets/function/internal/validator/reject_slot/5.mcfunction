
data remove block 10000000 1 10000000 Items
item replace block 10000000 1 10000000 container.0 from entity @s player.cursor
item replace entity @s player.cursor from entity @s inventory.4
item replace entity @s inventory.4 with air
execute if data block 10000000 1 10000000 Items[0].components."minecraft:custom_data".mla_trinkets_data.gui run data remove block 10000000 1 10000000 Items
execute if data block 10000000 1 10000000 Items[0] run item replace entity @s inventory.4 from block 10000000 1 10000000 container.0

execute store result score $slot_flag bbl.main run data get entity @s Inventory[{Slot:13b}].components."minecraft:custom_data".mla_trinkets_data.slots
function mla_trinkets:internal/validator/check
execute if entity @s[tag=!valid] run function bb:internal/systems/drop/checked/13
execute if entity @e[distance=..1,type=item] as @e[type=item,distance=..1] run data merge entity @s {PickupDelay:0s}

function mla_trinkets:internal/validator/reject_slot/error_noise
