
execute if score $module_enabled.survival mla.main matches 1.. run function mla_survival:internal/compile_bars/main

execute if score $module_enabled.survival mla.main matches 1.. run xp set @s 0 levels
execute if score $module_enabled.survival mla.main matches 1.. run xp set @s 0 points
