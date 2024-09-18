scoreboard players set #game_status hns 2

bossbar set hiding_cd visible false
bossbar set game_cd players @a
bossbar set game_cd value 600
bossbar set game_cd visible true
scoreboard players set #game_time_s2 hns 600

title @a title [{"text":"清扫阶段","color": "yellow"},{"text":" 开始！","color": "white"}]
execute as @a at @s run playsound item.goat_horn.sound.0 player @s ~ ~ ~ 1 1

#tp