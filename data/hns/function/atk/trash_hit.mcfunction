execute if score @s hns_entity_health matches ..0 run return -1
playsound item.brush.brushing.gravel.complete block @a ~ ~ ~ 1 1

scoreboard players remove @s hns_entity_health 1
execute if entity @s[tag=hns_trash_tmp] run scoreboard players remove @s hns_entity_health 3
execute on passengers run function hns:shake/1

execute if score @s hns_entity_health matches 9 on passengers on passengers run data modify entity @s text set value '[{"text": "■■■■■■■■■","color": "yellow"},{"text": "■","color": "red"}]'
execute if score @s hns_entity_health matches 8 on passengers on passengers run data modify entity @s text set value '[{"text": "■■■■■■■■","color": "yellow"},{"text": "■■","color": "red"}]'
execute if score @s hns_entity_health matches 7 on passengers on passengers run data modify entity @s text set value '[{"text": "■■■■■■■","color": "yellow"},{"text": "■■■","color": "red"}]'
execute if score @s hns_entity_health matches 6 on passengers on passengers run data modify entity @s text set value '[{"text": "■■■■■■","color": "yellow"},{"text": "■■■■","color": "red"}]'
execute if score @s hns_entity_health matches 5 on passengers on passengers run data modify entity @s text set value '[{"text": "■■■■■","color": "yellow"},{"text": "■■■■■","color": "red"}]'
execute if score @s hns_entity_health matches 4 on passengers on passengers run data modify entity @s text set value '[{"text": "■■■■","color": "yellow"},{"text": "■■■■■■","color": "red"}]'
execute if score @s hns_entity_health matches 3 on passengers on passengers run data modify entity @s text set value '[{"text": "■■■","color": "yellow"},{"text": "■■■■■■■","color": "red"}]'
execute if score @s hns_entity_health matches 2 on passengers on passengers run data modify entity @s text set value '[{"text": "■■","color": "yellow"},{"text": "■■■■■■■■","color": "red"}]'
execute if score @s hns_entity_health matches 1 on passengers on passengers run data modify entity @s text set value '[{"text": "■","color": "yellow"},{"text": "■■■■■■■■■","color": "red"}]'

execute if score @s hns_entity_health matches 1.. run return 1

playsound block.grass.break block @a ~ ~ ~ 1 0.8
particle poof ~ ~0.5 ~ 0.2 0.2 0.2 0 10
execute on passengers on passengers run data modify entity @s text set value '""'
execute on passengers run data remove entity @s item
tag @s add trash_dead

execute if entity @s[tag=hns_trash_tmp] run function hns:atk/trash_hit_kill