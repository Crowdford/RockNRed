
execute unless score @s mla.main.config.night_vision matches -2147483648..2147483647 run scoreboard players set @s mla.main.config.night_vision 1

scoreboard players operation @s mla.main.config.night_vision *= $-1 bbl.constant

execute if score @s mla.main.config.night_vision matches -1 run effect clear @s minecraft:night_vision
execute if score @s mla.main.config.night_vision matches 1 run effect give @s minecraft:night_vision infinite 0 true

execute if score @s mla.main.config.night_vision matches 1 run tellraw @s "Nightvision on"
execute if score @s mla.main.config.night_vision matches -1 run tellraw @s "Nightvision off"
