
tag @s remove snq.in_chat

function bb:lib/pldata/read/call
function bb:lib/inv/save/call
data modify storage bbl:inv inv set from storage bbl:pldata sudo_root.working_data.snq.inventory
function bb:lib/inv/load/call
