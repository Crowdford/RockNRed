
#Check falling
execute unless predicate bb:cant_crit run function bb:internal/systems/danger_check/falling

#If not falling, check drowning
execute if entity @s[tag=!bbl.in_danger] run function bb:internal/systems/danger_check/check/drowning
