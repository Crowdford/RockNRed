
scoreboard players remove $raycast.steps mla.main 1

execute if entity @e[type=minecraft:interaction,dx=0,dz=0,dy=0,tag=mla.interaction.placeholder] as @e[type=minecraft:interaction,dx=0,dz=0,dy=0,tag=mla.interaction.placeholder,limit=1,sort=nearest,distance=..3] at @s run function mla_dev_tools:internal/placeholder/note/display

execute if score $raycast.steps mla.main matches 1.. positioned ^ ^ ^.05 run function mla_dev_tools:internal/placeholder/raycast/loop
