
execute if score $found_slot bbl.main matches 25 run data modify storage bbl:inv inv.all[{Slot:25b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.main matches 25 run data modify storage bbl:inv inv.all[{Slot:25b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.main matches 25 run data modify storage bbl:inv inv.all[{Slot:25b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

execute if score $found_slot bbl.main matches 26 run data modify storage bbl:inv inv.all[{Slot:26b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.main matches 26 run data modify storage bbl:inv inv.all[{Slot:26b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.main matches 26 run data modify storage bbl:inv inv.all[{Slot:26b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

