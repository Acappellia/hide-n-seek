team join spec @a[team=]
gamemode spectator @a[tag=bug_dead]
bossbar set hiding_cd players @a

execute as @a[team=bug,scores={hns_bug_death=1}] run function hns:game/bug_death
execute as @a[team=bug,tag=bug_dead,scores={hns_bug_revive_cd=..0}] run function hns:game/bug_revive

execute store result bossbar hiding_cd value run scoreboard players remove #game_time_s1 hns 1
execute if score #game_time_s1 hns matches ..0 run function hns:game/stage_2