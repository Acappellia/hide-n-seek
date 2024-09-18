execute if score @s hns_bug_revive_cd matches -600 run title @s actionbar "等待复活中…… 剩余 30s"
execute if score @s hns_bug_revive_cd matches -580 run title @s actionbar "等待复活中…… 剩余 29s"
execute if score @s hns_bug_revive_cd matches -560 run title @s actionbar "等待复活中…… 剩余 28s"
execute if score @s hns_bug_revive_cd matches -540 run title @s actionbar "等待复活中…… 剩余 27s"
execute if score @s hns_bug_revive_cd matches -520 run title @s actionbar "等待复活中…… 剩余 26s"
execute if score @s hns_bug_revive_cd matches -500 run title @s actionbar "等待复活中…… 剩余 25s"
execute if score @s hns_bug_revive_cd matches -480 run title @s actionbar "等待复活中…… 剩余 24s"
execute if score @s hns_bug_revive_cd matches -460 run title @s actionbar "等待复活中…… 剩余 23s"
execute if score @s hns_bug_revive_cd matches -440 run title @s actionbar "等待复活中…… 剩余 22s"
execute if score @s hns_bug_revive_cd matches -420 run title @s actionbar "等待复活中…… 剩余 21s"
execute if score @s hns_bug_revive_cd matches -400 run title @s actionbar "等待复活中…… 剩余 20s"
execute if score @s hns_bug_revive_cd matches -380 run title @s actionbar "等待复活中…… 剩余 19s"
execute if score @s hns_bug_revive_cd matches -360 run title @s actionbar "等待复活中…… 剩余 18s"
execute if score @s hns_bug_revive_cd matches -340 run title @s actionbar "等待复活中…… 剩余 17s"
execute if score @s hns_bug_revive_cd matches -320 run title @s actionbar "等待复活中…… 剩余 16s"
execute if score @s hns_bug_revive_cd matches -300 run title @s actionbar "等待复活中…… 剩余 15s"
execute if score @s hns_bug_revive_cd matches -280 run title @s actionbar "等待复活中…… 剩余 14s"
execute if score @s hns_bug_revive_cd matches -260 run title @s actionbar "等待复活中…… 剩余 13s"
execute if score @s hns_bug_revive_cd matches -240 run title @s actionbar "等待复活中…… 剩余 12s"
execute if score @s hns_bug_revive_cd matches -220 run title @s actionbar "等待复活中…… 剩余 11s"
execute if score @s hns_bug_revive_cd matches -200 run title @s actionbar "等待复活中…… 剩余 10s"
execute if score @s hns_bug_revive_cd matches -180 run title @s actionbar "等待复活中…… 剩余 9s"
execute if score @s hns_bug_revive_cd matches -160 run title @s actionbar "等待复活中…… 剩余 8s"
execute if score @s hns_bug_revive_cd matches -140 run title @s actionbar "等待复活中…… 剩余 7s"
execute if score @s hns_bug_revive_cd matches -120 run title @s actionbar "等待复活中…… 剩余 6s"
execute if score @s hns_bug_revive_cd matches -100 run title @s actionbar "等待复活中…… 剩余 5s"
execute if score @s hns_bug_revive_cd matches -80 run title @s actionbar "等待复活中…… 剩余 4s"
execute if score @s hns_bug_revive_cd matches -60 run title @s actionbar "等待复活中…… 剩余 3s"
execute if score @s hns_bug_revive_cd matches -40 run title @s actionbar "等待复活中…… 剩余 2s"
execute if score @s hns_bug_revive_cd matches -20 run title @s actionbar "等待复活中…… 剩余 1s"

execute unless score @s hns_bug_revive_cd matches 0 run return -1

execute unless entity @e[type=interaction,tag=hns_trash,tag=!trash_dead] run return run function hns:game/bug_revive_fail

tp @s @e[sort=random,limit=1,type=interaction,tag=hns_trash,tag=!trash_dead]
tag @s remove bug_dead
gamemode adventure
execute at @s run particle ash ~ ~0.5 ~ 0.3 0.3 0.3 0 20
title @s actionbar "已复活"
effect give @s resistance 3 9 true
