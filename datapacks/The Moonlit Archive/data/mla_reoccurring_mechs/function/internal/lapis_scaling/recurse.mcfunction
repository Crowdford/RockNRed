
scoreboard players remove $lapis_scaling.total_player_count mla.main 1

summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:2b}}

#RNG
#\Set Values
#\\Min
scoreboard players set $rng_min bbl.rng 1
#\\Max
scoreboard players set $rng_max bbl.rng 100
#\Roll
function bb:lib/rng/call

execute if score $value bbl.rng matches 1..20 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:1b}}
execute if score $value bbl.rng matches 100 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:3b}}

execute if score $lapis_scaling.total_player_count mla.main matches 1.. run function mla_reoccurring_mechs:internal/lapis_scaling/recurse
