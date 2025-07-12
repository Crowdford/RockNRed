
execute as @e[type=interaction,distance=..12,tag=mla.interaction.any] at @s run function mla_dev_tools:internal/interact/check_right

advancement revoke @s only mla_dev_tools:interact/right