
playsound minecraft:entity.breeze.charge player @a[distance=..16] ~ ~ ~ 0.6 2

execute on vehicle if entity @s[type=item_display] run data modify entity @s item.id set value "minecraft:light_gray_stained_glass"

scoreboard players set @s mla.map_exclusive.tiny_block.fog_timer 1
