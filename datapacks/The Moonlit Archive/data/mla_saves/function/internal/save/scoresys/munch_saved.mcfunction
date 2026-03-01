
data remove storage bbl:temp sudo_root.pass_data
data modify storage bbl:temp sudo_root.pass_data.score set from storage bbl:temp sudo_root.eat_me2[0].i

function mla_saves:internal/save/scoresys/macro_get with storage bbl:temp sudo_root.pass_data
function mla_saves:internal/save/scoresys/macro_push with storage bbl:temp sudo_root.pass_data

data remove storage bbl:temp sudo_root.eat_me2[0]

execute if data storage bbl:temp sudo_root.eat_me2[0].i run function mla_saves:internal/save/scoresys/build_saved
