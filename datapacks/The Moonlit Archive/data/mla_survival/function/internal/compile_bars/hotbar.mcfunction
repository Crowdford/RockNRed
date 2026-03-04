
execute store result score $slot bbl.main run data get entity @s SelectedItemSlot

execute if score $slot bbl.main matches 0 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.selector set from storage mla:survival sudo_root.prebuilt.hud.hotbar.selector.0
execute if score $slot bbl.main matches 1 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.selector set from storage mla:survival sudo_root.prebuilt.hud.hotbar.selector.1
execute if score $slot bbl.main matches 2 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.selector set from storage mla:survival sudo_root.prebuilt.hud.hotbar.selector.2
execute if score $slot bbl.main matches 3 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.selector set from storage mla:survival sudo_root.prebuilt.hud.hotbar.selector.3
execute if score $slot bbl.main matches 4 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.selector set from storage mla:survival sudo_root.prebuilt.hud.hotbar.selector.4
execute if score $slot bbl.main matches 5 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.selector set from storage mla:survival sudo_root.prebuilt.hud.hotbar.selector.5
execute if score $slot bbl.main matches 6 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.selector set from storage mla:survival sudo_root.prebuilt.hud.hotbar.selector.6
execute if score $slot bbl.main matches 7 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.selector set from storage mla:survival sudo_root.prebuilt.hud.hotbar.selector.7
execute if score $slot bbl.main matches 8 run data modify storage bbl:pldata sudo_root.working_data.oneshot.hud_build.selector set from storage mla:survival sudo_root.prebuilt.hud.hotbar.selector.8
