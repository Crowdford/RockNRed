
data modify storage mla:saves sudo_root.temp.done_array set from storage mla:saves sudo_root.built.slots 
data modify storage mla:saves sudo_root.temp.done_array prepend value {label:" Create New",width:95,action:{type:"minecraft:run_command",command:"/trigger mla.saves.make_char set 1"}}
data modify storage mla:saves sudo_root.temp.done_array prepend value {label:" Delete",width:95,action:{type:"minecraft:run_command",command:"/trigger mla.saves.make_char set -1"}}

function mla_saves:internal/save/slot/display_mac with storage mla:saves sudo_root.temp
