
data remove storage mla:scoresys sudo_root.temp
data modify storage mla:scoresys sudo_root.temp.id set from storage mla:scoresys sudo_root.main[0].i
data modify storage mla:scoresys sudo_root.temp.type set from storage mla:scoresys sudo_root.main[0].t
data modify storage mla:scoresys sudo_root.temp.save set from storage mla:scoresys sudo_root.main[0].s

execute if data storage mla:scoresys sudo_root.main[0] run function mla_main:internal/scoresys/macro_add with storage mla:scoresys sudo_root.temp
