
#CHEST - COMBAT FEAT?
data remove block 10000000 1 10000000 Items
item replace block 10000000 1 10000000 container.0 with clock[equippable={slot:"chest",equip_sound:"block.candle.ambient"},tooltip_style="map_exclusive:common",tooltip_display={hidden_components:["enchantments"]},item_model="mla:survival/gui/feat",enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},max_stack_size=1,custom_data={mla_trinkets_data:{gui:1}}] 1
#execute store result storage bbl:temp sudo_root.survival.hunger int 1 run scoreboard players get @s mla.custom_attributes.manip

function mla_oneshot:internal/slot_display/chest with storage bbl:temp sudo_root.stats
item replace entity @s armor.chest from block 10000000 1 10000000 container.0

#BOOT - WEALTH
data remove block 10000000 1 10000000 Items
item replace block 10000000 1 10000000 container.0 with clock[equippable={slot:"feet",equip_sound:"block.candle.ambient"},tooltip_style="map_exclusive:common",tooltip_display={hidden_components:["enchantments"]},item_model="mla:survival/gui/wallet",enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},max_stack_size=1,custom_data={mla_trinkets_data:{gui:1}}] 1

function mla_oneshot:internal/slot_display/boot with storage bbl:temp sudo_root.stats
item replace entity @s armor.feet from block 10000000 1 10000000 container.0
