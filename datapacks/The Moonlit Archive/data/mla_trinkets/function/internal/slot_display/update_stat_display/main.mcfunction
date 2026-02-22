
function bb:internal/systems/pldata/read

data remove block 10000000 1 10000000 Items
item replace block 10000000 1 10000000 container.0 with clock[equippable={slot:"head",equip_sound:"block.candle.ambient"},tooltip_style="map_exclusive:common",tooltip_display={hidden_components:["enchantments"]},item_model="trinkets:gui/mag",enchantments={"minecraft:vanishing_curse":1},max_stack_size=1,custom_data={mla_trinkets_data:{gui:1}}] 1

data modify storage bbl:temp sudo_root.stats.name set from storage bbl:pldata sudo_root.working_data.bbl.name

execute store result storage bbl:temp sudo_root.stats.speed int 1 run scoreboard players get @s mla.custom_attributes.speed
execute store result storage bbl:temp sudo_root.stats.max_hp int 1 run scoreboard players get @s mla.custom_attributes.max_hp
execute store result storage bbl:temp sudo_root.stats.might int 1 run scoreboard players get @s mla.custom_attributes.might
execute store result storage bbl:temp sudo_root.stats.magic int 1 run scoreboard players get @s mla.custom_attributes.magic
execute store result storage bbl:temp sudo_root.stats.manip int 1 run scoreboard players get @s mla.custom_attributes.manip

function mla_trinkets:internal/slot_display/update_stat_display/macro with storage bbl:temp sudo_root.stats

item replace entity @s armor.head from block 10000000 1 10000000 container.0
