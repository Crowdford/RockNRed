
#store into temp
data remove storage mla:temp sudo_root.trinkets.working.sort.temp.attribute
data modify storage mla:temp sudo_root.trinkets.working.sort.temp.attribute set from storage mla:temp sudo_root.trinkets.working.sort.temp.custom_attributes_array.percent[0]

scoreboard players set $temp bbl.main 1
execute if score $temp bbl.main matches 1.. if data storage mla:temp sudo_root.trinkets.working.sort.temp.attribute{type:"percent"} run function mla_trinkets:internal/the_horse/custom_attributes/sort/is_percent
execute if score $temp bbl.main matches 1.. unless data storage mla:temp sudo_root.trinkets.working.sort.temp.attribute{type:"percent"} run function mla_trinkets:internal/the_horse/custom_attributes/sort/not_percent
