
scoreboard players set $length bbl.main 0

data modify storage bbl:concat sudo_root.array set from storage bbl:temp sudo_root.temp
data remove storage bbl:temp sudo_root.temp
function bb:internal/systems/string_manip/concat/start

data modify storage bbl:concat sudo_root.num set from storage bb:lib sudo_root.parsing.metadata_array[2].id

function mla_trinkets:internal/the_horse/process_working_slot/check with storage bbl:concat sudo_root
