
execute unless score @s mla.saves.current_character matches -99999999..99999999 run function mla_saves:internal/save/first

function bb:lib/pldata/read/call

function bb:lib/inv/save/call
data modify storage bbl:pldata sudo_root.working_data.oneshot.characters.current.inventory set from storage bbl:inv inv

data remove storage bbl:pldata sudo_root.working_data.oneshot.characters.current.scores
function mla_saves:internal/save/scoresys/main

data modify storage bbl:pldata sudo_root.working_data.oneshot.characters.current.pos.full set from entity @s Pos

execute store result storage bbl:temp sudo_root.char_select int 1 run scoreboard players get @s mla.saves.current_character
function mla_saves:internal/save/macro_save with storage bbl:temp sudo_root

tag @s remove mla.oneshot.live_state
effect give @s minecraft:blindness infinite 0 true
gamemode spectator @s
tp @s ~ 999 ~
title @s actionbar " "

function bb:lib/pldata/write/call

function mla_saves:internal/save/post_save
