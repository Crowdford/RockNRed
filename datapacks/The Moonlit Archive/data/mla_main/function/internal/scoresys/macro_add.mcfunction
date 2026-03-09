
#$say added $(id):$(type)

$scoreboard objectives add $(id) $(type)

data remove storage bbl:temp sudo_root.scores[0]

data remove storage bbl:temp sudo_root.scores_s
data modify storage bbl:temp sudo_root.scores_s.id set from storage bbl:temp sudo_root.scores[0].i
data modify storage bbl:temp sudo_root.scores_s.type set from storage bbl:temp sudo_root.scores[0].t
data modify storage bbl:temp sudo_root.scores_s.save set from storage bbl:temp sudo_root.scores[0].s

execute if data storage bbl:temp sudo_root.scores[0] run function mla_main:internal/scoresys/macro_add with storage bbl:temp sudo_root.scores_s
