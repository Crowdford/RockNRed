
#execute store result score $stat_calc mla.master run data get storage bbl:equips sudo_root.player_inventory.offhand.tag.red_text[{id:"money_where_your_mouth_is"}].lvl
#scoreboard players operation @s mla.red_text.money_where_your_mouth_is += $stat_calc mla.master
