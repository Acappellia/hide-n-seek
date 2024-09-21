execute as @a at @s run playsound block.fire.extinguish block @s ~ ~ ~ 1 0.5

execute if score #disinfect_type hns matches 1 at @a[team=bug,predicate=hns:room_kitchen] run particle cloud ~ ~ ~ 3 0 3 0 30
execute if score #disinfect_type hns matches 2 at @a[team=bug,predicate=hns:room_lobby] run particle cloud ~ ~ ~ 3 0 3 0 30
execute if score #disinfect_type hns matches 3 at @a[team=bug,predicate=hns:room_storage] run particle cloud ~ ~ ~ 3 0 3 0 30
execute if score #disinfect_type hns matches 4 at @a[team=bug,predicate=hns:room_restroom] run particle cloud ~ ~ ~ 3 0 3 0 30

schedule function hns:sweeper_skill/disinfect/kill 15t replace