
scoreboard players enable @s[gamemode=creative] mla.main.trigger
scoreboard players enable @s[gamemode=creative] mla.main.outline_color

execute if score @s mla.main.trigger matches 1.. run function mla_main:internal/quick_action/trigger/master
