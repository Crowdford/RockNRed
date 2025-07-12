
playsound minecraft:block.spawner.place player @a[distance=..16]

execute on vehicle if entity @s[type=item_display] run data modify entity @s item.id set value "minecraft:spawner"
