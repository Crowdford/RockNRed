
data remove storage mla:temp sudo_root.trinkets.working.sort.temp
data modify storage mla:temp sudo_root.trinkets.working.sort.temp.custom_attributes_array.flat set from storage mla:temp sudo_root.trinkets.working.custom_attributes_array
data modify storage mla:temp sudo_root.trinkets.working.sort.temp.custom_attributes_array.percent set from storage mla:temp sudo_root.trinkets.working.custom_attributes_array

execute if data storage mla:temp sudo_root.trinkets.working.custom_attributes_array[{type:"flat"}] run function mla_trinkets:internal/the_horse/custom_attributes/sort/munch_flat

execute if data storage mla:temp sudo_root.trinkets.working.custom_attributes_array[{type:"percent"}] run function mla_trinkets:internal/the_horse/custom_attributes/sort/munch_percent

data remove storage mla:temp sudo_root.trinkets.working.sort.temp.sorted
data modify storage mla:temp sudo_root.trinkets.working.sort.temp.sorted append from storage mla:temp sudo_root.trinkets.working.sort.temp.array.flat_pos[]
data modify storage mla:temp sudo_root.trinkets.working.sort.temp.sorted append from storage mla:temp sudo_root.trinkets.working.sort.temp.array.flat_neg[]
data modify storage mla:temp sudo_root.trinkets.working.sort.temp.sorted append from storage mla:temp sudo_root.trinkets.working.sort.temp.array.percent_pos[]
data modify storage mla:temp sudo_root.trinkets.working.sort.temp.sorted append from storage mla:temp sudo_root.trinkets.working.sort.temp.array.percent_neg[]

function mla_trinkets:internal/the_horse/custom_attributes/consol/main
