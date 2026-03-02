
function bb:lib/pldata/read/call

data remove storage mla:saves sudo_root.temp
execute store result storage mla:saves sudo_root.temp.int int 1 run scoreboard players get @s mla.saves.select_character

function mla_saves:internal/load/macro with storage mla:saves sudo_root.temp

scoreboard players set @s mla.saves.select_character 0
