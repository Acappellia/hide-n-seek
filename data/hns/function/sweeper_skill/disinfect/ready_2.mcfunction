execute as @a at @s run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1 0.5
execute if score #disinfect_type hns matches 1 run title @a[team=bug,predicate=hns:room_kitchen] subtitle [{"text": "请立刻离开本区域","color": "red"}]
execute if score #disinfect_type hns matches 1 run title @a title [{"text": "厨房","color": "gold"},{"text": " 即将进行高温消杀","color": "white"}]
execute if score #disinfect_type hns matches 2 run title @a[team=bug,predicate=hns:room_lobby] subtitle [{"text": "请立刻离开本区域","color": "red"}]
execute if score #disinfect_type hns matches 2 run title @a title [{"text": "餐厅大厅","color": "gold"},{"text": " 即将进行高温消杀","color": "white"}]
execute if score #disinfect_type hns matches 3 run title @a[team=bug,predicate=hns:room_storage] subtitle [{"text": "请立刻离开本区域","color": "red"}]
execute if score #disinfect_type hns matches 3 run title @a title [{"text": "仓库","color": "gold"},{"text": " 即将进行高温消杀","color": "white"}]
execute if score #disinfect_type hns matches 4 run title @a[team=bug,predicate=hns:room_restroom] subtitle [{"text": "请立刻离开本区域","color": "red"}]
execute if score #disinfect_type hns matches 4 run title @a title [{"text": "准备区","color": "gold"},{"text": " 即将进行高温消杀","color": "white"}]

schedule function hns:sweeper_skill/disinfect/ready_3 40t replace