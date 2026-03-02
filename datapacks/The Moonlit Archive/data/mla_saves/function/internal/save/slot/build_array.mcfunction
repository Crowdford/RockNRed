

$data modify storage bbl:temp sudo_root.built_slot_array append value {label:"Slot $(int) | $(name) | $(renown) | $(secrets)",width:250,action:{type:"minecraft:run_command",command:"/trigger mla.saves.select_character set $(int)"}}

scoreboard players add $seek bbl.main 1

execute store result storage bbl:temp sudo_root.int int 1 run scoreboard players get $seek bbl.main

function mla_saves:internal/save/slot/check_mac with storage bbl:temp sudo_root

