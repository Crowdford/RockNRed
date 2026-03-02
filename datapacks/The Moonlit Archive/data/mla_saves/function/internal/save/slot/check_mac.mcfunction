
data modify storage mla:saves sudo_root.temp.int set value 1
data modify storage mla:saves sudo_root.temp.name set value "FALLBACK"
data modify storage mla:saves sudo_root.temp.renown set value "FALLBACK"
data modify storage mla:saves sudo_root.temp.secrets set value "FALLBACK"

$data modify storage mla:saves sudo_root.temp.int set value $(int)
data modify storage mla:saves sudo_root.temp.name set from storage bbl:pldata sudo_root.working_data.bbl.name
$data modify storage mla:saves sudo_root.temp.renown set from storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int).scores[{i:"mla.oneshot.renown.total"}].value
$data modify storage mla:saves sudo_root.temp.secrets set from storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int).scores[{i:"mla.oneshot.secrets.total"}].value

$execute unless data storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int) run function mla_saves:internal/save/slot/display

$execute if data storage bbl:pldata sudo_root.working_data.oneshot.characters.$(int) run function mla_saves:internal/save/slot/build_array with storage mla:saves sudo_root.temp
