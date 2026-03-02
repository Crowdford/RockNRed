

$data modify storage mla:saves sudo_root.built.slots append value {label:"Slot $(int) | $(name) | $(renown) | $(secrets)",width:250,action:{type:"minecraft:run_command",command:"/trigger mla.saves.select_character set $(int)"}}

scoreboard players add $seek bbl.main 1

execute store result storage mla:saves sudo_root.temp.seeking.int int 1 run scoreboard players get $seek bbl.main

function mla_saves:internal/save/slot/check_mac with storage mla:saves sudo_root.temp.seeking

