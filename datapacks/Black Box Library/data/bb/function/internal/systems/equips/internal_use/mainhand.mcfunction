
#execute store result score $stat_calc bbl.main run data get storage bbl:equips sudo_root.player_inventory.mainhand{id:"minecraft:written_book"}.components.minecraft:custom_data.bbl.book_type
#execute if score $stat_calc bbl.main matches 1 run function bb:internal/systems/string_manip/transform_tag/signed_book
#execute if score $stat_calc bbl.main matches 2 run function inasa:func/item_index/input_book/name/held
#execute if score $stat_calc bbl.main matches 3 run function inasa:func/item_index/input_book/lore/held
#execute if score $stat_calc bbl.main matches 4 run function inasa:func/item_index/input_book/set_enchant/held
