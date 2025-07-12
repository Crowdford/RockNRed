
execute if entity @s[tag=die] run function mla_map_exclusive:internal/tiny_block/handling/chest/return

execute store result score $hurt mla.main run data get entity @s HurtTime

execute if score $hurt mla.main matches 1.. run function mla_map_exclusive:internal/tiny_block/handling/chest/remove
