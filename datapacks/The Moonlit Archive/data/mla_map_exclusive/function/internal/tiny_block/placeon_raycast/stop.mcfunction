
scoreboard players set $step mla.main 0

summon marker ~ ~ ~ {Tags:["mla.tb.hit_point"]}
tag @s add mla.cancel
function mla_map_exclusive:internal/tiny_block/raycast/output with storage mla:temp sudo_root.map_exclusive.tb

#say hit
