scoreboard players set #game_status hns 0

bossbar set hiding_cd visible false
bossbar set game_cd visible false

effect clear @a
effect give @a resistance 10 9 true
tag @a remove bug_dead
clear @a
execute as @a[team=bug] run function hns:player/reset_xp

function hns:edit/reset_all_trash_and_food

tellraw @a [{"text":"> 游戏已重置"}]

#tp