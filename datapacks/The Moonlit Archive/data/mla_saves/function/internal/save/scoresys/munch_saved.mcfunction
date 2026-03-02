
data modify storage bbl:temp sudo_root.score set from storage bbl:temp sudo_root.building[0].i

function mla_saves:internal/save/scoresys/macro_get with storage bbl:temp sudo_root
function mla_saves:internal/save/scoresys/macro_push with storage bbl:temp sudo_root

data remove storage bbl:temp sudo_root.building[0]

execute if data storage bbl:temp sudo_root.building[0].i run function mla_saves:internal/save/scoresys/build_saved
