
execute store result score $temp bbl.main run data get storage bbl:temp sudo_root.scores_array[0].s
execute if score $temp bbl.main matches 1.. run data modify storage bbl:temp sudo_root.building append from storage bbl:temp sudo_root.scores_array[0]

data remove storage bbl:temp sudo_root.scores_array[0]

execute unless data storage bbl:temp sudo_root.scores_array[0] run function mla_saves:internal/save/scoresys/munch_saved

execute if data storage bbl:temp sudo_root.scores_array[0] run function mla_saves:internal/save/scoresys/build_saved
