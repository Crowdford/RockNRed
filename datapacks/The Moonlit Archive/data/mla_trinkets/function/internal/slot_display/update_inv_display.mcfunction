data remove storage bbl:temp sudo_root.stats

function bb:internal/systems/pldata/read

execute if score $module_enabled.custom_attributes mla.main matches 1.. run function mla_custom_attributes:internal/slot_display/main

execute if score $module_enabled.oneshot mla.main matches 1.. run function mla_oneshot:internal/slot_display/main

execute if score $module_enabled.survival mla.main matches 1.. run function mla_survival:internal/slot_display/main
