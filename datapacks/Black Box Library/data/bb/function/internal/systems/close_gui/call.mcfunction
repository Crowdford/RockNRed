
execute store result storage bbl:close_gui sudo_root.portal_delay.creative int 1 run gamerule players_nether_portal_creative_delay
execute store result storage bbl:close_gui sudo_root.portal_delay.default int 1 run gamerule players_nether_portal_default_delay

gamerule players_nether_portal_creative_delay 1000
gamerule players_nether_portal_default_delay 1000

function bb:internal/systems/tp_to_xyz/get_xyz

function bb:internal/systems/pldata/read
data modify storage bbl:pldata sudo_root.working_data.close_gui.xyz set from storage bbl:pldata sudo_root.working_data.tp_to_xyz_saved_pos
function bb:internal/systems/pldata/write

tp @s 4206856 319 4206871
tag @s add bbl.tp_back_from_portal
