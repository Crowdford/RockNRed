
execute if score @s mla.saves.make_char matches 1.. run function mla_saves:internal/create/trigger

execute if score @s mla.saves.select_character matches 1.. run function mla_saves:internal/load/main
