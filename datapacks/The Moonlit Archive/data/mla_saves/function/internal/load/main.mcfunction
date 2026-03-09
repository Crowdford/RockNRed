
function bb:lib/pldata/read/call

data remove storage bbl:temp sudo_root
execute store result storage bbl:temp sudo_root.int int 1 run scoreboard players get @s mla.saves.select_character

function mla_saves:internal/load/macro with storage bbl:temp sudo_root

scoreboard players set @s mla.saves.select_character 0
