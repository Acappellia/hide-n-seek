execute as @e[type=interaction,tag=hns_food,scores={hns_entity_health=1..}] at @s run function hns:food/eaten

schedule function hns:slowtick 12t replace