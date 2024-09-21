worldborder warning distance 5

execute if score #disinfect_type hns matches 1 run kill @a[team=bug,predicate=hns:room_kitchen,gamemode=adventure]
execute if score #disinfect_type hns matches 2 run kill @a[team=bug,predicate=hns:room_lobby,gamemode=adventure]
execute if score #disinfect_type hns matches 3 run kill @a[team=bug,predicate=hns:room_storage,gamemode=adventure]
execute if score #disinfect_type hns matches 4 run kill @a[team=bug,predicate=hns:room_restroom,gamemode=adventure]

tellraw @a [{"text": "> ","color": "gray"},{"text": " 高温消杀已完成","color": "yellow"}]