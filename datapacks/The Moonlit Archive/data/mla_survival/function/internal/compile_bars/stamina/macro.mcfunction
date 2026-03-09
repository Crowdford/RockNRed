
#$say $(end_dex) $(start_dex)

data remove storage bbl:concat sudo_root.array

$data modify storage bbl:concat sudo_root.array append string storage mla:survival sudo_root.prebuilt.hud.bars.stamina.void $(index_normal) 64
$data modify storage bbl:concat sudo_root.array append string storage mla:survival sudo_root.prebuilt.hud.bars.stamina.idle 0 $(index_normal)

function bb:internal/systems/string_manip/concat/start
data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.stamina.normal set from storage bbl:concat sudo_root.string


#$say $(index_flash)

data remove storage bbl:concat sudo_root.array

$data modify storage bbl:concat sudo_root.array append string storage mla:survival sudo_root.prebuilt.hud.bars.stamina.void $(index_flash) 64
$data modify storage bbl:concat sudo_root.array append string storage mla:survival sudo_root.prebuilt.hud.bars.stamina.flash 0 $(index_flash)

function bb:internal/systems/string_manip/concat/start

data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.stamina.flash set from storage bbl:concat sudo_root.string
