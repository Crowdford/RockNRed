
scoreboard objectives add mla.main dummy
scoreboard objectives add mla.config dummy

execute unless score $module_enabled.main mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.main mla.main 1
execute unless score $module_enabled.trinkets mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.trinkets mla.main 0
