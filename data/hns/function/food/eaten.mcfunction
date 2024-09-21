execute on passengers run function hns:shake/1

scoreboard players remove @s hns_entity_health 1

execute if entity @s[tag=hns_food_dish] run function hns:food/eaten_dish
execute if entity @s[tag=hns_food_basket] run function hns:food/eaten_basket

execute if score @s hns_entity_health matches 1.. run return 1

playsound entity.player.burp block @a ~ ~ ~ 1 0.9
particle poof ~ ~0.5 ~ 0.2 0.2 0.2 0 10
execute on passengers on passengers run data modify entity @s text set value '[{"text": "∎∎∎∎∎∎∎∎∎∎","color": "dark_red"}]'
execute if entity @s[tag=hns_food_basket] on passengers run data modify entity @s item.components."minecraft:custom_model_data" set value 32007
execute if entity @s[tag=hns_food_dish] on passengers run data modify entity @s item.components."minecraft:custom_model_data" set value 10121
tag @s add food_dead