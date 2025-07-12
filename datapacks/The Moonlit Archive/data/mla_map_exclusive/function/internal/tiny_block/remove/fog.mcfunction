
particle block{block_state:"minecraft:light_gray_stained_glass"} ~ ~.1 ~ 0.1 0.1 0.1 0.01 8 normal

execute if entity @s[tag=!silent] run playsound minecraft:block.fire.extinguish player @a[distance=..16] ~ ~ ~ 0.5 0.6
