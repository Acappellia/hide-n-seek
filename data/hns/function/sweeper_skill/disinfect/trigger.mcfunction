advancement revoke @s only hns:using_disinfect

scoreboard players reset #disinfect_type hns
execute if predicate hns:room_kitchen run scoreboard players set #disinfect_type hns 1
execute if predicate hns:room_lobby run scoreboard players set #disinfect_type hns 2
execute if predicate hns:room_storage run scoreboard players set #disinfect_type hns 3
execute if predicate hns:room_restroom run scoreboard players set #disinfect_type hns 4

execute unless score #disinfect_type hns matches 1..4 run return -1

clear @a[team=sweeper] enchanted_golden_apple

title @a times 5 20 5

worldborder warning distance 10000
execute as @a at @s run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1 0.5
execute if score #disinfect_cd hns matches 1 run title @a[team=bug,predicate=hns:room_kitchen] subtitle [{"text": "请立刻离开本区域","color": "red"}]
execute if score #disinfect_cd hns matches 1 run title @a title [{"text": "厨房","color": "gold"},{"text": " 即将进行高温消杀","color": "white"}]
execute if score #disinfect_cd hns matches 2 run title @a[team=bug,predicate=hns:room_lobby] subtitle [{"text": "请立刻离开本区域","color": "red"}]
execute if score #disinfect_cd hns matches 2 run title @a title [{"text": "餐厅大厅","color": "gold"},{"text": " 即将进行高温消杀","color": "white"}]
execute if score #disinfect_cd hns matches 3 run title @a[team=bug,predicate=hns:room_storage] subtitle [{"text": "请立刻离开本区域","color": "red"}]
execute if score #disinfect_cd hns matches 3 run title @a title [{"text": "仓库","color": "gold"},{"text": " 即将进行高温消杀","color": "white"}]
execute if score #disinfect_cd hns matches 4 run title @a[team=bug,predicate=hns:room_restroom] subtitle [{"text": "请立刻离开本区域","color": "red"}]
execute if score #disinfect_cd hns matches 4 run title @a title [{"text": "准备区","color": "gold"},{"text": " 即将进行高温消杀","color": "white"}]

schedule function hns:sweeper_skill/disinfect/ready_1 40t replace
scoreboard players set #disinfect_cd hns -300