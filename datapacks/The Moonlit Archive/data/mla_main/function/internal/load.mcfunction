
scoreboard objectives add mla.main dummy
scoreboard objectives add mla.config dummy

execute unless score $module_enabled.main mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.main mla.main 1
execute unless score $module_enabled.trinkets mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.trinkets mla.main 0
execute unless score $module_enabled.dev_tools mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.dev_tools mla.main 0
execute unless score $module_enabled.event_tools mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.event_tools mla.main 0

scoreboard objectives add mla.main.trigger trigger
scoreboard objectives add mla.main.outline_color trigger

scoreboard objectives add mla.main.config.night_vision dummy
scoreboard objectives add mla.main.config.tris_switch dummy
