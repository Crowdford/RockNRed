
tellraw @s "TESTING FUNCTION - IF YOU RUN THIS, IT IS NOT MY FAULT WHEN SOMETHING BREAKS"

scoreboard players set $rng_min bbl.rng 3
scoreboard players set $rng_max bbl.rng 40
function bb:lib/rng/call
scoreboard players operation @s mla.survival.hunger.current = $value bbl.rng

scoreboard players set $rng_min bbl.rng 3
scoreboard players set $rng_max bbl.rng 40
function bb:lib/rng/call
scoreboard players operation @s mla.survival.thirst.current = $value bbl.rng

scoreboard players set $rng_min bbl.rng 3
scoreboard players set $rng_max bbl.rng 40
function bb:lib/rng/call
scoreboard players operation @s mla.survival.sleep.current = $value bbl.rng

scoreboard players set $rng_min bbl.rng 3
scoreboard players set $rng_max bbl.rng 60
function bb:lib/rng/call
scoreboard players operation @s mla.survival.sickness.current = $value bbl.rng

scoreboard players set $rng_min bbl.rng 3
scoreboard players set $rng_max bbl.rng 10
function bb:lib/rng/call
scoreboard players operation @s mla.survival.stamina.current = $value bbl.rng