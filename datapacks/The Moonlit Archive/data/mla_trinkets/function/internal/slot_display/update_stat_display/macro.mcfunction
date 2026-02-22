
$data modify block 10000000 1 10000000 Items[0].components."minecraft:custom_name" set value {color:"white",text:"$(name)'s Stats",italic:false,bold:true}

$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#C90A30","italic":false,"translate":"oneshot.item.meta.stat.hp"},{"color":"gray","italic":false,"text":": $(max_hp)"}]
data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{text:" "}]
$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#4DD5FF","italic":false,"translate":"oneshot.item.meta.stat.speed"},{"color":"gray","italic":false,"text":": $(speed)"}]
data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{text:" "}]
$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#FF9100","italic":false,"translate":"oneshot.item.meta.stat.might"},{"color":"gray","italic":false,"text":": $(might)"}]
$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#4DD5FF","italic":false,"translate":"oneshot.item.meta.stat.magic"},{"color":"gray","italic":false,"text":": $(magic)"}]
$data modify block 10000000 1 10000000 Items[0].components."minecraft:lore" append value [{"color":"#C982FF","italic":false,"translate":"oneshot.item.meta.stat.manip"},{"color":"gray","italic":false,"text":": $(manip)"}]