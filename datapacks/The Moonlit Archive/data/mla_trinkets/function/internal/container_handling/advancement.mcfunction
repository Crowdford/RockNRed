
advancement revoke @s only mla_trinkets:container

execute if score $module_enabled.trinkets mla.main matches 1 run function mla_trinkets:internal/container_handling/enabled
