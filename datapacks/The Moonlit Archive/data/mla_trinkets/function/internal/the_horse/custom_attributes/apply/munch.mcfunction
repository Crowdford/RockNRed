
data modify storage mla:temp sudo_root.trinkets.working.sort.temp.flat set value "flat"
execute store success score $temp bbl.main run data modify storage mla:temp sudo_root.trinkets.working.sort.temp.flat set from storage mla:temp sudo_root.trinkets.working.sort.temp.consol.final[0].type

#fails, flat
execute if score $temp bbl.main matches 0 run function mla_trinkets:internal/the_horse/custom_attributes/apply/macro_flat with storage mla:temp sudo_root.trinkets.working.sort.temp.consol.final[0]
#succeeds, percent
execute if score $temp bbl.main matches 1 run function mla_trinkets:internal/the_horse/custom_attributes/apply/macro_percent with storage mla:temp sudo_root.trinkets.working.sort.temp.consol.final[0]


execute if data storage mla:temp sudo_root.trinkets.working.sort.temp.consol.final[0] run function mla_trinkets:internal/the_horse/custom_attributes/apply/munch
