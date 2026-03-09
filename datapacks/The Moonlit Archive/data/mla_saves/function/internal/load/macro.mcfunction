
$scoreboard players set @s mla.saves.current_character $(int)

tag @s add mla.oneshot.live_state
effect clear @s minecraft:blindness
gamemode survival @s

$data modify storage bbl:pldata sudo_root.working_data.oneshot.characters.current set from storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int)

data modify storage bbl:inv inv set from storage bbl:pldata sudo_root.working_data.oneshot.characters.current.inventory
function bb:lib/inv/load/call

function mla_saves:internal/load/scores/loop

data modify storage bbl:tp sudo_root.full set from storage bbl:pldata sudo_root.working_data.oneshot.characters.current.pos.full
function bb:internal/systems/tp_to_xyz/call/storage

function bb:lib/pldata/write/call

function mla_survival:internal/compile_bars/main
