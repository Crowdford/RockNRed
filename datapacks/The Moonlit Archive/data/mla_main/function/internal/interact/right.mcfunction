
execute as @e[type=interaction,distance=..12,tag=mla.interaction.any] at @s run function mla_main:internal/interact/check_right

advancement revoke @s only mla_main:interact/right