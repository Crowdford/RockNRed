
data modify storage bbl:temp sudo_root.score set from storage bbl:pldata sudo_root.working_data.oneshot.characters.current.scores[0].i
data modify storage bbl:temp sudo_root.int set from storage bbl:pldata sudo_root.working_data.oneshot.characters.current.scores[0].value

function mla_saves:internal/load/scores/macro with storage bbl:temp sudo_root
