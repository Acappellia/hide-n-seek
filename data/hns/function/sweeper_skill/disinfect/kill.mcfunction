worldborder warning distance 5

execute if score #disinfect_type hns matches 1 run kill @a[team=bug,predicate=hns:room_kitchen]
execute if score #disinfect_type hns matches 2 run kill @a[team=bug,predicate=hns:room_lobby]
execute if score #disinfect_type hns matches 3 run kill @a[team=bug,predicate=hns:room_storage]
execute if score #disinfect_type hns matches 4 run kill @a[team=bug,predicate=hns:room_restroom]

tellraw @a [{"text": "> ","color": "gray"},{"text": " 高温消杀已完成","color": "yellow"}]