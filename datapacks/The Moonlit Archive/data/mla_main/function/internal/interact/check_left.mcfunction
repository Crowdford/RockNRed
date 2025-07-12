
execute if data entity @s attack if entity @s[tag=mla.interaction.placeholder] run function mla_dev_tools:internal/placeholder/remove
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. if data entity @s attack if entity @s[tag=mla.interaction.tiny_block,tag=!mla.no_break] run function mla_map_exclusive:internal/tiny_block/remove/main

data remove entity @s attack
