
execute if entity @s[advancements={mla_trinkets:container={x0-1=true}}] positioned ~0.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x1-2=true}}] positioned ~1.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x2-3=true}}] positioned ~2.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x3-4=true}}] positioned ~3.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x4-5=true}}] positioned ~4.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x5-6=true}}] positioned ~5.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x6-7=true}}] positioned ~6.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x0-1=true}}] positioned ~-0.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x1-2=true}}] positioned ~-1.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x2-3=true}}] positioned ~-2.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x3-4=true}}] positioned ~-3.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x4-5=true}}] positioned ~-4.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x5-6=true}}] positioned ~-5.5 ~ ~ run function mla_trinkets:internal/container_handling/y
execute if entity @s[advancements={mla_trinkets:container={x6-7=true}}] positioned ~-6.5 ~ ~ run function mla_trinkets:internal/container_handling/y

tag @s add mla_trinkets_open_container
function bb:lib/move_detector/generic_listen/call
