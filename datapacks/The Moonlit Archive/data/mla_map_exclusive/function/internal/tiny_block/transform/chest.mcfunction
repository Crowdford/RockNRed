
playsound minecraft:block.wood.place player @a[distance=..16]

execute on vehicle if entity @s[type=item_display] run data modify entity @s item.id set value "minecraft:chest"
execute on vehicle on passengers if entity @s[type=shulker] run attribute @s minecraft:scale base set 0.33

execute if entity @p[y_rotation=-140..-45] on vehicle if entity @s[type=item_display] at @s run tp @s ~ ~ ~ ~-90 ~
execute if entity @p[y_rotation=140..-141] on vehicle if entity @s[type=item_display] at @s run tp @s ~ ~ ~ ~180 ~
execute if entity @p[y_rotation=50..141] on vehicle if entity @s[type=item_display] at @s run tp @s ~ ~ ~ ~90 ~

summon donkey ~ ~ ~ {DeathLootTable:"empty",NoGravity:1b,Silent:1b,Invulnerable:0b,CustomNameVisible:0b,Team:"no_collide",PersistenceRequired:1b,NoAI:1b,Health:999f,Tame:1b,ChestedHorse:1b,Tags:["mla.object","mla.chest_donkey","mla.new"],CustomName:{"color":"dark_gray","italic":false,"text":"¼ ᶜʰᵉˢᵗ"},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b},{id:"minecraft:resistance",amplifier:9,duration:199999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:999},{id:"minecraft:scale",base:0.30}]}
ride @e[type=donkey,distance=..3,limit=1,sort=nearest,tag=mla.new] mount @e[type=minecraft:item_display,distance=..3,limit=1,sort=nearest]
tag @e[type=donkey,distance=..3] remove mla.new

data merge entity @s {width:0.01f,height:0.01f}
