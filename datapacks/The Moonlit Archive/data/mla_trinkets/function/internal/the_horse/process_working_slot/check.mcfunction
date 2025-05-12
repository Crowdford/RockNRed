
#Get pre-existing level
$execute store result score $enchant_level_found bbl.main run data get storage bbl:buildhorse sudo_root.build_enchants[{id:"$(string)"}].lvl
#Set level to add
$scoreboard players set $total_level bbl.main $(num)

#Sum & set level
$execute store result storage bbl:buildhorse sudo_root.build_enchants[{id:"$(string)"}].lvl int 1 run scoreboard players operation $total_level bbl.main += $enchant_level_found bbl.main

#$say $(string) : $(num)
