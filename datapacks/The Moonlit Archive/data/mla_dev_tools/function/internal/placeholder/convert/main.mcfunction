
execute if entity @s

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{mla_placeholder:1}}}}] run function mla_dev_tools:internal/placeholder/convert/chest
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{mla_placeholder:2}}}}] run function mla_dev_tools:internal/placeholder/convert/spawner
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{mla_placeholder:3}}}}] run function mla_dev_tools:internal/placeholder/convert/note
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{mla_placeholder:4}}}}] run function mla_dev_tools:internal/placeholder/convert/tnt
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{mla_placeholder:5}}}}] run function mla_dev_tools:internal/placeholder/convert/redstone
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{mla_placeholder:6}}}}] run function mla_dev_tools:internal/placeholder/convert/poi

execute as @e[type=item_display,distance=..2,limit=1,tag=mla.new_outline] at @s run function mla_dev_tools:internal/placeholder/convert/color

#data merge entity @s {data:{mlanote:"No Note"}}

#todo - add placer
#execute as @p[scores={mla.dev_tools.use_if=1..}] run function

kill @s
