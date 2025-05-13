
#ITEM REPLACE COMMAND
item replace block 10000000 1 10000000 container.0 with clock[attribute_modifiers=[{id:"armor",type:"armor",amount:1,operation:"add_value",slot:"head"}]] 1

#ALL ATTRIBUTE MODIFIERS SHOULD BE "HEAD" OR OTHER USELESS SLOT- NEVER MAINHAND OR OFFHAND.


#APPLICABLE SLOTS - ADD FIRST NUMBER FROM LEGEND BELOW TO BELOW COMMAND'S TRAILING VALUE
#E.G. HELMET + BOOTS WOULD BE 9
#1 #1 - Helmet
#2 #2 - Chestplate
#4 #3 - Leggings
#8 #4 - Boots
#16 #5 - Trinket
#32 #6 - Wings
#64 #7 - Runecore
#128 #8 - Mainhand (*Is technically a slot type, but also determines if stats are added when the item is held in the player's mainhand.)
#256 #9 - Blood
data modify block 10000000 1 10000000 Items[0].components."minecraft:custom_data".mla_trinkets_data.slots set value 21


#LORE - GETS AUTO WRAPPED
scoreboard players set $item.has_lore bbl.main 0
data modify storage t:e m.p.1 set value "This is an example of a line of lore text that has gotten too long and needs wrapped."
#LORE VAR - MAX LENTH IN PIXELS. CAN BE ADJUSTED, 120 IS RECCOMENDED
scoreboard players set $wrap.max_line_length bbl.main 120


#RARITY VAR - IF > 1 ADDS A RARITY LINE
scoreboard players set $item.rarity bbl.main 4


#BASE WEAPON STATS
#STATS ARE ONLY ADDED IF NUMBERS ARE > 1
#MELEE DAMAGE (0+)
data modify storage t:e m.p.2 set value 0
#MELEE ATKS (0.1-4, rep as 01-40)
data modify storage t:e m.p.3 set value 16

#RANGED DAMAGE (0+)
data modify storage t:e m.p.5 set value 0
#RANAGED SPD (0+)
data modify storage t:e m.p.6 set value 0


#










































function mla_dev_tools:internal/lore_formatter/format