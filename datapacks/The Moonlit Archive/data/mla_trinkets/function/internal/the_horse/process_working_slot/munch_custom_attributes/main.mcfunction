





#data remove storage bbl:temp sudo_root.trinkets_attribute_calc
#data modify storage bbl:temp sudo_root.trinkets_attribute_calc set from storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:custom_data".mla_attributes_data.attributes[0]

data modify storage mla:temp sudo_root.trinkets.working.custom_attributes_array append from storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:custom_data".mla_attributes_data.attributes[0]
data remove storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:custom_data".mla_attributes_data.attributes[0]

execute if data storage bbl:temp sudo_root.trinkets.working.slot.components."minecraft:custom_data".mla_attributes_data.attributes[0] run function mla_trinkets:internal/the_horse/process_working_slot/munch_custom_attributes/main
