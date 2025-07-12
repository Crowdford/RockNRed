
particle block{block_state:"minecraft:oak_planks"} ~ ~.1 ~ 0.1 0.1 0.1 0.01 8 normal

playsound minecraft:block.wood.break player @a[distance=..16]

execute if entity @p[advancements={mla_dev_tools:interact/left=true},gamemode=!creative] run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":{"color":"white","italic":false,"text":"¼ ᴾˡᵃⁿᵏ"},"minecraft:item_model":"minecraft:oak_planks","minecraft:custom_data":{mla_mb:4},"minecraft:max_stack_size":64}}}
