
function bb:lib/pldata/read/call

scoreboard players set $seek bbl.main 1

execute store result storage bbl:temp sudo_root.seeking.int int 1 run scoreboard players get $seek bbl.main

function mla_saves:internal/save/slot/check_mac with storage bbl:temp sudo_root.seeking

data remove storage bbl:temp sudo_root
