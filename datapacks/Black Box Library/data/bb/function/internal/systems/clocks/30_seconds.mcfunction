
scoreboard players set $30_seconds bbl.clock 0

function #minecraft:bbl/clock/30_seconds/global

execute as @a at @s run function #minecraft:bbl/clock/30_seconds/as_player
