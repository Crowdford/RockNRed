
scoreboard players remove @s bbl.heal_queue 4

#Summon area of effect cloud
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:0,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:-5f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_health",amplifier:1,duration:2,show_particles:0b}]}}
