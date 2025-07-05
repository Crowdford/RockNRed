
execute unless score @s mla.main.config.tris_switch matches -2147483648..2147483647 run scoreboard players set @s mla.main.config.tris_switch 1

scoreboard players operation @s mla.main.config.tris_switch *= $-1 bbl.constant

execute if score @s mla.main.config.tris_switch matches 1 run tellraw @s "TrisSwitch™ on"
execute if score @s mla.main.config.tris_switch matches -1 run tellraw @s "TrisSwitch™ off"
