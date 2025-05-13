
data remove storage bbl:temp sudo_root.temp.lore_build

#rarity
execute if score $item.rarity bbl.main matches 1 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:"",italic:false,color:"dark_gray"}]
execute if score $item.rarity bbl.main matches 2 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:"",italic:false,color:"#39DB39"}]
execute if score $item.rarity bbl.main matches 3 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:"",italic:false,color:"#3080E8"}]
execute if score $item.rarity bbl.main matches 4 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:"",italic:false,color:"#E6AA33"}]
execute if score $item.rarity bbl.main matches 5 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:"",italic:false,color:"#BF1603"}]
execute if score $item.rarity bbl.main matches 6 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:"",italic:false,color:"white"}]

execute if score $item.rarity bbl.main matches 100 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:" Unique ",italic:false,color:"#821F89"}]
execute if score $item.rarity bbl.main matches 101 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:"❤ Partner Bond ❤",italic:false,color:"#E95379"}]
execute if score $item.rarity bbl.main matches 102 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:"❤ Eternal Bond ❤",italic:false,color:"#3ED085"}]
execute if score $item.rarity bbl.main matches 103 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:" Trophy ",italic:false,color:"#E6AA33"}]
execute if score $item.rarity bbl.main matches 104 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:" Currency ",italic:false,color:"dark_gray"}]
execute if score $item.rarity bbl.main matches 105 run data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",{text:"Rarity: ",italic:false,color:"gray"},{text:" Key ",italic:false,color:"#39DB39"}]

#equipable
execute store result score $equipable bbl.main run data get block 10000000 1 10000000 Items[0].components."minecraft:custom_data".mla_trinkets_data.slots
execute if score $equipable bbl.main matches 1.. run function mla_dev_tools:internal/lore_formatter/equipable/parse

#spacer
data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value ["",""]

#lore
execute if score $item.has_lore bbl.main matches 1.. run function mla_dev_tools:internal/lore_formatter/lore/main

#hide comps
data modify block 10000000 1 10000000 Items[0].components."minecraft:tooltip_display".hidden_components set value ["attribute_modifiers","blocks_attacks","break_sound","can_break","can_place_on","consumable","custom_data","custom_model_data","damage","damage_resistant","death_protection","enchantable","enchantment_glint_override","enchantments","equippable","food","glider","item_model","item_name","jukebox_playable","max_damage","max_stack_size","ominous_bottle_amplifier","potion_contents","potion_duration_scale","provides_banner_patterns","provides_trim_material","rarity","repair_cost","repairable","suspicious_stew_effects","tool","tooltip_display","tooltip_style","unbreakable","use_cooldown","use_remainder","weapon"]

#give item
summon item ~ ~ ~ {Invulnerable:1b,Age:5997,PickupDelay:1,Tags:["mla.dummy_item"],Item:{id:"minecraft:stone",count:1b,components:{"minecraft:custom_name":"{\"text\":\"Error\",\"italic\":false}"}}}
data modify entity @e[type=item,distance=..1,limit=1,tag=mla.dummy_item] Item set from block 10000000 1 10000000 Items[0]
