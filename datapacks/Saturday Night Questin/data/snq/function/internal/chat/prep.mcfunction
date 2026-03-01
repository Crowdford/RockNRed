
tag @s add snq.in_chat

function bb:lib/pldata/read/call
function bb:lib/inv/save/call
data modify storage bbl:pldata sudo_root.working_data.snq.inventory set from storage bbl:inv inv
function bb:lib/pldata/write/call
clear @s