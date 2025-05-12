
##Is "?
#reset check
scoreboard players set $is_special bbl.main 0
#check
execute store result score $is_special bbl.main run data get storage bb:lib sudo_root.parsing.metadata_array[0].special_character
#toggle save
execute if score $is_special bbl.main matches 3 run scoreboard players operation $is_saving bbl.main *= $-1 bbl.constant

#execute if score $is_saving bbl.main matches -1 run data remove storage bb:lib sudo_root.parsing.metadata_array[0]

execute unless score $is_special bbl.main matches 3 if score $is_saving bbl.main matches 1 run function mla_trinkets:internal/the_horse/process_working_slot/save_digit

execute if score $is_special bbl.main matches 3 if score $length bbl.main matches 3.. run function mla_trinkets:internal/the_horse/process_working_slot/extract_enchant

#x nay on the storage nay
data remove storage bb:lib sudo_root.parsing.metadata_array[0]


execute if data storage bb:lib sudo_root.parsing.metadata_array[0] run function mla_trinkets:internal/the_horse/process_working_slot/munch_metadata
