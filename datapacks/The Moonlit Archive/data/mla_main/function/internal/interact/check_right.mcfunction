
execute if data entity @s interaction if entity @s[tag=mla.interaction.placeholder] run function mla_dev_tools:internal/placeholder/click
execute if score $module_enabled.map_specific.all mla.main matches 1.. if score $module_enabled.map_specific.tiny_blocks mla.main matches 1.. if data entity @s interaction if entity @s[tag=mla.interaction.tiny_block] run function mla_map_exclusive:internal/tiny_block/click

data remove entity @s interaction
