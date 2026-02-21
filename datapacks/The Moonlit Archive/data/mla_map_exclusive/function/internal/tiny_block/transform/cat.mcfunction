
playsound minecraft:entity.cat.purreow player @a[distance=..16]

execute on vehicle if entity @s[type=item_display] run data modify entity @s item.components."minecraft:item_model" set value "map_exclusive:blocks/gato"
