execute as @e[type=interaction,tag=hns_trash_tmp] run function hns:atk/trash_hit_kill

execute as @e[type=interaction,tag=hns_trash] on passengers on passengers run data modify entity @s text set value '[{"text": "∎∎∎∎∎∎∎∎∎∎","color": "yellow"},{"text": "","color": "red"}]'
execute as @e[type=interaction,tag=hns_trash] on passengers run data modify entity @s item set value {id:"firework_star",components:{custom_model_data:1}}
scoreboard players set @e[type=interaction,tag=hns_trash] hns_entity_health 10
tag @e[type=interaction,tag=hns_trash] remove trash_dead

execute as @e[type=interaction,tag=hns_food] on passengers on passengers run data modify entity @s text set value '[{"text": "∎∎∎∎∎∎∎∎∎∎","color": "green"},{"text": "","color": "red"}]'
execute as @e[type=interaction,tag=hns_food] on passengers run data modify entity @s item set value {id:"firework_star",components:{custom_model_data:2}}
execute as @e[type=interaction,tag=hns_food] on passengers store result entity @s item.components."minecraft:custom_model_data" int 1 on vehicle run scoreboard players get @s hns_food_type

scoreboard players set @e[type=interaction,tag=hns_food_basket] hns_entity_health 100
scoreboard players set @e[type=interaction,tag=hns_food_dish] hns_entity_health 50
tag @e[type=interaction,tag=hns_food] remove food_dead