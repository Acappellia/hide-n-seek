execute store result storage hns:tmp xp_info.xp int 4 run scoreboard players get @s hns_xp
execute store result storage hns:tmp xp_info.level int 1 run scoreboard players get @s hns_level

function hns:player/update_xp_setxp with storage hns:tmp xp_info