scoreboard players reset @s hns_summon

execute if score @s hns_summon_cd matches ..-1 run return -1
scoreboard players set @s hns_summon_cd -20

execute unless score @s hns_level matches 1.. run return -1

execute unless data entity @s {OnGround:1b} run return -1

scoreboard players remove @s hns_level 1
xp add @s -1 levels

execute align xz positioned ~0.5 ~ ~0.5 run function hns:bug_skill/summon_trash/summon_trash_tmp