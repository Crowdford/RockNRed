
ride @s dismount

execute store result score $hp mla.main run data get entity @s Health
execute if score $hp mla.main matches 2.. run damage @s 1 minecraft:bad_respawn_point

title @s title " "
title @s subtitle "Use Crouch + Interact to open tiny chests."
title @s times 0 30 4
