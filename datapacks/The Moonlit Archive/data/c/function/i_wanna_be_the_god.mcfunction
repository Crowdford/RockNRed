
tellraw @s "TESTING FUNCTION - IF YOU RUN THIS, IT IS NOT MY FAULT WHEN SOMETHING BREAKS"

scoreboard players operation @s mla.survival.hunger.current = @s mla.survival.hunger.max
scoreboard players operation @s mla.survival.thirst.current = @s mla.survival.thirst.max
scoreboard players operation @s mla.survival.sleep.current = @s mla.survival.sleep.max

scoreboard players operation @s mla.survival.stamina.current = @s mla.survival.stamina.max
scoreboard players set @s mla.survival.sickness.current 0