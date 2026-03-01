
scoreboard players set $temp bbl.main 0

data remove storage mla:temp sudo_root.trinkets.working.sort.temp.custom_attributes_array.flat[0]

execute if data storage mla:temp sudo_root.trinkets.working.sort.temp.custom_attributes_array.flat[{type:"flat"}] run function mla_trinkets:internal/the_horse/custom_attributes/sort/munch_flat
