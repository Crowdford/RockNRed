
particle block{block_state:"minecraft:moss_block"} ~ ~.1 ~ 0.1 0.1 0.1 0.01 8 normal

playsound minecraft:block.moss.break player @a[distance=..16]

execute if entity @p[advancements={mla_main:interact/left=true},gamemode=!creative] run execute if entity @p[advancements={mla_main:interact/left=true},gamemode=!creative] run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":{"color":"white","italic":false,"text":"¼ ᴹᵒˢˢ ᴮˡᵒᶜᵏ"},"minecraft:item_model":"minecraft:moss_block","minecraft:custom_data":{mla_mb:1},"minecraft:max_stack_size":64}}}
