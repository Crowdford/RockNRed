
#IDENTIFIER - TYPE - SAVED BY SAVES
data modify storage mla:scoresys sudo_root.main set value [{i:"mla.main.trigger",t:"trigger",s:0},{i:"mla.main.outline_color",t:"trigger",s:0},{i:"mla.main.config.night_vision",t:"dummy",s:0},{i:"mla.main.config.tris_switch",t:"dummy",s:1},{i:"mla.main",t:"dummy",s:0},{i:"mla.config",t:"dummy",s:0},{i:"mla.red_text.vile_vial",t:"dummy",s:0},{i:"mla.dev_tools.use_if",t:"minecraft.used:minecraft.item_frame",s:0},{i:"mla.dev_tools.note_timer",t:"dummy",s:0},{i:"mla.map_exclusive.tiny_block_use",t:"minecraft.used:minecraft.snowball",s:0},{i:"mla.map_exclusive.tiny_block_stupid",t:"dummy",s:0},{i:"mla.map_exclusive.tiny_block_type",t:"dummy",s:0},{i:"mla.map_exclusive.tiny_block.fog_timer",t:"dummy",s:0},{i:"mla.map_exclusive.shrink.loop",t:"dummy",s:1},{i:"mla.survival.hunger.max",t:"dummy",s:1},{i:"mla.survival.hunger.current",t:"dummy",s:0},{i:"mla.survival.hunger.exhaustion",t:"dummy",s:1},{i:"mla.survival.thirst.max",t:"dummy",s:1},{i:"mla.survival.thirst.current",t:"dummy",s:1},{i:"mla.survival.thirst.exhaustion",t:"dummy",s:1},{i:"mla.survival.sleep.max",t:"dummy",s:1},{i:"mla.survival.sleep.current",t:"dummy",s:1},{i:"mla.survival.sleep.exhaustion",t:"dummy",s:1},{i:"mla.survival.sickness.max",t:"dummy",s:1},{i:"mla.survival.sickness.current",t:"dummy",s:1},{i:"mla.survival.sickness.exhaustion",t:"dummy",s:1},{i:"mla.survival.stamina.max",t:"dummy",s:1},{i:"mla.survival.stamina.current",t:"dummy",s:1},{i:"mla.survival.stamina.exhaustion",t:"dummy",s:1},{i:"mla.survival.stamina.delay",t:"dummy",s:1},{i:"mla.survival.food",t:"food",s:1},{i:"mla.survival.jump",t:"minecraft.custom:minecraft.jump",s:0},{i:"mla.trinkets.slot.1.type",t:"dummy",s:1},{i:"mla.trinkets.slot.2.type",t:"dummy",s:1},{i:"mla.trinkets.slot.3.type",t:"dummy",s:1},{i:"mla.trinkets.slot.4.type",t:"dummy",s:1},{i:"mla.trinkets.slot.5.type",t:"dummy",s:1},{i:"mla.trinkets.slot.6.type",t:"dummy",s:1},{i:"mla.trinkets.slot.7.type",t:"dummy",s:1},{i:"mla.trinkets.slot.8.type",t:"dummy",s:1},{i:"mla.trinkets.slot.9.type",t:"dummy",s:1},{i:"mla.trinkets.slot.1.state",t:"dummy",s:1},{i:"mla.trinkets.slot.2.state",t:"dummy",s:1},{i:"mla.trinkets.slot.3.state",t:"dummy",s:1},{i:"mla.trinkets.slot.4.state",t:"dummy",s:1},{i:"mla.trinkets.slot.5.state",t:"dummy",s:1},{i:"mla.trinkets.slot.6.state",t:"dummy",s:1},{i:"mla.trinkets.slot.7.state",t:"dummy",s:1},{i:"mla.trinkets.slot.8.state",t:"dummy",s:1},{i:"mla.trinkets.slot.9.state",t:"dummy",s:1},{i:"mla.trinkets.update_cd",t:"dummy",s:1},{i:"la.trinkets.binding_cd",t:"dummy",s:1},{i:"mla.custom_attributes.speed",t:"dummy",s:1},{i:"mla.custom_attributes.max_hp",t:"dummy",s:1},{i:"mla.custom_attributes.hp.overheal",t:"dummy",s:1},{i:"mla.custom_attributes.hp.current",t:"dummy",s:1},{i:"mla.custom_attributes.hp.flashed",t:"dummy",s:1},{i:"mla.custom_attributes.hp.blink_timer",t:"dummy",s:1},{i:"mla.custom_attributes.hp.fast_refresh_timer",t:"dummy",s:1},{i:"mla.custom_attributes.might",t:"dummy",s:1},{i:"mla.custom_attributes.magic",t:"dummy",s:1},{i:"mla.custom_attributes.manip",t:"dummy",s:1},{i:"mla.statistic.pre_mit_damage_taken",t:"dummy",s:1},{i:"mla.statistic.post_mit_damage_taken",t:"dummy",s:1},{i:"mla.saves.select_character",t:"trigger",s:0},{i:"mla.saves.next_char_slot",t:"dummy",s:0},{i:"mla.saves.current_character",t:"dummy",s:0},{i:"mla.saves.make_char",t:"trigger",s:0},{i:"mla.saves.char_data.pronouns",t:"dummy",s:1},{i:"mla.saves.char_data.animal",t:"dummy",s:1}]
data modify storage mla:scoresys sudo_root.scores set from storage mla:scoresys sudo_root.main

#,{i:"",t:"dummy",s:0}

function mla_main:internal/scoresys/install

#scoreboard objectives add mla.main dummy
#scoreboard objectives add mla.config dummy

execute unless score $module_enabled.main mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.main mla.main 1
execute unless score $module_enabled.trinkets mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.trinkets mla.main 0
execute unless score $module_enabled.dev_tools mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.dev_tools mla.main 0
execute unless score $module_enabled.event_tools mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.event_tools mla.main 0
execute unless score $module_enabled.reoccuring_mechs mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.reoccurring_mechs mla.main 0
execute unless score $module_enabled.map_specific.all mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.map_specific.all mla.main 0
execute unless score $module_enabled.map_specific.tiny_blocks mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.map_specific.tiny_blocks mla.main 0
execute unless score $module_enabled.map_specific.shrink mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.map_specific.shrink mla.main 0
execute unless score $module_enabled.archive mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.archive mla.main 0
execute unless score $module_enabled.custom_attributes mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.custom_attributes mla.main 0
execute unless score $module_enabled.survival mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.survival mla.main 0
execute unless score $module_enabled.oneshot mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.oneshot mla.main 0
execute unless score $module_enabled.saves mla.main matches -2147483648..2147483647 run scoreboard players set $module_enabled.saves mla.main 0

#scoreboard objectives add mla.main.trigger trigger
#scoreboard objectives add mla.main.outline_color trigger

#scoreboard objectives add mla.main.config.night_vision dummy
#scoreboard objectives add mla.main.config.tris_switch dummy
