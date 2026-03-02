
data remove storage mla:saves sudo_root.built
scoreboard players set $seek bbl.main 1

execute store result storage mla:saves sudo_root.temp.seeking.int int 1 run scoreboard players get $seek bbl.main

function mla_saves:internal/save/slot/check_mac with storage mla:saves sudo_root.temp.seeking

