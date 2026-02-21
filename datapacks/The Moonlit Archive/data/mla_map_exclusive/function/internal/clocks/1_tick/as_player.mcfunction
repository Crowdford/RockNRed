
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. if score @s mla.map_exclusive.tiny_block_use matches 1.. run function mla_map_exclusive:internal/tiny_block/use_sb

execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. if score @s mla.map_exclusive.tiny_block_stupid matches 1.. run function mla_map_exclusive:internal/tiny_block/raycast/stupid

execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. on vehicle if entity @s[tag=mla.chest_donkey] on passengers if entity @s[type=player] run function mla_map_exclusive:internal/tiny_block/handling/chest/dismount

execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.shrink mla.main matches 1.. unless score @s mla.map_exclusive.shrink.loop matches -999999..999999 run scoreboard players set @s mla.map_exclusive.shrink.loop 1
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.shrink mla.main matches 1.. if block ~ -63 ~ minecraft:white_stained_glass if score @s[tag=!no_shrink,gamemode=!spectator] mla.map_exclusive.shrink.loop matches ..45 run scoreboard players add @s mla.map_exclusive.shrink.loop 1
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.shrink mla.main matches 1.. unless block ~ -63 ~ minecraft:white_stained_glass if score @s mla.map_exclusive.shrink.loop matches 1.. run scoreboard players remove @s mla.map_exclusive.shrink.loop 1
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.shrink mla.main matches 1.. if score @s[tag=no_shrink] mla.map_exclusive.shrink.loop matches 1.. run scoreboard players remove @s mla.map_exclusive.shrink.loop 1
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.shrink mla.main matches 1.. if score @s mla.map_exclusive.shrink.loop matches 1.. run function mla_map_exclusive:internal/shrink/loop
