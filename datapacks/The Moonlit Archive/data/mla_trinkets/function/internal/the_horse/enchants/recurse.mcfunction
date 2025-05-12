
function mla_trinkets:internal/the_horse/enchants/set_level with storage bbl:buildhorse sudo_root.build_enchants[0]

execute if data storage bbl:buildhorse sudo_root.build_enchants[1] run data modify storage bbl:buildhorse sudo_root.build_enchant_flat append value ","

data remove storage bbl:buildhorse sudo_root.build_enchants[0]

execute if data storage bbl:buildhorse sudo_root.build_enchants[0] run function mla_trinkets:internal/the_horse/enchants/recurse
