
scoreboard players set $valid bbl.main 0

execute if score $slot_type bbl.main matches 64 store success score $valid bbl.main if score $slot_flag bbl.main >= $64 bbl.constant run scoreboard players remove $slot_flag bbl.main 64
execute if score $valid bbl.main matches 1 run tag @s add valid
execute unless score $slot_type bbl.main matches 64 if score $slot_flag bbl.main >= $64 bbl.constant run scoreboard players remove $slot_flag bbl.main 64
execute if score $slot_type bbl.main matches 32 store success score $valid bbl.main if score $slot_flag bbl.main >= $32 bbl.constant run scoreboard players remove $slot_flag bbl.main 32
execute if score $valid bbl.main matches 1 run tag @s add valid
execute unless score $slot_type bbl.main matches 32 if score $slot_flag bbl.main >= $32 bbl.constant run scoreboard players remove $slot_flag bbl.main 32
execute if score $slot_type bbl.main matches 16 store success score $valid bbl.main if score $slot_flag bbl.main >= $16 bbl.constant run scoreboard players remove $slot_flag bbl.main 16
execute if score $valid bbl.main matches 1 run tag @s add valid
execute unless score $slot_type bbl.main matches 16 if score $slot_flag bbl.main >= $16 bbl.constant run scoreboard players remove $slot_flag bbl.main 16
execute if score $slot_type bbl.main matches 8 store success score $valid bbl.main if score $slot_flag bbl.main >= $8 bbl.constant run scoreboard players remove $slot_flag bbl.main 8
execute if score $valid bbl.main matches 1 run tag @s add valid
execute unless score $slot_type bbl.main matches 8 if score $slot_flag bbl.main >= $8 bbl.constant run scoreboard players remove $slot_flag bbl.main 8
execute if score $slot_type bbl.main matches 4 store success score $valid bbl.main if score $slot_flag bbl.main >= $4 bbl.constant run scoreboard players remove $slot_flag bbl.main 4
execute if score $valid bbl.main matches 1 run tag @s add valid
execute unless score $slot_type bbl.main matches 4 if score $slot_flag bbl.main >= $4 bbl.constant run scoreboard players remove $slot_flag bbl.main 4
execute if score $slot_type bbl.main matches 2 store success score $valid bbl.main if score $slot_flag bbl.main >= $2 bbl.constant run scoreboard players remove $slot_flag bbl.main 2
execute if score $valid bbl.main matches 1 run tag @s add valid
execute unless score $slot_type bbl.main matches 2 if score $slot_flag bbl.main >= $2 bbl.constant run scoreboard players remove $slot_flag bbl.main 2
execute if score $slot_type bbl.main matches 1 store success score $valid bbl.main if score $slot_flag bbl.main >= $1 bbl.constant run scoreboard players remove $slot_flag bbl.main 1
execute if score $valid bbl.main matches 1 run tag @s add valid
execute unless score $slot_type bbl.main matches 1 if score $slot_flag bbl.main >= $1 bbl.constant run scoreboard players remove $slot_flag bbl.main 1

execute if score $is_gui bbl.main matches 1.. run tag @s add valid
