
tag @s remove mla.edited

execute if entity @s[tag=mla.interaction.placeholder.chest] on passengers if entity @s[tag=mla.placeholder.feature] run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/center/chest"
execute if entity @s[tag=mla.interaction.placeholder.spawner] on passengers if entity @s[tag=mla.placeholder.feature] run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/center/spawner"
execute if entity @s[tag=mla.interaction.placeholder.note] on passengers if entity @s[tag=mla.placeholder.feature] run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/center/note"
execute if entity @s[tag=mla.interaction.placeholder.redstone] on passengers if entity @s[tag=mla.placeholder.feature] run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/center/redstone"
execute if entity @s[tag=mla.interaction.placeholder.tnt] on passengers if entity @s[tag=mla.placeholder.feature] run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/center/tnt"
execute if entity @s[tag=mla.interaction.placeholder.poi] on passengers if entity @s[tag=mla.placeholder.feature] run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/center/poi"
