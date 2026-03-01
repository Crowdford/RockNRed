
scoreboard players set $temp bbl.main 0

#save value
execute store result score $temp bbl.main run data get storage mla:temp sudo_root.trinkets.working.sort.temp.attribute.value
#saving order

execute if score $temp bbl.main matches 1.. run data modify storage mla:temp sudo_root.trinkets.working.sort.temp.array.flat_pos append from storage mla:temp sudo_root.trinkets.working.sort.temp.attribute
execute if score $temp bbl.main matches ..-1 run data modify storage mla:temp sudo_root.trinkets.working.sort.temp.array.flat_neg append from storage mla:temp sudo_root.trinkets.working.sort.temp.attribute

data remove storage mla:temp sudo_root.trinkets.working.sort.temp.custom_attributes_array.flat[0]

execute if data storage mla:temp sudo_root.trinkets.working.sort.temp.custom_attributes_array.flat[{type:"flat"}] run function mla_trinkets:internal/the_horse/custom_attributes/sort/munch_flat

