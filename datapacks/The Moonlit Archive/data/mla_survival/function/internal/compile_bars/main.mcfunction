
function bb:lib/pldata/read/call
data remove storage bbl:pldata sudo_root.working_data.oneshot.hud_build

function mla_survival:internal/compile_bars/health/build

function mla_survival:internal/compile_bars/stamina/build

function mla_survival:internal/compile_bars/hotbar

execute if score @s mla.survival.stamina.current matches ..20 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.stamina set value "n"
execute if score @s mla.survival.stamina.current matches 21..40 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.stamina set value "m"
execute if score @s mla.survival.stamina.current matches 41..70 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.stamina set value "l"
execute if score @s mla.survival.stamina.current matches 70.. run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.stamina set value "k"

execute if score @s mla.survival.sleep.current matches ..20 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.sleep set value "n"
execute if score @s mla.survival.sleep.current matches 21..40 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.sleep set value "m"
execute if score @s mla.survival.sleep.current matches 41..70 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.sleep set value "l"
execute if score @s mla.survival.sleep.current matches 70.. run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.sleep set value "k"

execute if score @s mla.survival.thirst.current matches ..20 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.thirst set value "n"
execute if score @s mla.survival.thirst.current matches 21..40 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.thirst set value "m"
execute if score @s mla.survival.thirst.current matches 41..70 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.thirst set value "l"
execute if score @s mla.survival.thirst.current matches 70.. run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.thirst set value "k"

execute if score @s mla.survival.hunger.current matches ..20 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.hunger set value "n"
execute if score @s mla.survival.hunger.current matches 21..40 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.hunger set value "m"
execute if score @s mla.survival.hunger.current matches 41..70 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.hunger set value "l"
execute if score @s mla.survival.hunger.current matches 70.. run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.hunger set value "k"

execute if score @s mla.survival.sickness.current matches 80.. run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.sickness set value "n"
execute if score @s mla.survival.sickness.current matches 41..79 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.sickness set value "m"
execute if score @s mla.survival.sickness.current matches 11..40 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.sickness set value "l"
execute if score @s mla.survival.sickness.current matches ..10 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.icos.sickness set value "k"

function bb:lib/pldata/write/call
function mla_survival:internal/compile_bars/display
