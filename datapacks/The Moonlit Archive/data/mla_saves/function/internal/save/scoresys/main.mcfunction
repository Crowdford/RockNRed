
data modify storage bbl:temp sudo_root.scores_array set from storage mla:main sudo_root.scoresys.scores

function mla_saves:internal/save/scoresys/build_saved

data remove storage bbl:temp sudo_root
