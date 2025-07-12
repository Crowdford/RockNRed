
particle block{block_state:"minecraft:glass"} ~ ~.1 ~ 0.1 0.1 0.1 0.01 8 normal

playsound minecraft:block.glass.break player @a[distance=..16]

execute if entity @p[advancements={mla_main:interact/left=true},gamemode=!creative] run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":{"color":"white","italic":false,"text":"¼ ᴳˡᵃˢˢ"},"minecraft:item_model":"minecraft:glass","minecraft:custom_data":{mla_mb:6},"minecraft:max_stack_size":64}}}
