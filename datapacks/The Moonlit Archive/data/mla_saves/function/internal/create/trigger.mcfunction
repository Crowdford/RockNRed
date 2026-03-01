
dialog clear @s
scoreboard players enable @s mla.saves.make_char

execute if score @s mla.saves.make_char matches 2 run scoreboard players add @s mla.saves.char_data.animal 1
execute if score @s mla.saves.char_data.animal matches 4 run scoreboard players set @s mla.saves.char_data.animal 1

execute if score @s mla.saves.make_char matches 3 run scoreboard players add @s mla.saves.char_data.pronouns 1
execute if score @s mla.saves.char_data.pronouns matches 4 run scoreboard players set @s mla.saves.char_data.pronouns 1

execute if score @s mla.saves.char_data.pronouns matches 1 run data modify storage bbl:temp sudo_root.pronouns set value "mla.saves.create_char.pronouns.he"
execute if score @s mla.saves.char_data.pronouns matches 2 run data modify storage bbl:temp sudo_root.pronouns set value "mla.saves.create_char.pronouns.she"
execute if score @s mla.saves.char_data.pronouns matches 3 run data modify storage bbl:temp sudo_root.pronouns set value "mla.saves.create_char.pronouns.they"

execute if score @s mla.saves.char_data.animal matches 1 run data modify storage bbl:temp sudo_root.animal set value "mla.saves.create_char.animal.dog"
execute if score @s mla.saves.char_data.animal matches 2 run data modify storage bbl:temp sudo_root.animal set value "mla.saves.create_char.animal.cat"
execute if score @s mla.saves.char_data.animal matches 3 run data modify storage bbl:temp sudo_root.animal set value "mla.saves.create_char.animal.red_panda"

scoreboard players add @s mla.saves.char_data.animal 0
scoreboard players add @s mla.saves.char_data.pronouns 0
execute if score @s mla.saves.char_data.animal matches 0 run data modify storage bbl:temp sudo_root.animal set value "mla.saves.create_char.click"
execute if score @s mla.saves.char_data.pronouns matches 0 run data modify storage bbl:temp sudo_root.pronouns set value "mla.saves.create_char.click"

execute unless score @s mla.saves.make_char matches 5 run function mla_saves:internal/create/macro with storage bbl:temp sudo_root

scoreboard players set @s mla.saves.make_char 0
