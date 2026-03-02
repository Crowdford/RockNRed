
data modify storage bbl:temp sudo_root.built_slot_array prepend value {label:" Create New",width:95,action:{type:"minecraft:run_command",command:"/trigger mla.saves.make_char set 1"}}
data modify storage bbl:temp sudo_root.built_slot_array prepend value {label:" Delete",width:95,action:{type:"minecraft:run_command",command:"/trigger mla.saves.make_char set -1"}}

function mla_saves:internal/save/slot/display_mac with storage bbl:temp sudo_root
