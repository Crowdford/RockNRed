
#Remove scoreboards
#\Score Storage Location
scoreboard objectives remove bbl.main
#\Constants
scoreboard objectives remove bbl.constant
#\Relog score
scoreboard objectives remove bbl.relog
#\RNG
scoreboard objectives remove bbl.rng
#\Y checker
#\Precise
scoreboard objectives remove bbl.y_past.pre
#\Block
scoreboard objectives remove bbl.y_past.bck
#\Item effects
#\Interaction Blocker
scoreboard objectives remove bbl.ie.block
#\Minus xp
#\xp
scoreboard objectives remove bbl.xp
#\success
scoreboard objectives remove bbl.xp.success
#\Relco
scoreboard objectives remove bbl.relco.X1
scoreboard objectives remove bbl.relco.Y1
scoreboard objectives remove bbl.relco.Z1

scoreboard objectives remove bbl.relco.X2
scoreboard objectives remove bbl.relco.Y2
scoreboard objectives remove bbl.relco.Z2

scoreboard objectives remove bbl.relco.XD
scoreboard objectives remove bbl.relco.YD
scoreboard objectives remove bbl.relco.ZD
#Actionbar muter
scoreboard objectives remove bbl.actionbar_spam_mute

#Tp to xyz
scoreboard objectives remove bbl.tp_xyz.x
scoreboard objectives remove bbl.tp_xyz.y
scoreboard objectives remove bbl.tp_xyz.z

#Close gui sound timer
scoreboard objectives remove bbl.close_gui.stop_portal_sound


#CDL Scoreboards
#Healing queue
scoreboard objectives remove bbl.heal_queue
#Damaging queue
scoreboard objectives remove bbl.damage_queue
#Damage timer
scoreboard objectives remove bbl.damage_timer
#HPMod queue (Shorthand for Healing/Damaging queues)
scoreboard objectives remove bbl.hpm_queue
#True damage health score
scoreboard objectives remove bbl.p_health

scoreboard objectives remove bbl.hth.post_hp
scoreboard objectives remove bbl.hth.pre_hp
scoreboard objectives remove bbl.hth.amount

#Actions
#\Drop kb
scoreboard objectives remove bbl.drop.kb
#\Drop anything
scoreboard objectives remove bbl.action.drop.any
#\Place spruce stairs
scoreboard objectives remove bbl.action.place.spruce_stair
#\Place barrel
scoreboard objectives remove bbl.action.place.barrel
#\Score kill
scoreboard objectives remove bbl.action.kill
#\Shot bow
scoreboard objectives remove bbl.action.shot.bow
#\Shot crossbow
scoreboard objectives remove bbl.action.shot.crossbow
#\Mine lapis
#\\Stone
scoreboard objectives remove bbl.action.mine.lapis.stone
#\\Deepslate
scoreboard objectives remove bbl.action.mine.lapis.deepslate
#\\Spawner
scoreboard objectives remove bbl.action.mine.spawner
#\\On death
#\On player respawn
scoreboard objectives remove bbl.action.die.on_spawn
#\On initial death
scoreboard objectives remove bbl.action.die.on_death
#\Jump
scoreboard objectives remove bbl.action.jump
#\Take damage
scoreboard objectives remove bbl.action.take_damage
#\\Use
#\Totem
scoreboard objectives remove bbl.action.use.totem
#\Bundle
scoreboard objectives remove bbl.action.use.bundle
#\CoaS
scoreboard objectives remove bbl.action.use.coas

#\Universal enderchest id system for enabling/disabling the right menus
scoreboard objectives remove bbl.universal_active_enderchest_menu_id

#\Move detector
#Mute timer
scoreboard objectives remove bbl.move.mute
#\Walk
scoreboard objectives remove bbl.move.walk
#\Sprint
scoreboard objectives remove bbl.move.sprint
#\Crouch
scoreboard objectives remove bbl.move.crouch
#\Climb
scoreboard objectives remove bbl.move.climb
#\Horse
scoreboard objectives remove bbl.move.horse
#\Swim
scoreboard objectives remove bbl.move.swim
#\Walk underwater
scoreboard objectives remove bbl.move.walk_underwater
#\Fly
scoreboard objectives remove bbl.move.fly

##\Mouse
##\Pitch
###\Current
scoreboard objectives remove bbl.move.mouse_angle.pitch.current
###\Previous
scoreboard objectives remove bbl.move.mouse_angle.pitch.past
##\Yaw
###\Current
scoreboard objectives remove bbl.move.mouse_angle.yaw.current
###\Previous
scoreboard objectives remove bbl.move.mouse_angle.yaw.past

scoreboard objectives remove bbl.inventory

#Remove teams
team remove no_collide
team remove full_collide

team remove aqua
team remove black
team remove blue
team remove dark_aqua
team remove dark_blue
team remove dark_gray
team remove dark_green
team remove dark_purple
team remove dark_red
team remove gold
team remove gray
team remove green
team remove light_purple
team remove red
team remove white
team remove yellow


#Un-Forceload chunk
forceload remove 10000000 10000000
setblock 10000000 1 10000000 air

#Misc.
tag @a remove bbl.initialized
