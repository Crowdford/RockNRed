
scoreboard players set $rng_max bbl.rng 2147483647
scoreboard players set $rng_min bbl.rng 1
function bb:lib/rng/call
execute store result storage bbl:temp sudo_root.id int 1 run scoreboard players get $value bbl.rng
function mla_trinkets:internal/the_horse/process_working_slot/set_id with storage bbl:temp sudo_root

data modify storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:attribute_modifiers"[0].slot set value "any"

data modify storage bbl:buildhorse sudo_root.build_attributes append from storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:attribute_modifiers"[0]

data remove storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:attribute_modifiers"[0]

execute if data storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:attribute_modifiers"[0] run function mla_trinkets:internal/the_horse/process_working_slot/munch_attributes
