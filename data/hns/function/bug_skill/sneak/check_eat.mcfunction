execute if entity @e[distance=..1,type=interaction,tag=hns_food,tag=!food_dead] run function hns:bug_skill/sneak/eat

execute anchored feet if block ~ ~ ~ #hns:air_blocks if block ^ ^ ^0.2 #hns:climbable run return run effect give @s levitation 1 0 true
execute anchored eyes if block ~ ~ ~ #hns:air_blocks if block ^ ^ ^0.2 #hns:climbable run return run effect give @s levitation 1 0 true
effect clear @s levitation