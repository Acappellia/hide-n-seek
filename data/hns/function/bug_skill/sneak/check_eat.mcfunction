execute if entity @e[distance=..1,type=interaction,tag=hns_food] run function hns:bug_skill/sneak/eat

execute anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #hns:air_blocks positioned ^ ^ ^0.1 if block ~ ~ ~ #hns:climbable run return run effect give @s levitation 1 0 true
effect clear @s levitation