
playsound minecraft:block.glass.place player @a[distance=..16]

execute on vehicle if entity @s[type=item_display] run data modify entity @s item.id set value "minecraft:glowstone"

execute if block ~ ~ ~ air run setblock ~ ~ ~ light[level=15]
