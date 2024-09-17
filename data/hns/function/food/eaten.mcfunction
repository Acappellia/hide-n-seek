execute store result score #nearby_bugs hns if entity @a[team=bug,distance=..1,predicate=hns:is_sneaking]

execute unless score #nearby_bugs hns matches 1.. run return -1

execute on passengers run function hns:shake/1
playsound entity.generic.eat block @a ~ ~ ~ 1 1.3
scoreboard players operation @s hns_entity_health -= #nearby_bugs hns

execute if entity @s[tag=hns_food_potato] run function hns:food/eaten_potato
execute if entity @s[tag=hns_food_cake] run function hns:food/eaten_cake
execute if entity @s[tag=hns_food_rice] run function hns:food/eaten_rice

execute as @a[team=bug,distance=..1] run function hns:food/eating

execute if score @s hns_entity_health matches 1.. run return 1

playsound entity.player.burp block @a ~ ~ ~ 1 0.9
particle poof ~ ~0.5 ~ 0.2 0.2 0.2 0 10
execute on passengers on passengers run data modify entity @s text set value '""'
execute on passengers run data remove entity @s item