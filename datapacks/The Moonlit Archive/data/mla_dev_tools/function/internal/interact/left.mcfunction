
execute as @e[type=interaction,distance=..7,tag=mla.interaction.any] at @s run function mla_dev_tools:internal/interact/check_left

advancement revoke @s only mla_dev_tools:interact/left
