
execute if entity @s[tag=!fixyfixy] if score $module_enabled.trinkets mla.main matches 1 run function mla_trinkets:internal/all/inventory_update

#scoreboard players add $count bbl.main 1
