
execute if score $module_enabled.trinkets mla.main matches 1 run kill @e[type=item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{mla_trinkets_data:{gui:1}}}}}]
