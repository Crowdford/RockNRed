
#$say $(id) $(priority) $(type) $(value)

$scoreboard players set $temp2 bbl.main $(value)
$scoreboard players operation @s mla.custom_attributes.$(id) += $temp2 bbl.main

data remove storage mla:temp sudo_root.trinkets.working.sort.temp.consol.final[0]
