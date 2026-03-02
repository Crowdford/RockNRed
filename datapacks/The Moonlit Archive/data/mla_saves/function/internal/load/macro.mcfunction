
$scoreboard players set @s mla.saves.current_character $(int)

tag @s add mla.oneshot.live_state

$data modify storage bbl:pldata sudo_root.working_data.oneshot.characters.current set from storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int)

data modify storage bbl:inv inv set from storage bbl:pldata sudo_root.working_data.oneshot.characters.current.inventory
function bb:lib/inv/load/call

#LOAD SCORES


function bb:lib/pldata/write/call

