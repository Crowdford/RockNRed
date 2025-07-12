
particle block{block_state:"minecraft:chest"} ~ ~.1 ~ 0.1 0.1 0.1 0.01 8 normal

playsound minecraft:block.wood.break player @a[distance=..16]

execute if entity @p[gamemode=!creative] run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":{"color":"white","italic":false,"text":"¼ ᶜʰᵉˢᵗ"},"minecraft:item_model":"minecraft:chest","minecraft:custom_data":{mla_mb:2},"minecraft:max_stack_size":64}}}

