
execute if score @s mla.main.config.tris_switch matches 1.. if entity @s[x_rotation=-90,gamemode=!spectator] run gamemode spectator @s
execute if score @s mla.main.config.tris_switch matches 1.. if entity @s[x_rotation=90,gamemode=!creative] run gamemode creative @s

execute if score @s mla.main.config.night_vision matches 1 run effect give @s minecraft:night_vision infinite 0 true

execute if score @s mla.dev_tools.use_if matches 1.. run function mla_dev_tools:internal/placeholder/use_if

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",looking_at:{type:"minecraft:interaction"}}}} if entity @s[gamemode=creative] run function mla_dev_tools:internal/placeholder/raycast/start
