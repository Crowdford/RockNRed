
execute if score @s mla.custom_attributes.hp.fast_refresh_timer matches 1.. run function mla_survival:internal/compile_bars/fast_refresh
function mla_survival:internal/survival/stamina_loop

#execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:1b}}}} run say hi
