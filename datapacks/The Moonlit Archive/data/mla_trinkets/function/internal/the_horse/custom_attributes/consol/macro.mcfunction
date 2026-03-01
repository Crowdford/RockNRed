
$execute store result score $temp bbl.main run data get storage mla:temp sudo_root.trinkets.working.sort.temp.consol.final[{priority:$(priority),id:"$(id)",type:"$(type)"}].value

$scoreboard players set $temp2 bbl.main $(value)

execute store result storage mla:temp sudo_root.trinkets.working.sort.temp.consol.current.new_value int 1 run scoreboard players operation $temp bbl.main += $temp2 bbl.main

function mla_trinkets:internal/the_horse/custom_attributes/consol/we_need_to_go_deeper with storage mla:temp sudo_root.trinkets.working.sort.temp.consol.current
