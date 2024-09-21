execute if entity @e[distance=..1,type=interaction,tag=hns_food,tag=!food_dead] run function hns:bug_skill/sneak/eat

execute anchored feet if block ~ ~ ~ #hns:air_blocks positioned ^ ^ ^0.1 if block ~ ~ ~ #hns:climbable run return run effect give @s levitation 1 0 true
effect clear @s levitation