team join spec @a[team=]
gamemode spectator @a[tag=bug_dead]
bossbar set game_cd players @a

execute as @a[team=bug,scores={hns_bug_death=1}] run function hns:game/bug_death
execute as @a[team=bug,tag=bug_dead,scores={hns_bug_revive_cd=..0}] run function hns:game/bug_revive

#execute as @a[team=bug] run function hns:bug_skill/firework/check_cd
execute as @a[team=sweeper] run function hns:sweeper_skill/pesticide

execute unless entity @a[team=bug,tag=!bug_dead] unless entity @e[type=interaction,tag=hns_trash,tag=!trash_dead] run function hns:game/win_sweeper
execute unless entity @e[type=interaction,tag=hns_food,tag=!food_dead] run function hns:game/win_bug