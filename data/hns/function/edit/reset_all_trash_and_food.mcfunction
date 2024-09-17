execute as @e[type=interaction,tag=hns_trash] on passengers on passengers run data modify entity @s text set value '[{"text": "■■■■■■■■■■","color": "yellow"},{"text": "","color": "red"}]'
execute as @e[type=interaction,tag=hns_trash] on passengers run data modify entity @s item set value {id:"firework_star",components:{custom_model_data:1}}
scoreboard players set @e[type=interaction,tag=hns_trash] hns_entity_health 10

execute as @e[type=interaction,tag=hns_food] on passengers on passengers run data modify entity @s text set value '[{"text": "■■■■■■■■■■","color": "green"},{"text": "","color": "red"}]'
execute as @e[type=interaction,tag=hns_food_potato] on passengers run data modify entity @s item set value {id:"firework_star",components:{custom_model_data:2}}
scoreboard players set @e[type=interaction,tag=hns_food_potato] hns_entity_health 10
execute as @e[type=interaction,tag=hns_food_cake] on passengers run data modify entity @s item set value {id:"firework_star",components:{custom_model_data:3}}
scoreboard players set @e[type=interaction,tag=hns_food_cake] hns_entity_health 50
execute as @e[type=interaction,tag=hns_food_rice] on passengers run data modify entity @s item set value {id:"firework_star",components:{custom_model_data:4}}
scoreboard players set @e[type=interaction,tag=hns_food_rice] hns_entity_health 100