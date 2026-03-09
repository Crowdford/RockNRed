
data modify storage bbl:temp sudo_root.scores set from storage mla:main sudo_root.scoresys.scores

data modify storage bbl:temp sudo_root.scores_s.id set from storage bbl:temp sudo_root.scores[0].i
data modify storage bbl:temp sudo_root.scores_s.type set from storage bbl:temp sudo_root.scores[0].t
data modify storage bbl:temp sudo_root.scores_s.save set from storage bbl:temp sudo_root.scores[0].s

function mla_main:internal/scoresys/macro_add with storage bbl:temp sudo_root.scores_s

data remove storage bbl:temp sudo_root
