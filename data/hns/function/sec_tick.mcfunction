execute if score #game_status hns matches 2 run function hns:game/sec_tick_2
execute as @a[team=bug] at @s run function hns:bug_skill/sec_tick

execute as @e[type=interaction,tag=hns_trash] at @s run particle ash ~ ~0.5 ~ 0.5 0.5 0.5 0 10

schedule function hns:sec_tick 20t replace