execute if score #game_status hns matches 2 run function hns:game/sec_tick_2
execute as @a[team=bug] run function hns:bug_skill/sec_tick

schedule function hns:sec_tick 20t replace