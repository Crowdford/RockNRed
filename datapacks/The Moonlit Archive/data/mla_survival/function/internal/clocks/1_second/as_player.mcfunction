
execute if score $module_enabled.survival mla.main matches 1.. if entity @s[tag=mla.oneshot.live_state] run function mla_survival:internal/survival/do_loss
