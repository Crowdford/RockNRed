
execute unless score @s mla.saves.current_character matches -99999999..99999999 run function mla_saves:internal/save/first

tag @s remove mla.oneshot.live_state

function bb:lib/pldata/read/call

function bb:lib/inv/save/call
data modify storage bbl:pldata sudo_root.working_data.oneshot.characters.current.inventory set from storage bbl:inv inv

data remove storage bbl:pldata sudo_root.working_data.oneshot.characters.current.scores
function mla_saves:internal/save/scoresys/main

execute store result storage bbl:temp sudo_root.char_select int 1 run scoreboard players get @s mla.saves.current_character
function mla_saves:internal/save/macro_save with storage bbl:temp sudo_root

function bb:lib/pldata/write/call

function mla_saves:internal/save/post_save
