
execute store result score $temp bbl.main run data get storage mla:scoresys sudo_root.eat_me[0].s
execute if score $temp bbl.main matches 1.. run data modify storage bbl:temp sudo_root.eat_me2 append from storage mla:scoresys sudo_root.eat_me[0]

data remove storage mla:scoresys sudo_root.eat_me[0]

execute unless data storage mla:scoresys sudo_root.eat_me[0] run function mla_saves:internal/save/scoresys/munch_saved

execute if data storage mla:scoresys sudo_root.eat_me[0] run function mla_saves:internal/save/scoresys/build_saved
