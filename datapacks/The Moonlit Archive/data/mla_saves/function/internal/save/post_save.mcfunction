
function bb:lib/pldata/read/call

clear @s
scoreboard players set @s mla.saves.current_character 0

execute if entity @s[tag=!mla.saves.first] run function mla_saves:internal/save/slot/main

dialog show @s[tag=mla.saves.first] {type:"minecraft:multi_action",title:{text:"Select Character",bold:1},external_title:"character_select",body:[],inputs:[],can_close_with_escape:0,pause:0,columns:1,actions:[{label:" Create New",width:95,action:{type:"minecraft:run_command",command:"/trigger mla.saves.make_char set 1"}}]}

#{label:"Slot 1 | (name) | (renown) | (secrets)",width:250,action:{type:"minecraft:run_command",command:"/trigger mla.saves.select_character set 1"}}

scoreboard players enable @s mla.saves.select_character
scoreboard players enable @s mla.saves.make_char

tag @s remove mla.saves.first
