
#Remove sliding tag
function bb:internal/systems/sliding_down_honey/tag_remove

#Initialize
#\Repeated
execute unless entity @s[tag=bbl.initialized.repeated] run function bb:internal/systems/init/repeated
#\Single
execute unless entity @s[tag=bbl.initialized.single] run function bb:internal/systems/init/single

#Relog check
execute if score @s bbl.relog matches 1.. run function bb:sys/relog

#Inventory changed
execute if entity @s[tag=bbl.inventory_changing] run function bb:internal/systems/tag_functions/inventory_changed/tag

#Slot changed
function bb:internal/systems/tag_functions/slot_changed/loop

#Gamemode changed
function bb:internal/systems/tag_functions/gamemode_changed/loop

#Y change checker
function bb:internal/systems/tag_functions/y_change

#Actionbar spammer
execute if score @s bbl.actionbar_spam_mute matches 1.. run scoreboard players remove @s bbl.actionbar_spam_mute 1

#Actions
#\Dropped KB
execute if score @s bbl.action.drop.kb matches 1.. run function bb:internal/systems/action/drop/kb
#Drop anything
execute if score @s bbl.action.drop.any matches 1.. run function bb:internal/systems/action/drop/any
#\Placed stair
execute if score @s bbl.action.place.spruce_stair matches 1.. run function bb:internal/systems/action/place/spruce_stair
#\Place barrel
execute if score @s bbl.action.place.barrel matches 1.. run function bb:internal/systems/action/place/barrel
#\\\Mine
#\\Lapis
#\Stone
execute if score @s bbl.action.mine.lapis.stone matches 1.. run function bb:internal/systems/action/mine/lapis
#\Deepslate
execute if score @s bbl.action.mine.lapis.deepslate matches 1.. run function bb:internal/systems/action/mine/lapis
#\\Spawner
execute if score @s bbl.action.mine.spawner matches 1.. run function bb:internal/systems/action/mine/spawner
#\Scored kill
execute if score @s bbl.action.kill matches 1.. run function bb:internal/systems/action/kill
#\Used bow
execute if score @s bbl.action.shot.bow matches 1.. run function bb:internal/systems/action/shot/bow
#\Used crossbow
execute if score @s bbl.action.shot.crossbow matches 1.. run function bb:internal/systems/action/shot/crossbow
#\\On death
#\On spawn
execute if score @s bbl.action.die.on_spawn matches 1.. unless entity @s[nbt={Health:0f}] run function bb:internal/systems/action/die/on_spawn
#\On death
execute if score @s bbl.action.die.on_death matches 1.. run function bb:internal/systems/action/die/on_death
#\Jump
execute if score @s bbl.action.jump matches 1.. run function bb:internal/systems/action/jump
#\Take damage
execute if score @s bbl.action.take_damage matches 1.. run function bb:internal/systems/action/take_damage
#\\Used
#\Totem
execute if score @s bbl.action.use.totem matches 1.. run function bb:internal/systems/action/use/totem
#\Bundle
execute if score @s bbl.action.use.bundle matches 1.. run function bb:internal/systems/action/use/bundle
#\CoaS
execute if score @s bbl.action.use.coas matches 1.. run function bb:internal/systems/action/use/coas


#Movement checker
#Normal movement
execute if score @s bbl.move.walk matches 1.. run function bb:internal/systems/move_detector/input/walk
execute if score @s bbl.move.sprint matches 1.. run function bb:internal/systems/move_detector/input/sprint
execute if score @s bbl.move.crouch matches 1.. run function bb:internal/systems/move_detector/input/crouch
execute if score @s bbl.move.climb matches 1.. run function bb:internal/systems/move_detector/input/climb
execute if score @s bbl.move.swim matches 1.. run function bb:internal/systems/move_detector/input/swim
execute if score @s bbl.move.horse matches 1.. run function bb:internal/systems/move_detector/input/horse
execute if score @s bbl.move.walk_underwater matches 1.. run function bb:internal/systems/move_detector/input/walk_underwater
execute if score @s bbl.move.fly matches 1.. run function bb:internal/systems/move_detector/input/fly
#Mute timer
execute if score @s bbl.move.mute matches 1.. run function bb:internal/systems/move_detector/mute_loop
#Mouse listener
execute if score @s bbl.move.mouse_angle.listen matches 1.. if score @s bbl.move.mute matches 0 run function bb:internal/systems/move_detector/mouse_loop

execute if entity @s[tag=delta.kill.fix] run function bb:internal/systems/delta_kill_fix


#GUI Closer
execute if score @s bbl.close_gui.stop_portal_sound matches 1.. run function bb:internal/systems/close_gui/stop_sound/loop
execute if entity @s[tag=bbl.tp_back_from_portal] run function bb:internal/systems/close_gui/return

#Enderchest cd
execute if score @s bbl.universal_active_enderchest.cooldown_switch matches 1.. run scoreboard players remove @s bbl.universal_active_enderchest.cooldown_switch 1
