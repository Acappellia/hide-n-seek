execute as @a at @s run playsound block.fire.extinguish block @s ~ ~ ~ 1 0.5

#todo particle pos
execute if score #disinfect_type hns matches 1 run particle cloud 0 0 0 10 10 10 0 1000
execute if score #disinfect_type hns matches 2 run particle cloud 0 0 0 10 10 10 0 1000
execute if score #disinfect_type hns matches 3 run particle cloud 0 0 0 10 10 10 0 1000
execute if score #disinfect_type hns matches 4 run particle cloud 0 0 0 10 10 10 0 1000

schedule function hns:sweeper_skill/disinfect/kill 15t replace