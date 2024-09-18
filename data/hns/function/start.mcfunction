tag @a remove bug_dead

scoreboard players set #game_status hns 1
scoreboard players add #game_round hns 1
scoreboard players add @s hns_round 1

execute as @a[team=bug] run function hns:player/init_item_bug
execute as @a[team=sweeper] run function hns:player/init_item_sweeper
execute as @a[team=bug] run function hns:player/reset_xp

effect give @a instant_health 1 9 true
effect give @a[team=sweeper] resistance infinite 9 true

bossbar set game_cd visible false
bossbar set hiding_cd players @a
bossbar set hiding_cd value 600
bossbar set hiding_cd visible true
scoreboard players set #game_time_s1 hns 600

function hns:edit/reset_all_trash_and_food

title @a title [{"text":"躲藏阶段","color": "gray"},{"text":" 开始！","color": "white"}]
execute as @a at @s run playsound item.goat_horn.sound.2 player @s ~ ~ ~ 1 1

#tp