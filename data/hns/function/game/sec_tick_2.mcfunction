execute store result bossbar game_cd value run scoreboard players remove #game_time_s2 hns 1

scoreboard players operation #time_min hns = #game_time_s2 hns
scoreboard players operation #time_sec hns = #game_time_s2 hns
scoreboard players operation #time_min hns /= #60 hns
scoreboard players operation #time_sec hns %= #60 hns

function hns:sweeper_skill/disinfect/tick

execute store result storage hns:tmp time_info.min int 1 run scoreboard players get #time_min hns
execute store result storage hns:tmp time_info.sec int 1 run scoreboard players get #time_sec hns

function hns:game/update_time with storage hns:tmp time_info

execute if score #game_time_s2 hns matches ..0 run function hns:game/win_bug