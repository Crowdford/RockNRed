
particle block{block_state:"minecraft:glowstone"} ~ ~.1 ~ 0.1 0.1 0.1 0.01 8 normal

playsound minecraft:block.glass.break player @a[distance=..16]

summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":{"color":"white","italic":false,"text":"¼ ᴳˡᵒʷˢᵗᵒⁿᵉ"},"minecraft:item_model":"minecraft:glowstone","minecraft:custom_data":{mla_mb:9},"minecraft:max_stack_size":64}}}

execute if block ~ ~ ~ light run setblock ~ ~ ~ air
