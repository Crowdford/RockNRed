
tag @s add great_agony
scoreboard players set @s mla.trinkets.binding_cd 2

data remove block 10000000 1 10000000 Items
item replace block 10000000 1 10000000 container.0 from entity @s player.cursor
item replace entity @s player.cursor from entity @s inventory.0
item replace entity @s inventory.0 with air
execute if data block 10000000 1 10000000 Items[0].components."minecraft:custom_data".mla_trinkets_data.gui run data remove block 10000000 1 10000000 Items
execute if data block 10000000 1 10000000 Items[0] run item replace entity @s inventory.0 from block 10000000 1 10000000 container.0
