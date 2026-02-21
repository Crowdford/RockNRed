
execute store result score $stat_calc mla.master run data get storage bbl:equips sudo_root.player_inventory.mainhand.components."minecraft:custom_data".red_text[{id:"vile_vial"}].lvl
execute if score $stat_calc mla.master matches 1.. run scoreboard players set @s satisfactory.vial.mainhand 1
scoreboard players operation @s mla.red_text.vile_vial += $stat_calc mla.master
