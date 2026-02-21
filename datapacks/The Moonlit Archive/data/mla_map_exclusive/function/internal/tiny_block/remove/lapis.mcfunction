
particle block{block_state:"minecraft:granite"} ~ ~.1 ~ 0.1 0.1 0.1 0.01 8 normal

playsound minecraft:block.stone.break player @a[distance=..16]

#execute if entity @p[advancements={mla_main:interact/left=true},gamemode=!creative] run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":{"color":"white","italic":false,"text":"¼ ᴸᵃᵖᶦˢ ᴼʳᵉ"},"minecraft:item_model":"map_exclusive:blocks/lapis/granite","minecraft:custom_data":{mla_mb:11},"minecraft:max_stack_size":64}}}

function mla_reoccurring_mechs:internal/lapis_scaling/recurse
