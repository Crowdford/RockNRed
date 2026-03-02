
data modify storage bbl:temp sudo_root.int set value 1
data modify storage bbl:temp sudo_root.name set value "FALLBACK"
data modify storage bbl:temp sudo_root.renown set value "FALLBACK"
data modify storage bbl:temp sudo_root.seeking.secrets set value "FALLBACK"

$data modify storage bbl:temp sudo_root.int set value $(int)
data modify storage bbl:temp sudo_root.name set from storage bbl:pldata sudo_root.working_data.bbl.name
$data modify storage bbl:temp sudo_root.renown set from storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int).scores[{i:"mla.oneshot.renown.total"}].value
$data modify storage bbl:temp sudo_root.secrets set from storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int).scores[{i:"mla.oneshot.secrets.total"}].value

$execute unless data storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int) run function mla_saves:internal/save/slot/display

$execute if data storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int) run function mla_saves:internal/save/slot/build_array with storage bbl:temp sudo_root
