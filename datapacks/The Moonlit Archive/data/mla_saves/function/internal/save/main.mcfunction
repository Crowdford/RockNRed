
execute unless score @s mla.saves.current_character matches -99999999..99999999 run function mla_saves:internal/save/first

tag @s remove mla.oneshot.live_state

function bb:lib/pldata/read/call
function bb:lib/inv/save/call
data modify storage bbl:pldata sudo_root.working_data.oneshot.characters.current.inventory set from storage bbl:inv inv

data remove storage bbl:pldata sudo_root.working_data.oneshot.characters.current.scores
function mla_saves:internal/save/scoresys/main

execute store result storage bbl:temp sudo_root.char_select int 1 run scoreboard players get @s mla.saves.current_character
function mla_saves:internal/save/macro_save with storage bbl:temp sudo_root

clear @s
scoreboard players set @s mla.saves.current_character 0

dialog show @s[tag=!mla.saves.first] {type:"minecraft:multi_action",title:{text:"Select Character",bold:1},external_title:"character_select",body:[],inputs:[],can_close_with_escape:0,pause:0,columns:1,actions:[{label:" Delete",width:95},{label:" Create New",width:95,action:{type:"minecraft:run_command",command:"/trigger mla.saves.make_char set 1"}},{label:"Slot 1 | (name) | (renown) | (secrets)",width:250,action:{type:"minecraft:run_command",command:"/trigger mla.saves.select_character set 1"}}]}

dialog show @s[tag=mla.saves.first] {type:"minecraft:multi_action",title:{text:"Select Character",bold:1},external_title:"character_select",body:[],inputs:[],can_close_with_escape:0,pause:0,columns:1,actions:[{label:" Create New",width:95,action:{type:"minecraft:run_command",command:"/trigger mla.saves.make_char set 1"}}]}

#{label:"Slot 1 | (name) | (renown) | (secrets)",width:250,action:{type:"minecraft:run_command",command:"/trigger mla.saves.select_character set 1"}}

scoreboard players enable @s mla.saves.select_character
scoreboard players enable @s mla.saves.make_char

tag @s remove mla.saves.first
function bb:lib/pldata/write/call
