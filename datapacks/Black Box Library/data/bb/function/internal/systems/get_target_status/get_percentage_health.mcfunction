
#Get player's max health
execute store result score $target_max_health bbl.main run attribute @s minecraft:generic.max_health get
#Get player's current health
function bb:lib/get_target_status/get_health
#Multiply current health by 100
scoreboard players operation $target_health bbl.main *= $100 bbl.constant
#Divide current health by max health
scoreboard players operation $target_health bbl.main /= $target_max_health bbl.main
#Set intermediary score
scoreboard players operation $percentage_health_remaining bbl.main = $target_health bbl.main
