
#$say $(end_dex) $(start_dex)

data remove storage bbl:concat sudo_root.array

$data modify storage bbl:concat sudo_root.array append string storage mla:survival sudo_root.prebuilt.hud.bars.health.idle 0 $(index_normal)
$data modify storage bbl:concat sudo_root.array append string storage mla:survival sudo_root.prebuilt.hud.bars.health.void $(index_normal) 148

function bb:internal/systems/string_manip/concat/start
data modify storage mla:survival sudo_root.built.hud.bar.health.normal set from storage bbl:concat sudo_root.string


data remove storage bbl:concat sudo_root.array

$data modify storage bbl:concat sudo_root.array append string storage mla:survival sudo_root.prebuilt.hud.bars.health.flash 0 $(index_flash)
$data modify storage bbl:concat sudo_root.array append string storage mla:survival sudo_root.prebuilt.hud.bars.health.void $(index_flash) 148

function bb:internal/systems/string_manip/concat/start

data modify storage mla:survival sudo_root.built.hud.bar.health.flash set from storage bbl:concat sudo_root.string

$execute if score $temp8 bbl.main matches 0..9 run data modify storage mla:survival sudo_root.built.hud.bar.health.numbers set value "$(current_hp)----"
$execute if score $temp8 bbl.main matches 10..99 run data modify storage mla:survival sudo_root.built.hud.bar.health.numbers set value "$(current_hp)---"
$execute if score $temp8 bbl.main matches 100..999 run data modify storage mla:survival sudo_root.built.hud.bar.health.numbers set value "$(current_hp)--"
$execute if score $temp8 bbl.main matches 1000..9999 run data modify storage mla:survival sudo_root.built.hud.bar.health.numbers set value "$(current_hp)-"
$execute if score $temp8 bbl.main matches 10000..99999 run data modify storage mla:survival sudo_root.built.hud.bar.health.numbers set value "$(current_hp)"
