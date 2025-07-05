

execute align xyz positioned ~.5 ~ ~.5 run summon interaction ~ ~ ~ {width:1.05f,height:1.05f,Tags:["mla.object","mla.interaction.any","mla.interaction.placeholder","mla.interaction","mla.interaction.placeholder.spawner"],Passengers:[{id:"minecraft:item_display",Tags:["mla.object","mla.placeholder.feature"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"mla:placeholder/center/spawner"}}},{id:"minecraft:item_display",Tags:["mla.object","mla.placeholder.outline","mla.new_outline"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"mla:placeholder/outline/white"}}}]}

playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ 1 0.9

