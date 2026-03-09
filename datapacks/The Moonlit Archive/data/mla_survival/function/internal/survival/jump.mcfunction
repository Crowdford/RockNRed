
execute if score @s mla.survival.stamina.current matches -10.. run scoreboard players remove @s mla.survival.stamina.current 7
execute if score @s mla.survival.stamina.current matches -10.. run scoreboard players add @s mla.statistic.stamina_spent 7
execute if score @s mla.survival.stamina.current matches -10.. run scoreboard players add @s mla.statistic.jumps 1

scoreboard players set @s mla.survival.jump 0
