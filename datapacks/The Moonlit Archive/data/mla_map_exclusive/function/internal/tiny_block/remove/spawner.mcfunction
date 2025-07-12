
particle block{block_state:"minecraft:spawner"} ~ ~.1 ~ 0.1 0.1 0.1 0.01 8 normal

playsound minecraft:block.spawner.break player @a[distance=..16]

#summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":{"color":"white","italic":false,"text":"¼ ˢᵖᵃʷⁿᵉʳ"},"minecraft:item_model":"minecraft:spawner","minecraft:custom_data":{mla_mb:3},"minecraft:max_stack_size":64}}}

summon experience_orb ~.1 ~ ~ {Value:12}
summon experience_orb ~ ~ ~.1 {Value:12}
summon experience_orb ~ ~.1 ~ {Value:12}
