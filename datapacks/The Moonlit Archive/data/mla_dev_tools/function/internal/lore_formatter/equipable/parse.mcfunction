
data modify storage bbl:temp sudo_root.temp.lore_build.equip.head set value "gray"
data modify storage bbl:temp sudo_root.temp.lore_build.equip.chest set value "gray"
data modify storage bbl:temp sudo_root.temp.lore_build.equip.legs set value "gray"
data modify storage bbl:temp sudo_root.temp.lore_build.equip.feet set value "gray"
data modify storage bbl:temp sudo_root.temp.lore_build.equip.trinket set value "gray"
data modify storage bbl:temp sudo_root.temp.lore_build.equip.runecore set value "gray"
data modify storage bbl:temp sudo_root.temp.lore_build.equip.wings set value "gray"
data modify storage bbl:temp sudo_root.temp.lore_build.equip.mainhand set value "gray"
data modify storage bbl:temp sudo_root.temp.lore_build.equip.blood set value "gray"

execute store result score $slot_flag bbl.main run data get block 10000000 1 10000000 Items[0].components."minecraft:custom_data".mla_trinkets_data.slots

scoreboard players set $valid bbl.main 0
execute store success score $valid bbl.main if score $slot_flag bbl.main >= $256 bbl.constant run scoreboard players remove $slot_flag bbl.main 256
execute if score $valid bbl.main matches 1 run tag @s add equip.blood
scoreboard players set $valid bbl.main 0
execute store success score $valid bbl.main if score $slot_flag bbl.main >= $128 bbl.constant run scoreboard players remove $slot_flag bbl.main 128
execute if score $valid bbl.main matches 1 run tag @s add equip.mainhand
scoreboard players set $valid bbl.main 0
execute store success score $valid bbl.main if score $slot_flag bbl.main >= $64 bbl.constant run scoreboard players remove $slot_flag bbl.main 64
execute if score $valid bbl.main matches 1 run tag @s add equip.runecore
scoreboard players set $valid bbl.main 0
execute store success score $valid bbl.main if score $slot_flag bbl.main >= $32 bbl.constant run scoreboard players remove $slot_flag bbl.main 32
execute if score $valid bbl.main matches 1 run tag @s add equip.wings
scoreboard players set $valid bbl.main 0
execute store success score $valid bbl.main if score $slot_flag bbl.main >= $16 bbl.constant run scoreboard players remove $slot_flag bbl.main 16
execute if score $valid bbl.main matches 1 run tag @s add equip.trinket
scoreboard players set $valid bbl.main 0
execute store success score $valid bbl.main if score $slot_flag bbl.main >= $8 bbl.constant run scoreboard players remove $slot_flag bbl.main 8
execute if score $valid bbl.main matches 1 run tag @s add equip.feet
scoreboard players set $valid bbl.main 0
execute store success score $valid bbl.main if score $slot_flag bbl.main >= $4 bbl.constant run scoreboard players remove $slot_flag bbl.main 4
execute if score $valid bbl.main matches 1 run tag @s add equip.legs
scoreboard players set $valid bbl.main 0
execute store success score $valid bbl.main if score $slot_flag bbl.main >= $2 bbl.constant run scoreboard players remove $slot_flag bbl.main 2
execute if score $valid bbl.main matches 1 run tag @s add equip.chest
scoreboard players set $valid bbl.main 0
execute store success score $valid bbl.main if score $slot_flag bbl.main >= $1 bbl.constant run scoreboard players remove $slot_flag bbl.main 1
execute if score $valid bbl.main matches 1 run tag @s add equip.head
scoreboard players set $valid bbl.main 0

execute if entity @s[tag=equip.head] run data modify storage bbl:temp sudo_root.temp.lore_build.equip.head set value "green"
execute if entity @s[tag=equip.chest] run data modify storage bbl:temp sudo_root.temp.lore_build.equip.chest set value "green"
execute if entity @s[tag=equip.legs] run data modify storage bbl:temp sudo_root.temp.lore_build.equip.legs set value "green"
execute if entity @s[tag=equip.feet] run data modify storage bbl:temp sudo_root.temp.lore_build.equip.feet set value "green"
execute if entity @s[tag=equip.trinket] run data modify storage bbl:temp sudo_root.temp.lore_build.equip.trinket set value "green"
execute if entity @s[tag=equip.wings] run data modify storage bbl:temp sudo_root.temp.lore_build.equip.wings set value "green"
execute if entity @s[tag=equip.runecore] run data modify storage bbl:temp sudo_root.temp.lore_build.equip.runecore set value "green"
execute if entity @s[tag=equip.mainhand] run data modify storage bbl:temp sudo_root.temp.lore_build.equip.mainhand set value "green"
execute if entity @s[tag=equip.blood] run data modify storage bbl:temp sudo_root.temp.lore_build.equip.blood set value "green"

function mla_dev_tools:internal/lore_formatter/equipable/macro with storage bbl:temp sudo_root.temp.lore_build.equip

tag @s remove equip.head
tag @s remove equip.chest
tag @s remove equip.legs
tag @s remove equip.feet
tag @s remove equip.trinket
tag @s remove equip.wings
tag @s remove equip.runecore
tag @s remove equip.mainhand
tag @s remove equip.blood
