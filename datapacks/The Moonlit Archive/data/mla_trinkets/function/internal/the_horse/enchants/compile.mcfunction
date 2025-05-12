
data remove storage bbl:buildhorse sudo_root.build_enchant_flat

data modify storage bbl:buildhorse sudo_root.build_enchant_flat append value "{"

function mla_trinkets:internal/the_horse/enchants/recurse

data modify storage bbl:buildhorse sudo_root.build_enchant_flat append value "}"


data modify storage bbl:concat sudo_root.array set from storage bbl:buildhorse sudo_root.build_enchant_flat
function bb:internal/systems/string_manip/concat/start
