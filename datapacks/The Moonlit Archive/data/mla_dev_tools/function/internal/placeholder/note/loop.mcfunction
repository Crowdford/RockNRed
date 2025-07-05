
scoreboard players remove @s mla.dev_tools.note_timer 1

execute if score @s mla.dev_tools.note_timer matches 0 run data modify entity @s CustomNameVisible set value 0b
execute if score @s mla.dev_tools.note_timer matches 0 run scoreboard players reset @s mla.dev_tools.note_timer
