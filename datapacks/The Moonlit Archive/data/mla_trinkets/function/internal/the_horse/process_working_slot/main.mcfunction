
data modify storage bbl:temp sudo_root.temp.enchants set from storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:enchantments"

function mla_trinkets:internal/the_horse/process_working_slot/enchant_to_string with storage bbl:temp sudo_root.temp
function bb:internal/systems/string_manip/basic_tear/start

function bb:internal/systems/string_manip/compile_metadata/start

scoreboard players set $length bbl.main 0
data remove storage bbl:temp sudo_root.temp
scoreboard players set $is_saving bbl.main -1

function mla_trinkets:internal/the_horse/process_working_slot/munch_metadata

execute if data storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:attribute_modifiers" run function mla_trinkets:internal/the_horse/process_working_slot/munch_attributes

execute if score $module_enabled.custom_attributes mla.main matches 1.. if data storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:custom_data".mla_attributes_data.attributes run function mla_trinkets:internal/the_horse/process_working_slot/munch_custom_attributes/main
