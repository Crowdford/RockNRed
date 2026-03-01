
data modify storage mla:temp sudo_root.trinkets.working.sort.temp.consol.current set from storage mla:temp sudo_root.trinkets.working.sort.temp.sorted[0]

function mla_trinkets:internal/the_horse/custom_attributes/consol/macro with storage mla:temp sudo_root.trinkets.working.sort.temp.consol.current

data remove storage mla:temp sudo_root.trinkets.working.sort.temp.sorted[0]

execute if data storage mla:temp sudo_root.trinkets.working.sort.temp.sorted[0] run function mla_trinkets:internal/the_horse/custom_attributes/consol/munch


