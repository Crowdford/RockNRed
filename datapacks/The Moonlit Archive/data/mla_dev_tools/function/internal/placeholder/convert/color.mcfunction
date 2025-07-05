
execute as @p[scores={mla.dev_tools.use_if=1..}] store result score $color mla.main run scoreboard players get @s mla.main.outline_color

execute if score $color mla.main matches 1 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/white"
execute if score $color mla.main matches 2 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/orange"
execute if score $color mla.main matches 3 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/magenta"
execute if score $color mla.main matches 4 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/light_blue"
execute if score $color mla.main matches 5 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/yellow"
execute if score $color mla.main matches 6 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/lime"
execute if score $color mla.main matches 7 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/pink"
execute if score $color mla.main matches 8 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/gray"
execute if score $color mla.main matches 9 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/light_gray"
execute if score $color mla.main matches 10 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/cyan"
execute if score $color mla.main matches 11 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/purple"
execute if score $color mla.main matches 12 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/blue"
execute if score $color mla.main matches 13 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/brown"
execute if score $color mla.main matches 14 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/green"
execute if score $color mla.main matches 15 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/red"
execute if score $color mla.main matches 16 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/black"
execute if score $color mla.main matches 17 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/monument"
execute if score $color mla.main matches 18 run data modify entity @s item.components."minecraft:item_model" set value "mla:placeholder/outline/other"

tag @s remove mla.new_outline
