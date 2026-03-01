
execute if score @s mla.survival.stamina.current matches 1.. if score @s mla.survival.food matches ..6 run effect give @s minecraft:saturation 1 0 true
execute if score @s mla.survival.food matches ..1 run effect give @s minecraft:saturation 1 0 true
execute if score @s mla.survival.stamina.current matches ..0 if score @s mla.survival.food matches 4.. run effect give @s minecraft:hunger 1 245 true
execute if score @s mla.survival.food matches 12.. run effect give @s minecraft:hunger 1 245 true

execute if predicate bb:is_sprinting if score @s mla.survival.stamina.current matches 1.. run scoreboard players add @s mla.survival.stamina.exhaustion 1

execute if score @s mla.survival.stamina.exhaustion matches 3.. run scoreboard players remove @s mla.survival.stamina.current 1
execute if score @s mla.survival.stamina.exhaustion matches 3.. run scoreboard players remove @s mla.survival.stamina.exhaustion 3

execute if predicate bb:is_sprinting run attribute @s minecraft:movement_speed modifier add sprint_buff 0.2 add_multiplied_total
execute unless predicate bb:is_sprinting run attribute @s minecraft:movement_speed modifier remove sprint_buff

execute unless predicate bb:is_sprinting unless score @s mla.survival.stamina.current >= @s mla.survival.stamina.max if score @s mla.survival.stamina.delay matches ..1 run scoreboard players add @s mla.survival.stamina.current 1

execute if score @s mla.survival.jump matches 1.. if score @s mla.survival.stamina.current matches -10.. run scoreboard players remove @s mla.survival.stamina.current 7
execute if score @s mla.survival.jump matches 1.. run scoreboard players set @s mla.survival.jump 0

execute if score @s mla.survival.stamina.delay matches ..1 if score @s mla.survival.stamina.current matches ..1 run scoreboard players set @s mla.survival.stamina.delay 60
execute if score @s mla.survival.stamina.delay matches 2 run scoreboard players set @s mla.survival.stamina.current 3
execute if score @s mla.survival.stamina.delay matches 1.. run scoreboard players remove @s mla.survival.stamina.delay 1
