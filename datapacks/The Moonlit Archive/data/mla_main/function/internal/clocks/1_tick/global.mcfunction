
execute if score $module_enabled.main mla.main matches 0 run function mla_main:internal/cant_do_that

execute as @e[type=minecraft:interaction,tag=mla.edited] at @s run function mla_dev_tools:internal/placeholder/edited
execute as @e[type=minecraft:interaction,scores={mla.dev_tools.note_timer=1..}] at @s run function mla_dev_tools:internal/placeholder/note/loop


