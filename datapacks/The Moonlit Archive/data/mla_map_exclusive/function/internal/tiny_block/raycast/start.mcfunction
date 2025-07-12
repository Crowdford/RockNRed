
stopsound @s * minecraft:entity.snowball.throw

data remove storage iris:output TargetPosition

execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target

data remove storage mla:temp sudo_root.map_exclusive.tb

data modify storage mla:temp sudo_root.map_exclusive.tb.tile_x set from storage iris:output TargetPosition.tile[0]
data modify storage mla:temp sudo_root.map_exclusive.tb.tile_y set from storage iris:output TargetPosition.tile[1]
data modify storage mla:temp sudo_root.map_exclusive.tb.tile_z set from storage iris:output TargetPosition.tile[2]

data modify storage mla:temp sudo_root.map_exclusive.tb.point_x set from storage iris:output TargetPosition.point[0]
data modify storage mla:temp sudo_root.map_exclusive.tb.point_y set from storage iris:output TargetPosition.point[1]
data modify storage mla:temp sudo_root.map_exclusive.tb.point_z set from storage iris:output TargetPosition.point[2]

execute store result score $dist mla.main run data get storage iris:output Distance

execute if score $dist mla.main matches ..4 run function mla_map_exclusive:internal/tiny_block/raycast/output with storage mla:temp sudo_root.map_exclusive.tb



#execute store result score $calc mla.main run data get storage iris:output TargetPosition.point[0] 100
#execute if score $calc mla.main matches 100 run say left
#execute if score $calc mla.main matches 1..49 run say left
#execute if score $calc mla.main matches 50..99 run say right
#execute if score $calc mla.main matches 0 run say right
#execute store result score $calc mla.main run data get storage iris:output TargetPosition.point[1] 100
#execute if score $calc mla.main matches 1..49 run say lower
#execute if score $calc mla.main matches 100 run say lower
#execute if score $calc mla.main matches 0 run say upper
#execute if score $calc mla.main matches 50..99 run say upper
#execute store result score $calc mla.main run data get storage iris:output TargetPosition.point[2] 100
#execute if score $calc mla.main matches 1..49 run say front
#execute if score $calc mla.main matches 100 run say front
#execute if score $calc mla.main matches 0 run say back
#execute if score $calc mla.main matches 50..99 run say back
