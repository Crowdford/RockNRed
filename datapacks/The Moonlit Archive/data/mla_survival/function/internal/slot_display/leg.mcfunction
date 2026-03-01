
$data modify block 10000000 1 10000000 Items[0].components."minecraft:custom_name" set value {color:"white",text:"$(name)'s Status",italic:false,bold:true}

$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#$(stamina_color)","italic":false,"translate":"oneshot.item.meta.stat.stamina"},{"color":"gray","italic":false,"text":": $(stamina_current)/$(stamina_max)"}]
$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#$(sickness_color)","italic":false,"translate":"oneshot.item.meta.stat.sickness"},{"color":"gray","italic":false,"text":": $(sickness_current)/$(sickness_max)"}]
$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#$(sleep_color)","italic":false,"translate":"oneshot.item.meta.stat.sleep"},{"color":"gray","italic":false,"text":": $(sleep_current)/$(sleep_max)"}]
$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#$(thirst_color)","italic":false,"translate":"oneshot.item.meta.stat.thirst"},{"color":"gray","italic":false,"text":": $(thirst_current)/$(thirst_max)"}]
$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#$(hunger_color)","italic":false,"translate":"oneshot.item.meta.stat.hunger"},{"color":"gray","italic":false,"text":": $(hunger_current)/$(hunger_max)"}]
