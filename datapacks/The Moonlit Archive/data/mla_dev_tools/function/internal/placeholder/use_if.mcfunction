
execute as @e[type=item_frame,distance=..8,tag=mla.placeholder] at @s run function mla_dev_tools:internal/placeholder/convert/main

scoreboard players set @s mla.dev_tools.use_if 0
