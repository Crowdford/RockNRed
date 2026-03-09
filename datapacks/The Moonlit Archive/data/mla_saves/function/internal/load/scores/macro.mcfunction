
#$say scoreboard players set @s $(score) $(int)
$scoreboard players set @s $(score) $(int)

data remove storage bbl:pldata sudo_root.working_data.oneshot.characters.current.scores[0]
execute if data storage bbl:pldata sudo_root.working_data.oneshot.characters.current.scores[0] run function mla_saves:internal/load/scores/loop
