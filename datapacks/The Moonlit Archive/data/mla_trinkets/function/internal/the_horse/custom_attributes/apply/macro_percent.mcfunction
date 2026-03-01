
#$say $(id) $(priority) $(type) $(value)

scoreboard players set $temp2 bbl.main 100
$scoreboard players set $temp3 bbl.main $(value)
scoreboard players operation $temp3 bbl.main += $temp2 bbl.main
$scoreboard players operation @s mla.custom_attributes.$(id) *= $temp3 bbl.main
$scoreboard players operation @s mla.custom_attributes.$(id) /= $100 bbl.constant

data remove storage mla:temp sudo_root.trinkets.working.sort.temp.consol.final[0]
